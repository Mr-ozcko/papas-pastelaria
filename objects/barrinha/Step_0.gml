if (!active) return;
var _speed = 8

if (forward) {
	x += _speed;
	if (x >= rightBound)
		forward = false;
} else {
	x -= _speed;
	if (x <= leftBound)
		forward = true;
}
