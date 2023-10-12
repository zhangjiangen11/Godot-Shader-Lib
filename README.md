# Godot-Shader-Lib
Visual shader node library for Godot engine.

Adds various extra nodes to use in built-in visual shader editor.
## Installation
Copy the contents of **_addons/ShaderLib_** into the same folder in your project. No activation needed. Custom visual shader nodes work the same way as standard visual shader nodes.
## Uninstallation
Delete the contents of **_addons/ShaderLib_** folder from your project. Make sure to delete it using the Godot editor instead of your default file system program.
## Nodes documentation
### UV nodes
___
#### Flipbook node
Creates a flipbook, or texture sheet animation, of the UVs supplied to input UV. The amount of tiles on the sheet are defined by the values of the inputs **_rows_** and **_columns_**.
This node can be used to create a texture animation functionality, commonly used for particle effects and sprites, by supplying Time to the input Tile and outputting to the UV input slot of a Texture Sampler.

**Inputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|UV|Input UV value|
|rows|int|none|Amount of horizontal tiles in texture sheet|
|columns|int|none|Amount of vertical tiles in texture sheet|
|start frame|int|none|Start tile index texture sheet|
|end frame|int|none|End tile index texture sheet|
|anim speed|float|none|Animation speed|

**Outputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|None|Output UV value|
___
#### Radial Shear node
Applies a radial shear warping effect similar to a wave to the value of input UV.

**Inputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|UV|Input UV value|
|center|vec2|none|Center reference point|
|strength|float|none|Strength of the effect|
|offset|vec2|none|Individual channel offsets|

**Outputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|None|Output UV value|
___
#### Rotate node
Rotates value of input UV around a reference point defined by input **_center_** by the amount of input **_rotation_**.

**Inputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|UV|Input UV value|
|center|vec2|none|Center reference point|
|rotation|float|none|Rotation amount in radians|
|use degrees|bool|none|Use degrees instead of radians for **_rotation_** amount|

**Outputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|None|Output UV value|
___
#### Spherize node
Applies a spherical warping effect similar to a fisheye camera lens to the value of input UV.

**Inputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|UV|Input UV value|
|center|vec2|none|Center reference point|
|strength|float|none|Strength of the effect|
|offset|vec2|none|Individual channel offsets|

**Outputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|None|Output UV value|
___
#### Tiling and Offset node
Tiles and offsets the value of input UV by the inputs **_tiling_** and **_offset_** respectively. This is commonly used for detail maps and scrolling textures over TIME.

**Inputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|UV|Input UV value|
|tiling|vec2|none|Amount of tiling to apply per channel|
|offset|vec2|none|Amount of offset to apply per channel|

**Outputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|None|Output UV value|
___
#### Twirl node
Applies a twirl warping effect similar to a black hole to the value of input UV.

**Inputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|UV|Input UV value|
|center|vec2|none|Center reference point|
|strength|float|none|Strength of the effect|
|offset|vec2|none|Individual channel offsets|

**Outputs**
|Name|Type|Binding|Description|
|---|---|---|---|
|uv|vec2|None|Output UV value|
___
