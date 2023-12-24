@tool
class_name VisualShaderNodeUVParallaxMapping extends VisualShaderNodeCustom

func _init() -> void:
	_set_input_port_default_value(1, 1.0)

func _get_name() -> String:
	return "ParallaxMapping"

func _get_category() -> String:
	return "UV"

func _get_description() -> String:
	return "The Parallax Mapping node lets you create a parallax effect that displaces a Material's UVs to create the illusion of depth inside a Material."

func _get_return_icon_type() -> VisualShaderNode.PortType:
	return PORT_TYPE_VECTOR_2D

func _get_input_port_count() -> int:
	return 2

func _get_input_port_name(port: int) -> String:
	match port:
		0:
			return "heightMap"
		1:
			return "amplitude"
	return ""

func _get_input_port_type(port: int) -> VisualShaderNode.PortType:
	match port:
		0:
			return PORT_TYPE_SAMPLER
		_:
			return PORT_TYPE_SCALAR

func _get_output_port_count() -> int:
	return 1

func _get_output_port_name(port: int) -> String:
	return "uv"

func _get_output_port_type(port: int) -> VisualShaderNode.PortType:
	return PORT_TYPE_VECTOR_2D

func _get_global_code(mode: Shader.Mode) -> String:
	var code: String = preload("ParallaxMappingUV.gdshaderinc").code
	return code

func _get_code(input_vars: Array[String], output_vars: Array[String], mode: Shader.Mode, type: VisualShader.Type) -> String:
	var height_map: String = input_vars[0]
	var amplitude: String = input_vars[1]
	if !height_map:
		return output_vars[0] + " = UV;"
	return output_vars[0] + " = parallax_mapping_uv(%s, -%s, UV, TANGENT, NORMAL, BINORMAL, VIEW);" % [height_map, amplitude];
