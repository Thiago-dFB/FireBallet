//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float healthTan;
uniform vec3 healthColor;

void main()
{
    vec2 pos = v_vTexcoord.yx;
	vec3 color = vec3(0.0, 0.0, 0.0);
	vec2 center = vec2(0.54, 0.575);
	vec2 delta = pos - center;
	float angle = atan(delta.y, delta.x);
	if (angle < healthTan){
		color = healthColor;
	}
	gl_FragColor = vec4(color, texture2D(gm_BaseTexture, v_vTexcoord).a);
	//gl_FragColor = vec4(angle, angle, angle, 1.0);
}
