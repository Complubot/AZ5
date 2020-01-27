
addpath('/home/complubot/Documents/POLLOTRON/CODE/ros/matlab')  
URI = "http://172.19.0.1:11311";
IP_LOCAL_MACHINE = "172.19.0.1";
rosinit(URI,"NodeHost",IP_LOCAL_MACHINE);
d = rosdevice('172.19.0.1','complubot','C0mplubot');

maxLidarRange = 12;
mapResolution = 20;
slamAlg = robotics.LidarSLAM(mapResolution, maxLidarRange);
slamAlg.LoopClosureThreshold = 200;
slamAlg.LoopClosureSearchRadius = 8;

sub_laser = rossubscriber('/laser_filtered', 'sensor_msgs/LaserScan');
r = robotics.Rate(20);

while (isCoreRunning(d))
    msg_laser = sub_laser.LatestMessage();
    if size(msg_laser,1) > 0
        scan = lidarScan(msg_laser);    
        [isScanAccepted, loopClosureInfo, optimizationInfo] = addScan(slamAlg, scan);
    end
    waitfor(r);
end
rosshutdown()

show(slamAlg, 'Poses', 'off'); 
hold on;
show(slamAlg.PoseGraph); 
hold off;
title({'Final Built Map of the Environment', 'Trajectory of the Robot'});

[scans, optimizedPoses]  = scansAndPoses(slamAlg);
map = buildMap(scans, optimizedPoses, mapResolution, maxLidarRange);

figure; show(map);
hold on;
show(slamAlg.PoseGraph, 'IDs', 'off');
title('Occupancy Grid Map Built Using Lidar SLAM');
hold off;

save slam_map.mat map

