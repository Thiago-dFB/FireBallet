//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float hit;

void main()
{
    vec4 origin = texture2D( gm_BaseTexture, v_vTexcoord );
	vec3 color = (origin.rgb*(1.0-hit)) + (vec3(1.0,1.0,1.0) * hit);
	
	gl_FragColor = vec4(color, origin.a);
}
