# Rounded Polygon node
Generates a rounded polygon shape based on input UV at the size specified by inputs <b><i>width</i></b> and <b><i>height</i></b>. The polygon's amount of sides is determined by input <b><i>sides</i></b>. The radius of each corner is defined by input <b><i>roundnesss</i></b>. The generated shape can be offset or tiled by connecting a <b><i>[TilingAndOffset](/documentation/Nodes/UV/TilingAndOffset.md)</i></b> node. Note that in order to preserve the ability to offset the shape within the UV space the shape will not automatically repeat if tiled. To achieve a repeating rounded polygon effect first connect your <b><i>TilingAndOffset</i></b> output through a <b><i>Fract</i></b> node.
<hr>

**Inputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|UV|Input UV value|
|width|float|none|Rounded polygon width|
|height|float|none|Rounded polygon height|
|sides|int|none|Number of sides of the polygon|
|roundness|float|none|Corner radius|
  
**Outputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|output|float|None|Output rounded polygon value|

**ShaderInc location**
<br>`res://addons/ShaderLib/Procedural/Procedural.gdshaderinc`

**Method signature**
<br>`float rounded_polygon_shape(vec2 uv, float width, float height, float sides, float roundness)`

**Parameters**
|Name|Type|Description|
|---|---|---|
|uv|vec2|Input UV value|
|width|float|Polygon width|
|height|float|Polygon height|
|sides|float|Number of sides of the polygon|
|roundness|float|Corner radius|
___