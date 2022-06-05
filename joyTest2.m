
controllerLibrary = NET.addAssembly([ 'Y:\TSI\3K2\Kinematics\Matlab\Scripts\XboxController\SharpDX.XInput.dll']);
myController = SharpDX.XInput.Controller(SharpDX.XInput.UserIndex.One);


VibrationLevel = SharpDX.XInput.Vibration;

Left = zeros(100,1);
Right = zeros(100,1);
Time = zeros(100,1);



for i = 1:10000
    State = myController.GetState();
    disp(floor(State.Gamepad.LeftThumbX/3276))
    
    pause(.001);
    
    
    
end    

VibrationLevel.LeftMotorSpeed = 0;
VibrationLevel.RightMotorSpeed = 0;
myController.SetVibration(VibrationLevel); % If your controller supports vibration






