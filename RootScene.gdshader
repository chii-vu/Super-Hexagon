shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	float r = sin(TIME) * 0.5 + 0.5;
	float b = sin(TIME + 1.57) * 0.5 + 0.5;
	float g = sin(TIME + 3.14) * 0.5 + 0.5;
	COLOR = vec4(r, b, g, 1.0);
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
