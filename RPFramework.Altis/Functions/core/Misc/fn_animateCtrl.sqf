/*
Author: Kerkkoh
First Edit: 18.7.2017
Description:
Idk if this is actually useful for anything else than learning purposes since it's probably just faster to write these out yourself.

Animate controls. You can move, resize and fade in/out different controls within different displays. Use findDisplay _dispIdd to find a display to pass.
You can animate almost anything with enough creativity and controls. For example, you could technically animate a change in background color by fading different colored controls in and out with the same size and text. For immediate effect use _time 0. For not moving a ctrl at all use ctrlPosition of the control as _pos.

1 - Display in which the control is
2 - The idc of the ctrl
3 - Position to which the ctrl will be moved / resized [x, y, w, h] (x-axis, y-axis, width, height)
4 - Fade (0 is fully visible and 1 is transparent, anything from between is visible)
5 - How long the animation should take
*/

params ["_displ", "_ctrlIdc", "_pos", "_fade", "_time"];

// get the control we want to animate
private _ctrl = _displ displayCtrl _ctrlIdc;

// If the position isn't the current position then we need to change it
if (!(_pos isEqualTo (ctrlPosition _ctrl))) then {
	_ctrl ctrlSetPosition _pos;
};
// If the _fade is set to -1 then we can ignore it since we probably just changed position
if (!(_fade isEqualTo -1)) then {
	_ctrl ctrlSetFade _fade;
};

// Commit the changes and they will happen within this time.
_ctrl ctrlCommit _time;

_time
