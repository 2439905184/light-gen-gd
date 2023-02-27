shader_type canvas_item;
uniform float pa; // 放大倍数
uniform float pw; // 频率
uniform float phaser; // 相位

uniform float pr; // 红色倍数
uniform float pg; // 绿色倍数
uniform float pb; // 蓝色倍数

uniform bool use_lfo = true; // 是否启用LFO
void vertex()
{
	
}

void fragment()
{
	if(use_lfo == false)
	{
		COLOR.r = pr; 
		COLOR.g = pg;
		COLOR.b = pb;
	}
	//a*sin(w*TIME+phaser);
	else if(use_lfo == true)
	{
		COLOR.r = pr+cos(pw*TIME+phaser);
		COLOR.g = pg+cos(pw*TIME+phaser);
		COLOR.b = pb+cos(pw*TIME+phaser);
	}
}

void light()
{
	
}