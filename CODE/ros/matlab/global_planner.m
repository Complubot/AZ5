
addpath('/home/complubot/Documents/POLLOTRON/CODE/ros/matlab')
URI = "http://192.168.1.63:11311";
IP_LOCAL_MACHINE = "192.168.1.63";
rosinit(URI,"NodeHost",IP_LOCAL_MACHINE);
d = rosdevice('192.168.1.63','complubot','C0mplubot');

sub_pose = rossubscriber('/pose_stamped', 'geometry_msgs/PoseStamped');
sub_goal = rossubscriber('/move_base_simple/goal', 'geometry_msgs/PoseStamped');
pub_vel = rospublisher('/target_vel', 'geometry_msgs/Twist');
r = robotics.Rate(20);

load slam_map1.mat;
cpMap= copy(map);
inflate(cpMap,0.005);

planner = robotics.PRM(cpMap, 1000);
planner.ConnectionDistance = 1.1;


controller = robotics.PurePursuit;
controller.LookaheadDistance = 3.5;
controller.MaxAngularVelocity = 0.6;
controller.DesiredLinearVelocity = 0.9;
min_distance=0.3;
while(isCoreRunning(d))
    disp(' -- WAITING FOR GOAL --')
    msg_goal = receive(sub_goal);
    disp(' -- WAITING FOR LOCATION --')
    msg_pose = receive(sub_pose);
    disp(' -- READY --')
    pose = [msg_pose.Pose.Position.X msg_pose.Pose.Position.Y];
    goal = [msg_goal.Pose.Position.X msg_goal.Pose.Position.Y];
    path = findpath(planner, pose, goal);
    controller.Waypoints = path;

    goal_reached = false;
    while(~goal_reached)
        msg_pose = sub_pose.LatestMessage();
        poseQuat = [msg_pose.Pose.Orientation.W, msg_pose.Pose.Orientation.X, msg_pose.Pose.Orientation.Y, msg_pose.Pose.Orientation.Z];
        poseRotation = quat2eul(poseQuat);
        current_pose = [msg_pose.Pose.Position.X msg_pose.Pose.Position.Y poseRotation(1)];
        [vel, ang_vel] = controller(current_pose);

        output_vel=rosmessage(pub_vel);
        output_vel.Linear.X = vel;
        output_vel.Linear.Y = 0;
        output_vel.Linear.Z = 0;
        output_vel.Angular.X = 0;
        output_vel.Angular.Y = 0;
        output_vel.Angular.Z = ang_vel;

        send(pub_vel, output_vel)

        distance_to_goal = ((goal(1) - current_pose(1))^2 + (goal(2) - current_pose(2))^2)^(1/2);
        disp(distance_to_goal)
        if distance_to_goal < min_distance
            goal_reached = true;
        end
        waitfor(r);
    end

    output_vel=rosmessage(pub_vel);
    output_vel.Linear.X = 0;
    output_vel.Linear.Y = 0;
    output_vel.Linear.Z = 0;
    output_vel.Angular.X = 0;
    output_vel.Angular.Y = 0;
    output_vel.Angular.Z = 0;
    send(pub_vel, output_vel)
end

rosshutdown()





