
addpath('/home/complubot/Documents/POLLOTRON/CODE/ros/matlab')  
URI = "http://192.168.1.63:11311";
IP_LOCAL_MACHINE = "192.168.1.63";
rosinit(URI,"NodeHost",IP_LOCAL_MACHINE);
d = rosdevice('172.19.0.1','complubot','C0mplubot');

VFH=robotics.VectorFieldHistogram;
VFH.RobotRadius= 0.25;
VFH.SafetyDistance= 0.1;
VFH.NumAngularSectors= 150;
VFH.MinTurningRadius= 0.3;
VFH.DistanceLimits = [0.3 1.5];     % Lecturas mínima y máxima del laser
VFH.HistogramThresholds = [7 13];   % Tamño de los círculos morados que indican ocupación
VFH.TargetDirectionWeight=5;
VFH.CurrentDirectionWeight=2;
VFH.PreviousDirectionWeight=2;
VFH.UseLidarScan=true;

sub_laser = rossubscriber('/laser_filtered', 'sensor_msgs/LaserScan');
sub_target_vel = rossubscriber('/target_vel', 'geometry_msgs/Twist');
pub_vel = rospublisher('/cmd_vel', 'geometry_msgs/Twist');
r = robotics.Rate(20);

while (isCoreRunning(d))
    msg_target_vel = sub_target_vel.LatestMessage();
    msg_laser = sub_laser.LatestMessage();
    output_vel=rosmessage(pub_vel);
    output_vel.Linear.X = 0;
    output_vel.Linear.Y = 0;
    output_vel.Linear.Z = 0;
    output_vel.Angular.X = 0;
    output_vel.Angular.Y = 0;
    output_vel.Angular.Z = 0;
    if size(msg_target_vel,1)> 0
        output_vel.Linear.X = msg_target_vel.Linear.X/2700;
        output_vel.Linear.Y = msg_target_vel.Linear.Y/2700;
        output_vel.Linear.Z = msg_target_vel.Linear.Z/2700;
        output_vel.Angular.X = msg_target_vel.Angular.X/2700;
        output_vel.Angular.Y = msg_target_vel.Angular.Y/2700;
        output_vel.Angular.Z = msg_target_vel.Angular.Z/2700;
        theta = VFH(lidarScan(msg_laser), msg_target_vel.Angular.Z*5)/2700;
        %disp(msg_target_vel.Angular.Z*5)
        if msg_target_vel.Linear.X > 0
            if isnan(theta)
                output_vel.Linear.X = 0;
                output_vel.Linear.Y = 0;
                output_vel.Linear.Z = 0;
                output_vel.Angular.X = 0;
                output_vel.Angular.Y = 0;
                output_vel.Angular.Z = 0;
            else
                output_vel.Angular.Z = theta;
            end
        end
        %VFH.show();
    end
    if output_vel.Angular.Z ~=0
        output_vel.Angular.Z = -output_vel.Angular.Z;
    end
    send(pub_vel, output_vel)
    waitfor(r);
end

rosshutdown()
