cbuffer CBufferScene : register(b0)
{
	float4x4 jitteredView;
	float4x4 jitteredProjection;
	float4x4 inverseView;
	float4x4 inverseProjection;
	float4x4 currentView;
	float4x4 currentProjection;
	float4x4 previousView;
	float4x4 previousProjection;
	float width;
	float height;
	unsigned int convolutionStages;
	unsigned int aoEnabled;
	float timestep;
};

cbuffer CBufferObject : register(b1)
{
	float4x4 currentWorld;
	float4x4 inverseWorld;
	float4x4 previousWorld;
	float4 colorize;
};

cbuffer CBufferSkin : register(b2)
{
	float2 previousAnimationBlend;
	float2 previousFrameBlend;
	
	float2 currentAnimationBlend;
	float2 currentFrameBlend;

	uint animationCount;
}