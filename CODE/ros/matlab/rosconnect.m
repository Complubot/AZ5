
function rosconnect ()
    URI = "http://172.19.0.1:11311";%SIMULADOR
    IP_LOCAL_MACHINE = "172.19.0.1";

    rosshutdown()
    rosinit(URI,"NodeHost",IP_LOCAL_MACHINE);
    pause(0.5)
    display("CONECTED TO ROS")
end
