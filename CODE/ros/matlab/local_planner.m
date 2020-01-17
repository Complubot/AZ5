
addpath('/home/complubot/Documents/POLLOTRON/CODE/ros/matlab')  
URI = "http://172.19.0.1:11311";
IP_LOCAL_MACHINE = "172.19.0.1";
rosinit(URI,"NodeHost",IP_LOCAL_MACHINE);
d = rosdevice('172.19.0.1','complubot','C0mplubot');

VFH=controllerVFH;
VFH.RobotRadius= 0.25;
VFH.SafetyDistance= 0.22;
VFH.NumAngularSectors= 332;
VFH.MinTurningRadius= 0.15;
VFH.DistanceLimits = [0.15 5];     % Lecturas mínima y máxima del laser
VFH.HistogramThresholds = [0.6 3];   % Tamño de los círculos morados que indican ocupación
VFH.TargetDirectionWeight=2;
VFH.CurrentDirectionWeight=1;
VFH.PreviousDirectionWeight=1;
VFH.UseLidarScan=true;

sub_laser = rossubscriber('/laser_filtered', 'sensor_msgs/LaserScan');
sub_target_vel = rossubscriber('/target_vel', 'geometry_msgs/Twist');
pub_vel = rospublisher('/cmd_vel', 'geometry_msgs/Twist');
r = robotics.Rate(20);

while (isCoreRunning(d))
    msg_target_vel = receive(sub_target_vel);
    msg_laser = sub_laser.LatestMessage();
    
    for i = 1:size(msg_laser.Ranges,1)
        if isnan(msg_laser.Ranges(i))
            msg_laser.Ranges(i) = msg_laser.RangeMax;
        end
    end
    scan = lidarScan(msg_laser);
    theta = VFH(scan ,msg_target_vel.Angular.Z*0.5);
    disp(theta)
    VFH.show();

    msg_target_vel.Angular.Z = theta;  
    send(pub_vel, msg_target_vel)
    waitfor(r);
end

rosshutdown()
