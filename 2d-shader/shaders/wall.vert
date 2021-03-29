
// Request GLSL 3.3
#version 330

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec3 inNormal;
layout(location = 2) in vec2 inTexCoord;

out vec2 passTextureCoord;

void main()
{
	// Convert position to homogeneous coordinates
	gl_Position = vec4(inPosition, 1.0);
	// Pass along the texture coordinate to frag shader
	passTextureCoord = inTexCoord;
}
