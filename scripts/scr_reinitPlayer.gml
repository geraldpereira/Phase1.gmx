// reinitialize the motor speed of the wings 
physics_joint_set_value(leftWingJoint, phy_joint_motor_speed, leftWingMotorSpeed);
physics_joint_set_value(rightWingJoint, phy_joint_motor_speed, rightWingMotorSpeed);
leftWingInstance.boost.visible = false;
rightWingInstance.boost.visible = false;
