GDPC                                                                            ,   @   res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex         l       �V	~k�o�)�D	ʇ~@   res://.import/circle.png-df010cbefcc6dbdc6528d2564633ee87.stex        J       �
��I)Q7�=�D   res://.import/placeholder.png-7627034f1270dc506da91a2e2c9ef774.stex 0     |       O��5�b >��C7:@   res://.import/player.png-e0de26b393baa489289b0e229c9561a8.stex  �     �       P����F�vRm���@   res://.import/slash.png-1fb5aa565c27409338cbbf666f9e4cb5.stex   �     �       n���\���U�У%D   res://.import/tileset_1.png-03765ac9f4737b122200b81207f1457f.stex          �      ��[��P�����z��A   res://Enemy.gd.remap�S             � G>��A_WWng4��   res://Enemy.gdc        -      O���rHnjҰS���   res://Enemy.tscn0            �RL>��*�f��U��s�   res://FloorTileSet.tres P      W6      ��x�J4�L)W�«�   res://Fonts/Pixel Intv.otf  �F      �M      �7�2�S�ю���/�   res://Fonts/regular.tresp�      �       ���|3�uB��C0($   res://Global.gd.remap   �S     !       z�<��z]
����*Xn   res://Global.gdc0�      �      D�jOH7x�m��	���   res://Global.tscn   ��      �       ?�%鞛#��"=�   res://Levels/Level.gd.remap �S     '       �/N��<;�O�P���   res://Levels/Level.gdc  `�      �      xEebaL����)�����   res://Levels/TestLevel.tscn �      m@      ����*��Vd;\@l;    res://Packages/LargePackage.tscn`�      {      ��Nk�S�'8�ޞ$   res://Packages/NormalPackage.tscn   ��      �      
���'����!�A    res://Packages/Package.gd.remap  T     +       Y(	9{��!G�wJ�	�   res://Packages/Package.gdc  ��      "      �&{����k���#��r$   res://Parts/ConveyorBelt.gd.remap   PT     -       ]��5�*zw y��N�6   res://Parts/ConveyorBelt.gdc��            �5͒��V�U'0HIMo    res://Parts/ConveyorBelt.tscn   ��      B      Tk�i=��)��gkr$   res://Parts/PackageOutput.gd.remap  �T     .       `��5zW�<��.w���    res://Parts/PackageOutput.gdc   @�      l       :��8'�5l3��R    res://Parts/PackageOutput.tscn  ��      �      ���=(�Ҳ�馧   res://Player/Player.gd.remap�T     (       HŊ�C�@p;P*/��   res://Player/Player.gdc ��      �      ^y�S�=h���e�I�D   res://Player/Player.tscn�     �       �`̚~�Q)��\IP    res://Player/player.png.import  @     �      N�FN'!�:-%���    res://Sprites/arrow.png.import  p     �      ���b�����Rb;,    res://Sprites/circle.png.import p     �      ���8�B��ޗ=)��w$   res://Sprites/placeholder.png.import�     �      �q,G�i'���T��    res://Sprites/slash.png.import  p     �      kIU<�05�|b�6j��$   res://Sprites/tileset_1.png.import  �&     �      ����T2�"�ؠ��Z�u   res://UI/HUD.gd.remap   �T     !       f� ��{kiF?���rW/   res://UI/HUD.gdc�)     �      � ��E��>�y�o���   res://UI/HUD.tscn   0+     ^      �@�h��ϔ-�|��   res://WallTileSet.tres  �.     Y$      �OJ1=�d����`��   res://icon.png  U     �      G1?��z�c��vN��   res://project.binary b           �iZDAWr��v�c�4   res://ui_theme.tres �R     �       ���)7�um��nu�oGDSC            Y      ������������τ�   �������϶���   ��������������Ķ   �������Ŷ���   ����׶��   �����ڶ�   �����Ķ�   �������ض���   ���������Ҷ�   ���������������Ŷ���   �������������Ӷ�                  �?      @                   
                              0   	   :   
   ;      H      I      P      W      3YY;�  �  PQYY;�  V�  YY0�  P�  QV�  �  P�  T�  T�  �  QT�  PQ�  �  �  �  �  �  �  �  �  �  �  �  �  P�  R�  R�  �  QYY0�	  P�  QV�  �  �
  P�  QY`   [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/placeholder.png" type="Texture" id=1]
[ext_resource path="res://Enemy.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]

[node name="Enemy" type="KinematicBody2D" groups=["enemy"]]
modulate = Color( 1, 0, 0, 1 )
collision_layer = 8
collision_mask = 11
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
             [gd_resource type="TileSet" load_steps=19 format=2]

[ext_resource path="res://Sprites/tileset_1.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=8]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=9]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=10]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=11]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=12]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=13]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=14]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=15]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=16]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=17]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[resource]
5/name = "tileset_1.png 5"
5/texture = ExtResource( 1 )
5/tex_offset = Vector2( 0, 0 )
5/modulate = Color( 1, 1, 1, 1 )
5/region = Rect2( 32, 16, 8, 8 )
5/tile_mode = 0
5/occluder_offset = Vector2( 0, 0 )
5/navigation_offset = Vector2( 0, 0 )
5/shape_offset = Vector2( 0, 0 )
5/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
5/shape = SubResource( 2 )
5/shape_one_way = false
5/shape_one_way_margin = 1.0
5/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
5/z_index = 0
6/name = "tileset_1.png 6"
6/texture = ExtResource( 1 )
6/tex_offset = Vector2( 0, 0 )
6/modulate = Color( 1, 1, 1, 1 )
6/region = Rect2( 40, 16, 8, 8 )
6/tile_mode = 0
6/occluder_offset = Vector2( 0, 0 )
6/navigation_offset = Vector2( 0, 0 )
6/shape_offset = Vector2( 0, 0 )
6/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
6/shape = SubResource( 3 )
6/shape_one_way = false
6/shape_one_way_margin = 1.0
6/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
6/z_index = 0
7/name = "tileset_1.png 7"
7/texture = ExtResource( 1 )
7/tex_offset = Vector2( 0, 0 )
7/modulate = Color( 1, 1, 1, 1 )
7/region = Rect2( 0, 16, 8, 8 )
7/tile_mode = 0
7/occluder_offset = Vector2( 0, 0 )
7/navigation_offset = Vector2( 0, 0 )
7/shape_offset = Vector2( 0, 0 )
7/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
7/shape = SubResource( 4 )
7/shape_one_way = false
7/shape_one_way_margin = 1.0
7/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
7/z_index = 0
12/name = "tileset_1.png 12"
12/texture = ExtResource( 1 )
12/tex_offset = Vector2( 0, 0 )
12/modulate = Color( 1, 1, 1, 1 )
12/region = Rect2( 56, 0, 8, 8 )
12/tile_mode = 0
12/occluder_offset = Vector2( 0, 0 )
12/navigation_offset = Vector2( 0, 0 )
12/shape_offset = Vector2( 0, 0 )
12/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
12/shape_one_way = false
12/shape_one_way_margin = 0.0
12/shapes = [  ]
12/z_index = 0
13/name = "tileset_1.png 13"
13/texture = ExtResource( 1 )
13/tex_offset = Vector2( 0, 0 )
13/modulate = Color( 1, 1, 1, 1 )
13/region = Rect2( 48, 32, 8, 8 )
13/tile_mode = 0
13/occluder_offset = Vector2( 0, 0 )
13/navigation_offset = Vector2( 0, 0 )
13/shape_offset = Vector2( 0, 0 )
13/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
13/shape_one_way = false
13/shape_one_way_margin = 0.0
13/shapes = [  ]
13/z_index = 0
14/name = "tileset_1.png 14"
14/texture = ExtResource( 1 )
14/tex_offset = Vector2( 0, 0 )
14/modulate = Color( 1, 1, 1, 1 )
14/region = Rect2( 48, 88, 8, 8 )
14/tile_mode = 0
14/occluder_offset = Vector2( 0, 0 )
14/navigation_offset = Vector2( 0, 0 )
14/shape_offset = Vector2( 0, 0 )
14/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
14/shape_one_way = false
14/shape_one_way_margin = 0.0
14/shapes = [  ]
14/z_index = 0
15/name = "tileset_1.png 15"
15/texture = ExtResource( 1 )
15/tex_offset = Vector2( 0, 0 )
15/modulate = Color( 1, 1, 1, 1 )
15/region = Rect2( 56, 88, 8, 8 )
15/tile_mode = 0
15/occluder_offset = Vector2( 0, 0 )
15/navigation_offset = Vector2( 0, 0 )
15/shape_offset = Vector2( 0, 0 )
15/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
15/shape_one_way = false
15/shape_one_way_margin = 0.0
15/shapes = [  ]
15/z_index = 0
16/name = "tileset_1.png 16"
16/texture = ExtResource( 1 )
16/tex_offset = Vector2( 0, 0 )
16/modulate = Color( 1, 1, 1, 1 )
16/region = Rect2( 56, 8, 8, 8 )
16/tile_mode = 0
16/occluder_offset = Vector2( 0, 0 )
16/navigation_offset = Vector2( 0, 0 )
16/shape_offset = Vector2( 0, 0 )
16/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
16/shape = SubResource( 1 )
16/shape_one_way = false
16/shape_one_way_margin = 1.0
16/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
16/z_index = 0
17/name = "tileset_1.png 17"
17/texture = ExtResource( 1 )
17/tex_offset = Vector2( 0, 0 )
17/modulate = Color( 1, 1, 1, 1 )
17/region = Rect2( 8, 16, 8, 8 )
17/tile_mode = 0
17/occluder_offset = Vector2( 0, 0 )
17/navigation_offset = Vector2( 0, 0 )
17/shape_offset = Vector2( 0, 0 )
17/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
17/shape = SubResource( 5 )
17/shape_one_way = false
17/shape_one_way_margin = 1.0
17/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
17/z_index = 0
18/name = "tileset_1.png 18"
18/texture = ExtResource( 1 )
18/tex_offset = Vector2( 0, 0 )
18/modulate = Color( 1, 1, 1, 1 )
18/region = Rect2( 24, 16, 8, 8 )
18/tile_mode = 0
18/occluder_offset = Vector2( 0, 0 )
18/navigation_offset = Vector2( 0, 0 )
18/shape_offset = Vector2( 0, 0 )
18/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
18/shape = SubResource( 6 )
18/shape_one_way = false
18/shape_one_way_margin = 1.0
18/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
18/z_index = 0
19/name = "tileset_1.png 19"
19/texture = ExtResource( 1 )
19/tex_offset = Vector2( 0, 0 )
19/modulate = Color( 1, 1, 1, 1 )
19/region = Rect2( 48, 16, 8, 8 )
19/tile_mode = 0
19/occluder_offset = Vector2( 0, 0 )
19/navigation_offset = Vector2( 0, 0 )
19/shape_offset = Vector2( 0, 0 )
19/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
19/shape = SubResource( 7 )
19/shape_one_way = false
19/shape_one_way_margin = 1.0
19/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
19/z_index = 0
20/name = "tileset_1.png 20"
20/texture = ExtResource( 1 )
20/tex_offset = Vector2( 0, 0 )
20/modulate = Color( 1, 1, 1, 1 )
20/region = Rect2( 0, 24, 8, 8 )
20/tile_mode = 0
20/occluder_offset = Vector2( 0, 0 )
20/navigation_offset = Vector2( 0, 0 )
20/shape_offset = Vector2( 0, 0 )
20/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
20/shape = SubResource( 8 )
20/shape_one_way = false
20/shape_one_way_margin = 1.0
20/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 8 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
20/z_index = 0
21/name = "tileset_1.png 21"
21/texture = ExtResource( 1 )
21/tex_offset = Vector2( 0, 0 )
21/modulate = Color( 1, 1, 1, 1 )
21/region = Rect2( 8, 24, 8, 8 )
21/tile_mode = 0
21/occluder_offset = Vector2( 0, 0 )
21/navigation_offset = Vector2( 0, 0 )
21/shape_offset = Vector2( 0, 0 )
21/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
21/shape = SubResource( 9 )
21/shape_one_way = false
21/shape_one_way_margin = 1.0
21/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 9 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
21/z_index = 0
22/name = "tileset_1.png 22"
22/texture = ExtResource( 1 )
22/tex_offset = Vector2( 0, 0 )
22/modulate = Color( 1, 1, 1, 1 )
22/region = Rect2( 16, 24, 8, 8 )
22/tile_mode = 0
22/occluder_offset = Vector2( 0, 0 )
22/navigation_offset = Vector2( 0, 0 )
22/shape_offset = Vector2( 0, 0 )
22/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
22/shape = SubResource( 10 )
22/shape_one_way = false
22/shape_one_way_margin = 1.0
22/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 10 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
22/z_index = 0
23/name = "tileset_1.png 23"
23/texture = ExtResource( 1 )
23/tex_offset = Vector2( 0, 0 )
23/modulate = Color( 1, 1, 1, 1 )
23/region = Rect2( 16, 16, 8, 8 )
23/tile_mode = 0
23/occluder_offset = Vector2( 0, 0 )
23/navigation_offset = Vector2( 0, 0 )
23/shape_offset = Vector2( 0, 0 )
23/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
23/shape = SubResource( 11 )
23/shape_one_way = false
23/shape_one_way_margin = 1.0
23/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 11 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
23/z_index = 0
24/name = "tileset_1.png 24"
24/texture = ExtResource( 1 )
24/tex_offset = Vector2( 0, 0 )
24/modulate = Color( 1, 1, 1, 1 )
24/region = Rect2( 56, 16, 8, 8 )
24/tile_mode = 0
24/occluder_offset = Vector2( 0, 0 )
24/navigation_offset = Vector2( 0, 0 )
24/shape_offset = Vector2( 0, 0 )
24/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
24/shape = SubResource( 12 )
24/shape_one_way = false
24/shape_one_way_margin = 1.0
24/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 12 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
24/z_index = 0
25/name = "tileset_1.png 25"
25/texture = ExtResource( 1 )
25/tex_offset = Vector2( 0, 0 )
25/modulate = Color( 1, 1, 1, 1 )
25/region = Rect2( 0, 40, 8, 8 )
25/tile_mode = 0
25/occluder_offset = Vector2( 0, 0 )
25/navigation_offset = Vector2( 0, 0 )
25/shape_offset = Vector2( 0, 0 )
25/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
25/shape = SubResource( 13 )
25/shape_one_way = false
25/shape_one_way_margin = 1.0
25/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 13 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
25/z_index = 0
26/name = "tileset_1.png 26"
26/texture = ExtResource( 1 )
26/tex_offset = Vector2( 0, 0 )
26/modulate = Color( 1, 1, 1, 1 )
26/region = Rect2( 24, 40, 8, 8 )
26/tile_mode = 0
26/occluder_offset = Vector2( 0, 0 )
26/navigation_offset = Vector2( 0, 0 )
26/shape_offset = Vector2( 0, 0 )
26/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
26/shape = SubResource( 14 )
26/shape_one_way = false
26/shape_one_way_margin = 1.0
26/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 14 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
26/z_index = 0
27/name = "tileset_1.png 27"
27/texture = ExtResource( 1 )
27/tex_offset = Vector2( 0, 0 )
27/modulate = Color( 1, 1, 1, 1 )
27/region = Rect2( 32, 40, 8, 8 )
27/tile_mode = 0
27/occluder_offset = Vector2( 0, 0 )
27/navigation_offset = Vector2( 0, 0 )
27/shape_offset = Vector2( 0, 0 )
27/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
27/shape = SubResource( 15 )
27/shape_one_way = false
27/shape_one_way_margin = 1.0
27/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 15 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
27/z_index = 0
28/name = "tileset_1.png 28"
28/texture = ExtResource( 1 )
28/tex_offset = Vector2( 0, 0 )
28/modulate = Color( 1, 1, 1, 1 )
28/region = Rect2( 8, 32, 8, 8 )
28/tile_mode = 0
28/occluder_offset = Vector2( 0, 0 )
28/navigation_offset = Vector2( 0, 0 )
28/shape_offset = Vector2( 0, 0 )
28/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
28/shape = SubResource( 16 )
28/shape_one_way = false
28/shape_one_way_margin = 1.0
28/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 16 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
28/z_index = 0
29/name = "tileset_1.png 29"
29/texture = ExtResource( 1 )
29/tex_offset = Vector2( 0, 0 )
29/modulate = Color( 1, 1, 1, 1 )
29/region = Rect2( 32, 24, 8, 8 )
29/tile_mode = 0
29/occluder_offset = Vector2( 0, 0 )
29/navigation_offset = Vector2( 0, 0 )
29/shape_offset = Vector2( 0, 0 )
29/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
29/shape = SubResource( 17 )
29/shape_one_way = false
29/shape_one_way_margin = 1.0
29/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 17 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
29/z_index = 0
              �  pDSIG     M   GDEF     M   GPOS    M   GSUB���@  M,   �OS/2v�</  x   `cmap�f\q  �  bgasp��   L�   glyf1$ �  
�  <�head
V�   �   6hhea?�  4   $hmtx���  �  �loca�z�N  �  �maxp � \  X    name\zn�  Gx  ?post��7�  J�  C      [��_<�      єu    є��  �p��             l�  �  ���                �    � \                        /�  �3  3�3  � f          �  �P  J        PXSG@  �x�p �l�       �x     r      �  �  X  �  �  x  @  �     �  �  �  �  X  �  X  @  @  x  x  x  x  x  x  x  x  x  X  X     �     x  @  x  x  x  x  x  x  x  x  x  x  x  x  @  x  x  x  x  x  x  x  x  x  @  x  x  x  �  @  �  �  x  X  x  x  x  x  x  x  x  x  x  �  x  x  @  x  x  x  x  x  x  x  x  x  @  x  x  x  �  X  �  �  X  x  x  @  x  X  x  x  @  r  x  r  @  r  > <r  r  r  X  x  � ]      r  r  x  r  r  r  x  x  x  x  x  x  x  �  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x    x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  x  �  x  x  x  x  x  x  x  x  x  �  �  � �� �X  X     �  � �x  @           �  �  �  � G� F� �        @  x  x  x  x  @    r  r  r  r  �  r  r  r  �  �  �  �  �                X      <   J @  
    ~ � � � �1S���~    " & 0 : D � � �!!""""""""H"e����        � � � �1R���~      & 0 9 D � � �!!""""""""H"d���� ����  ��  �������������������������6�4�0��߼�����������^ޜށ��        D   B                                                                 
                                                                       	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � p c d h � v � n j � t i   � �   q � � f u � � �     k z   � �  b m     � � l { �  � � � � � � � � � � � �   �   � e � � � � � w � � � � � � � � � � � � � �   � � � � � � � o � � � x � � �     & & & & < V � � �8Nf�����"6Rn�����.Fn����0Jd~�����,Pp���� (Fj���� 4P\p�����*B^z�����		,	@	Z	t	�	�	�	�


.
N
\
|
�
�
�
� BX����>d���
0Vj�����Tz���6f���0V|���Lt���<j����Fj����"T����Dl���
4Xv���@d~���4\x�����$2Dd������,D�(Fn���4^~���:Hn������X       ��    0543!2#!$54#!"3!�L����������M�L������K�����      �x    )5!!!��p��p��p���       �x    #!#%#!#����X�����������      ���    ##5#535#53533533#3##35#X���������������������������������        �x   5!!!!!!5!5!5!����� �p�p�p �������������X     xx   ;  35#35#'####5375375375'!!3753753753###!!��� �����ȯ����X���ȯ��?��������������X�����������?      �x   53!!!!!!#5!35#�����X��X�p��p���������������      Xx   53###53753�ȯ�ȯ�ɯ�����   �8 x   135!!!!5�X�p�������P��    �8 x   !!5!!5!3X����pX�������P      ��x    5333###5#5#53535��������������������������    ���   !5!3!!#��p����p�X���p��p   �8��   3#!#�������      X�    !!�� �        ��   )!��p��       xx '  ##53753753753753753753####��ȯ�����ȯ������������������        x�     #!!!! � ��x�p��X �p�������       �� 	  5!#5!!!��X��P� ���     ��   !!!!!!��� �P �p�p�����X���      ��   5!#3!5!!5!5����P ��X���p�������      �� 	  !!!!!����p�����X�P�     ��   1!!!!!!������� ���X����      ��    %!!!!!!���p �P��� �������        ��   53535!5!###!����������p������p���p�      ��     %!!!)!#3!35���p��p�������P�������p���X�      ��    !!!!5!5! �p�����P ����pX�P��       ��    )!5!!��p��p����    �8��  	  !!#!#��p�����X�����     �X�   33#5'#5'#53753753##��������ȯ�q�ȯ������   ���    !!!!����X�X�      �X�   '#5'#5333###537537��������ȯ��ȯ������        �x    !!!!!!!��p�p��p�p���px��������P�        xx    5#!!!!!!3 �X����x�X�X��X��x�X�p        �x    !!!!!! �p�p��p�p�X��x����p       �x     %!!!!!#3!���p��p�������P��X�pX�����     �x   !5!!5!!!��p�p���P������px       �x    %!)#!!���p �������x�       �x   !!!!!���X�� �Px��p��p�x        �x 	  !!!!���X���px��p���x     �x   )!!5!!#5!��P��p�p��Xx�p����        �x   !!!!!!����p�p�px��X��X��       �x   !!!5!!5��p��P��px������     �x   !!!!����PX�p���       �x   !!'!!!353!##9w�p���p������X��?��x�����pȯ      �x   !!!� �Px�P�      xx   333535353!###!��������p����px��������X�p���x     �x   #!3333!#5#5#X��p��������X��x���X����      �x    !!%!!��P���px����        �x  	  !!%!!!���p�p����pXX���p      �8xx    !35!!3! �p������p� ���px���       �x    !!!!#3!! �p��p�p����p�p�����x����p�        �x   !5!!!!!!��p�p �P����x�p��p�����        �x   !!!5��p�p�px��P��       �x   !!!!����Px�P���       �x   !!!##!##������p��x��X���p�p��       xx   !333!#!#!�������p��p������p ��p��p�        �x   #5#!!!##33!!!353�����������p�p�p�� ���p��p����p��p��      �x   !!!!!!��p����p�p���� ��p     �x   #!!3!7535!5!#!X� �P�w�����������������p�   �8 x   !!! �p���x��P�@       xx '  5'#5'#5'#5'#53333333#5'#5' ������������������ȯ�����ȯ�      �8 x   !5!!5 ����px�����     @ �   3#5'!#5375X����ȯЯȯ���     �p��8   !!��P��   @�� 	  3#5'#5����Яȯ�       �� 	   5!5!3!5#X�����PX�X�����X�p��      �x    #3#5!!! �����XX� �����p�     �� 	  %!!!5!��P��p�p����p���      �x    %3#!!!#���X�XX��X�����      ��    !5!!!!!���p �� �P�X��p���        �x   !!!#53!!X��p�p����� ���X�X�      �p��    %3#%#!5!5!��� ��X���X���P���       �x   !#!!!3X��p�X� ��x�p���      �x 	   5!#5!!!5!��X��P���X�������     �8�x    !!!3!!X��p������x����p��P       �x   !!'!!!3535!##9w�p���p��������pw�px�����ȯ        �x 	  5!#5!!!��X��P����P�     x�   !###!x�p����p�� �� ���        �� 	  3#5!!#����p� �� ��     ��    !!%!!��P���p���X      �p��    %#!#5! ��p���X����p���      �p��    %3#3!!!���X�������X����      �� 	  3#5!!5#����p� ��p���      ��   !!!5!5!!��� �P ��� �����X        ��   35!!!!!#��X��X���������        �� 	  3!!3���P���������       ��   !!!##!5#5#������p�����X������       x�   5!333!#!5#!5�������p��p� ��X��X������     ��   #5#5!!5!##33!5!!5353�����������p�p�p��X�������������    �p��   3!!5!5!#5X���X������ ���� �        ��   5!5!!!!!!75! ������� �Pwwq���p�����     �8 x   ##33!5##5335 �����p����x��p�����X���     �8�x   !!��px��     �8 x   33##!5335##5������p����x��p�����X���     @��   ##5375!3753#!��ȯ��ȯ�p�������      �x    !!!!��p��p�x��P�        ��   5!!!5!!!!5!����p�p �p�p�p����p��p���      �x   !!!!!!53#533� ����pX�P����x��p��p�����     �x�    #5#5!!5!##33!5!!535;5#����X������p���p����� ��������������     �x   5!!!!!3#!5#5��p����p���p��� ��X�������    �8�x    !5!��p�X�� �X��      �8�@    !5!#!!5!!3!!!!���p����p�pX��P����X����p��p�����   @��    !!!!��p� �p�@��p�     xx     !!!!7!!7%5!3#!5'#3��p���X��J�������� ��X��J�2������      ��    0543!2#!$54#!"3!�L����������M�L������K�����     ���  7  33#5'#5'#53753753##33#5'#5'#53753753##��������ȯ�X�������ȯ�q�ȯ��������ȯ������     ��    0543!2#!$54#!"3!�L����������M�L������K�����      xx     !#!7!!7%5!3#!5'#3��p�X��J�������� �pX��J�2������       ��    0543!2#!$54#!"3!�L����������M�L������K�����   <vh�    "32654&'2#"&546SV{zWWxyVs��su��\zWWxxWWzF�sr��tt�     ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����    @�� 	  ##5375��ȯ�����    �p��   !3!3!!�������p��� ����p   ]  ��   ####.5463�R�T��ײ�F��U�������   &��   !!���&�   �pX �   3!!��������       ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����     ���  7  '#5'#5333###537537%'#5'#5333###537537��������ȯ����������ȯ��ȯ��������ȯ������        ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����      �x    1!5!!!5!!5!���p���p�p� ��p�p��p��        ��     !!!!!!3#5'#5 �p�p��p�p�����X��x����p��ȯ�     ��     !!!!!!##5375 �p�p��p�p��ȯX��x����p�����      ��     !!!!!!3#5'!#5375 �p�p��p�p�����ȯX��x����p��ȯ���       ��     !!!!!!##5375!3753#! �p�p��p�p��p�ȯ��ȯ�pX��x����p��������        ��      !!!!!!!!!! �p�p��p�p��p�p� �p�X��x����p ��p�       ��     !!!!!!!! �p�p��p�p��p�X��x����p �     �x    !!!!!!!!!! �p��p�p���X�� �P��p���x��p��p�     �p�x   )!!5!!5!!!53��p��p�p���p���x�p����p�p�     ��    !!!!!3#5'#5���X�� �PX���x��p��p�xX�ȯ�     ��    !!!!!##5375���X�� �P �ȯx��p��p�xX����     ��    !!!!!3#5'!#5375���X�� �P ����ȯx��p��p�xX�ȯ���      ��     !!!!!%!!!!���X�� �P��p� �p�x��p��p�x���p�     ��    !!!5!!53#5'#5��p��P��pX���x������X�ȯ�      ��    !!!5!!5##5375��p��P��p �ȯx������X����      ��    !!!5!!53#5'!#5375��p��P��p ����ȯx������X�ȯ���       ��     !!!5!!5%!!!!��p��P��p��p� �p�x���������p�      �x    !!3!3#!���p������� �����X���        ��  '  #!3333!#5#5###5375!3753#!X��p��������ȯȯ��ȯ�pX��x���X����x�������        ��     !!%!!3#5'#5��P���p����x���� �ȯ�      ��     !!%!!##5375��P���p��ȯx���� ����     ��     !!%!!3#5'!#5375��P���p�����ȯx���� �ȯ���      ��     !!%!!##5375!3753#!��P���p�ȯ��ȯ�px����X�������       ��      !!%!!!!!!��P���p�p� �p�x�������p�     ���   #5#5!!5!##33!5!!5353�����������p�p�p�� �������������      �x     #!=!375!!q���p�����P ��pX���p����       ��    !!!!3#5'#5����PX���x�P���Яȯ�        ��    !!!!##5375����P �ȯx�P��������        ��    !!!!3#5'!#5375����P ����ȯx�P���Яȯ���     ��     !!!!!!!!����P��p� �p�x�P���@��p�       ��    !!!!!!##5375��p����p�p��ȯ���� ��p�����      �x    !!!!!!���p�p� ���p�X����       �x   )35!#3!53#53!��p����������p�����������     �@ 	    5!5!3!5###5375X�����PX���ȯX�����X�p��x����       �@ 	    5!5!3!5#3#5'#5X�����PX�����X�����X�p��x�ȯ�        �@ 	    5!5!3!5#3#5'!#5375X�����PX������ȯX�����X�p��x�ȯ���        �@ 	  !  5!5!3!5###5375!3753#!X�����PXȯȯ��ȯ�pX�����X�p����������     �@ 	     5!5!3!5#!!!!X�����PX��p� �p�X�����X�p�����p�        �@ 	    5!5!3!5#!!X�����PX���p�X�����X�p����      �     %5#!5!!5!5!!!X�X��p�X���� �������X������    �p��   %!!535!!!5!��p����p��p�p���p����p���       �@     !5!!!!!3#5'#5���p �� �P������X��p���X�ȯ�     �@     !5!!!!!##5375���p �� �P��p�ȯX��p���X����     �@     !5!!!!!3#5'!#5375���p �� �P��p����ȯX��p���X�ȯ���      �@      !5!!!!!%!!!!���p �� �P����p� �p�X��p������p�     �@ 	   5!#5!!!3#5'#5��X��PX����X����@�ȯ�      �@ 	   5!#5!!!##5375��X��P �ȯ�X����@����      �@ 	   5!#5!!!3#5'!#5375��X��P ����ȯ�X����@�ȯ���       �@ 	    5!#5!!!!!!!��X��P��p� �p��X�������p�     �x    %3#%3#!!5!5!���X���X�p �X�������      �@ 	   3#5!!###5375!3753#!����p�ȯȯ��ȯ�p �� ��x�������       �@     !!%!!##5375��P���p��ȯ���X ����     �@     !!%!!3#5'#5��P���p�������X �ȯ�      �@     !!%!!3#5'!#5375��P���p�����ȯ���X �ȯ���      �@     !!%!!##5375!3753#!��P���p�ȯ��ȯ�p���XX�������       �@      !!%!!!!!!��P���p�p� �p����X���p�     ���     !!3#3#������� �X����        ��     #!'#37!!q���ȯ����PX�����w�     �@ 	   3!!3##5375���P��ȯȯ������� X����        �@ 	   3!!33#5'#5���P������������ X�ȯ�     �@ 	   3!!33#5'!#5375���P�������ȯ������� X�ȯ���     �@ 	    3!!3'!!!!���P����p� �p�������� ���p�      �p�@    3!!5!5!#5##5375X���X��� �ȯ��� ���� �X����   �p�x    %#!#5!! ��p�XX�X����p@��p�    �p�@     3!!5!5!#5%!!!!X���X�����p� �p���� ���� ����p�     �� 	  5!#5!!!��X��P�X����   @ �   3#5'!#5375X����ȯЯȯ���     @ �   5'#53!753#���^ȯ@�ȯ���     ��(   5!��}}     �7#E   332673#"&�3tmmr3�{z�EIDCJ���    @��   !!��p�@�   @��   !!��p�@�   �pX �   !!3X�����pX�p      @��   ##5375!3753#!��ȯ��ȯ�p�������   �7&�    >323>32ِ+(��+(�7,&(&�,&(&�     X�    !!��P �      Xx    !!x�� �       Xx   #5'#5333#5w�������ȯ�ȯ    Xx   53###53753�ȯ�ȯ�ɯ�����   �pX �   %53###53753�ȯ�ȯ�������     �x    3!33!3 ��p�����p���pX��pX     �x    #!#%#!#����X�����������     �8��    3#!#%#!#����X����������  G���� 2  &'&5463267632#"'&'#67#"&54632�.9H<9K7.	`Qe1<7- hU^fj&lf	`Re1;7, iU�aQe1;7, iU^.9H<9K7.�e�4���e�
-9H<9K8.    F���� [  %67632#"'&'#"&54767#"&54632&'67#"&54632&'&5463267632#"'&'^Uh -7<1eQ`	.7K9<H9.^Ui ,7;1eR`	ff	`Re1;7, iU^.9H<9K7.	`Qe1<7- hU^ff�.7K9<H9.^Ui ,7;1eQa	.8K9<H9-
⬫�
-9H<9K8.	aQe1;7, iU^.9H<9K7.⫬   ��(�   4632#"&خ{z��z{��{��zz��     @�     )!!!!!��p�X�p�X�p���p��p�      �X�   33#5'#5'#53753753##��������ȯ�q�ȯ������    �X�   '#5'#5333###537537��������ȯ��ȯ������        xx '  ##53753753753753753753####��ȯ�����ȯ������������������        �x   #!!!!#5##X��p��� ���X��x��p�p���       �x   5#53535!!!!!!!!535#5���� ����p��pX�P��X��������������     �x     !=!!!!���p�p����p ��������p       �x   !!!!!!!!5#5#535#5353� ����p��pX��������x�������������      Xxx     !##!!'#X��XX��X ��X�� �����p    X@x 	   33#3)!####�����pX�����x���� ��X��X��       ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����    X�    !!�� �        ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����      ��    0543!2#!$54#!"3!�L����������M�L������K�����      �x    %!!!!!!!���p�p���X�� ���Px��p��p�     ��     %!!!5!!!!���p ��p�P��� �X���������      x    ?  35#35#35#'####5375375375'!!3753753753###!��� ����������ȯ����X���ȯ����������p?�������X�����������      &        =         
          �        =       
         * T       	 �        ~      	          �        �        �  	   z �  	   �  	    	  .-  	   �  	  T[  	  �  	  �  	 	  �  	  2�  	  2�  	  "�Pixel Intv � (Neale Davidson). 2013-2015. All Rights ReservedPixel Intv:Version 1.00Version 1.00 June 3, 2015, initial releasePixel Sagashttp://www.pixelsagas.comPixelIntv-Regular P i x e l   I n t v   �   ( N e a l e   D a v i d s o n ) .   2 0 1 3 - 2 0 1 5 .   A l l   R i g h t s   R e s e r v e d P i x e l   I n t v : V e r s i o n   1 . 0 0 V e r s i o n   1 . 0 0   J u n e   3 ,   2 0 1 5 ,   i n i t i a l   r e l e a s e P i x e l   S a g a s h t t p : / / w w w . p i x e l s a g a s . c o m P i x e l I n t v - R e g u l a r        �' �                     �           	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � b c � d � e � � � � � � � f � � � � g � � � � � h � � � j i k m l n � o q p r s u t v w � x z y { } | � �  ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 � � � � � � � � �
 � � �uni00B2uni00B3uni00B9uni02C9lirapesetaEurouni2116uniF001uniF002    ��                       
                
  . latn      ��    frac                   �          ,  
      }  �  |  �    ~  �                   [gd_resource type="DynamicFont" load_steps=2 format=2]

[ext_resource path="res://Fonts/Pixel Intv.otf" type="DynamicFontData" id=1]

[resource]
size = 10
font_data = ExtResource( 1 )
        GDSC   	         6      ���Ӷ���   �����Ķ�   ������ƶ   ����ڶ��   ��������󶶶   ���������ڶ�   ������������¶��   �������Ӷ���   �������������������Ӷ���          A                                                    	   !   
   %      &      ,      4      3YY;�  Y;�  Y;�  YY:�  V�  �  YY0�  PQV�  �  PQ�  Y0�  PQV�  �  PQT�  PQY`            [gd_scene load_steps=2 format=2]

[ext_resource path="res://Global.gd" type="Script" id=1]

[node name="Node2D" type="Node2D"]
script = ExtResource( 1 )
       GDSC   	         ;      ���Ӷ���   ����Ӷ��   ���������Ӷ�   �����϶�   �����ڶ�   ����ڶ��   �嶶   �������������ն�   ��������������¶                   zD                   
                                 	   %   
   &      ,      9      3YY;�  V�  YY;�  �  YY0�  PQV�  �  T�  �  �  �  T�  PQYY0�  PQV�  .P�  T�  PQ�  Q�  Y`           [gd_scene load_steps=11 format=2]

[ext_resource path="res://FloorTileSet.tres" type="TileSet" id=1]
[ext_resource path="res://Packages/LargePackage.tscn" type="PackedScene" id=2]
[ext_resource path="res://Parts/ConveyorBelt.tscn" type="PackedScene" id=3]
[ext_resource path="res://Parts/PackageOutput.tscn" type="PackedScene" id=4]
[ext_resource path="res://UI/HUD.tscn" type="PackedScene" id=5]
[ext_resource path="res://Enemy.tscn" type="PackedScene" id=6]
[ext_resource path="res://Player/Player.tscn" type="PackedScene" id=7]
[ext_resource path="res://WallTileSet.tres" type="TileSet" id=8]
[ext_resource path="res://Levels/Level.gd" type="Script" id=9]
[ext_resource path="res://Packages/NormalPackage.tscn" type="PackedScene" id=10]

[node name="Node2D" type="Node2D"]
script = ExtResource( 9 )

[node name="Enemy" parent="." instance=ExtResource( 6 )]
position = Vector2( -8, -88 )

[node name="Player" parent="." instance=ExtResource( 7 )]
position = Vector2( -56, 40 )

[node name="PackageOutput" parent="." instance=ExtResource( 4 )]
position = Vector2( 72, 56 )

[node name="NormalPackage2" parent="." instance=ExtResource( 10 )]
position = Vector2( -104, -24 )

[node name="NormalPackage3" parent="." instance=ExtResource( 10 )]
position = Vector2( -104, -48 )

[node name="NormalPackage4" parent="." instance=ExtResource( 10 )]
position = Vector2( 128, 56 )

[node name="WallTileMap" type="TileMap" parent="." groups=["tilemap"]]
tile_set = ExtResource( 8 )
cell_size = Vector2( 8, 8 )
cell_quadrant_size = 8
show_collision = true
format = 1
tile_data = PoolIntArray( -720890, 1, 0, -720889, 1, 0, -720888, 1, 0, -720887, 1, 0, -720886, 1, 0, -720885, 1, 0, -720884, 1, 0, -720883, 1, 0, -720882, 1, 0, -720881, 1, 0, -720880, 1, 0, -720879, 1, 0, -720878, 1, 0, -720877, 1, 0, -720876, 1, 0, -589840, 0, 0, -589839, 1, 0, -589838, 1, 0, -589837, 1, 0, -589836, 1, 0, -589835, 1, 0, -589834, 1, 0, -589833, 1, 0, -589832, 1, 0, -589831, 1, 0, -589830, 1, 0, -589829, 1, 0, -589828, 1, 0, -589827, 1, 0, -589826, 1, 0, -589825, 1, 0, -655360, 1, 0, -655359, 1, 0, -655358, 1, 0, -655357, 1, 0, -655356, 1, 0, -655355, 1, 0, -655354, 9, 0, -655353, 9, 0, -655352, 9, 0, -655351, 9, 0, -655350, 9, 0, -655349, 9, 0, -655348, 9, 0, -655347, 9, 0, -655346, 9, 0, -655345, 9, 0, -655344, 9, 0, -655343, 9, 0, -655342, 9, 0, -655341, 9, 0, -655340, 9, 0, -655339, 0, 0, -524304, 0, 0, -524303, 9, 0, -524302, 9, 0, -524301, 9, 0, -524300, 9, 0, -524299, 9, 0, -524298, 9, 0, -524297, 9, 0, -524296, 9, 0, -524295, 9, 0, -524294, 9, 0, -524293, 9, 0, -524292, 9, 0, -524291, 9, 0, -524290, 9, 0, -524289, 9, 0, -589824, 9, 0, -589823, 9, 0, -589822, 9, 0, -589821, 9, 0, -589820, 9, 0, -589819, 9, 0, -589803, 0, 0, -458768, 0, 0, -524267, 0, 0, -524266, 0, 0, -393232, 0, 0, -458731, 0, 0, -458730, 0, 0, -327696, 0, 0, -393195, 0, 0, -393194, 0, 0, -262160, 0, 0, -327659, 0, 0, -327658, 0, 0, -196624, 1, 0, -262123, 0, 0, -262122, 0, 0, -131088, 8, 0, -196587, 0, 0, -65542, 0, 0, -65541, 0, 0, -65540, 0, 0, -65539, 0, 0, -65538, 0, 0, -65537, 0, 0, -131072, 0, 0, -131071, 0, 0, -131070, 0, 0, -131069, 0, 0, -131068, 0, 0, -131067, 0, 0, -131051, 0, 0, -6, 0, 0, -5, 0, 0, -4, 0, 0, -3, 0, 0, -2, 0, 0, -1, 0, 0, -65536, 0, 0, -65535, 0, 0, -65534, 0, 0, -65533, 0, 0, -65532, 0, 0, -65531, 0, 0, -65515, 0, 0, 65530, 0, 0, 65531, 0, 0, 65532, 0, 0, 65533, 0, 0, 65534, 0, 0, 65535, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 21, 0, 0, 131066, 0, 0, 131067, 0, 0, 131068, 0, 0, 131069, 0, 0, 131070, 0, 0, 131071, 0, 0, 65536, 0, 0, 65537, 0, 0, 65538, 0, 0, 65539, 0, 0, 65540, 0, 0, 65541, 0, 0, 65549, 1, 0, 65550, 1, 0, 65551, 1, 0, 65552, 1, 0, 65553, 1, 0, 65554, 1, 0, 65555, 1, 0, 65556, 1, 0, 65557, 0, 0, 196598, 12, 0, 196599, 5, 0, 196600, 4, 0, 196601, 4, 0, 196602, 15, 0, 196603, 1, 0, 196604, 0, 0, 196605, 0, 0, 196606, 0, 0, 196607, 0, 0, 131072, 0, 0, 131073, 0, 0, 131074, 0, 0, 131075, 0, 0, 131076, 0, 0, 131077, 0, 0, 131085, 9, 0, 131086, 9, 0, 131087, 9, 0, 131088, 9, 0, 131089, 9, 0, 131090, 9, 0, 131091, 9, 0, 131092, 0, 0, 131093, 0, 0, 262134, 12, 0, 262135, 5, 0, 262136, 4, 0, 262137, 4, 0, 262138, 9, 0, 262139, 8, 0, 262140, 1, 0, 262141, 1, 0, 262142, 2, 0, 262143, 1, 0, 196608, 1, 0, 196609, 0, 0, 196610, 0, 0, 196611, 0, 0, 196612, 0, 0, 196613, 0, 0, 196628, 0, 0, 196629, 0, 0, 327670, 12, 0, 327671, 5, 0, 327672, 4, 0, 327673, 4, 0, 327674, 4, 0, 327675, 4, 0, 327676, 10, 0, 327677, 8, 0, 327678, 1, 0, 327679, 8, 0, 262144, 9, 0, 262145, 0, 0, 262146, 0, 0, 262147, 0, 0, 262148, 0, 0, 262149, 0, 0, 262164, 0, 0, 262165, 0, 0, 393206, 12, 0, 393207, 5, 0, 393208, 4, 0, 393209, 7, 0, 393210, 4, 0, 393211, 4, 0, 393212, 6, 0, 393213, 6, 0, 393214, 8, 0, 327680, 4, 0, 327681, 0, 0, 327682, 0, 0, 327683, 0, 0, 327684, 0, 0, 327685, 0, 0, 327700, 0, 0, 327701, 0, 0, 458742, 12, 0, 458743, 13, 0, 458744, 13, 0, 458745, 13, 0, 458746, 4, 0, 458747, 4, 0, 458748, 4, 0, 458749, 4, 0, 458750, 4, 0, 393216, 4, 0, 393217, 0, 0, 393218, 0, 0, 393219, 0, 0, 393220, 0, 0, 393221, 0, 0, 393236, 0, 0, 393237, 0, 0, 524278, 11, 0, 524279, 11, 0, 524280, 11, 0, 524281, 12, 0, 524282, 13, 0, 524283, 7, 0, 524284, 7, 0, 524285, 4, 0, 524286, 4, 0, 524287, 4, 0, 458752, 4, 0, 458753, 0, 0, 458754, 0, 0, 458755, 0, 0, 458756, 0, 0, 458757, 0, 0, 458772, 0, 0, 458773, 0, 0, 589813, 11, 0, 589814, 11, 0, 589815, 11, 0, 589816, 11, 0, 589817, 11, 0, 589818, 0, 0, 589819, 0, 0, 589820, 0, 0, 589821, 0, 0, 589822, 0, 0, 589823, 0, 0, 524288, 0, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524308, 0, 0, 524309, 0, 0, 655349, 11, 0, 655350, 11, 0, 655351, 11, 0, 655352, 11, 0, 655353, 11, 0, 655354, 0, 0, 655355, 1, 0, 655356, 1, 0, 655357, 0, 0, 655358, 0, 0, 655359, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589844, 0, 0, 589845, 0, 0, 720885, 11, 0, 720886, 11, 0, 720887, 11, 0, 720888, 11, 0, 720889, 11, 0, 720890, 12, 0, 720891, 3, 0, 720892, 8, 0, 720893, 8, 0, 720895, 11, 0, 655361, 0, 0, 655362, 0, 0, 655363, 0, 0, 655364, 0, 0, 655365, 0, 0, 655373, 0, 0, 655374, 0, 0, 655375, 0, 0, 655376, 0, 0, 655377, 0, 0, 655378, 0, 0, 655379, 0, 0, 655380, 0, 0, 655381, 0, 0, 786421, 11, 0, 786422, 11, 0, 786423, 11, 0, 786424, 11, 0, 786425, 11, 0, 786426, 12, 0, 786427, 13, 0, 786431, 11, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 0, 720902, 0, 0, 720903, 0, 0, 720904, 0, 0, 720905, 0, 0, 720906, 0, 0, 720907, 0, 0, 720908, 0, 0, 720909, 0, 0, 720910, 0, 0, 720911, 0, 0, 720912, 0, 0, 720913, 0, 0, 720914, 0, 0, 720915, 0, 0, 720916, 0, 0, 720917, 0, 0, 851957, 11, 0, 851958, 11, 0, 851959, 11, 0, 851960, 11, 0, 851961, 11, 0, 851962, 11, 0, 851963, 11, 0, 851964, 11, 0, 851967, 11, 0 )

[node name="FloorTileMap" type="TileMap" parent="." groups=["tilemap"]]
z_index = -100
tile_set = ExtResource( 1 )
cell_size = Vector2( 8, 8 )
cell_quadrant_size = 8
collision_layer = 16
collision_mask = 16
format = 1
tile_data = PoolIntArray( -655369, 0, 0, -655368, 0, 0, -655364, 0, 0, -655363, 0, 0, -655362, 0, 0, -655361, 0, 0, -720896, 0, 0, -720895, 0, 0, -720894, 0, 0, -720893, 0, 0, -720892, 0, 0, -720891, 0, 0, -720890, 0, 0, -720889, 0, 0, -720888, 0, 0, -720887, 0, 0, -720886, 0, 0, -720885, 0, 0, -589830, 0, 0, -655356, 0, 0, -655355, 0, 0, -655354, 0, 0, -655353, 0, 0, -655352, 0, 0, -655351, 0, 0, -655350, 0, 655364, -655349, 0, 0, -589822, 0, 0, -589821, 0, 0, -589820, 0, 0, -589818, 7, 0, -589817, 7, 0, -589816, 16, 0, -589815, 16, 0, -589814, 16, 0, -589813, 16, 0, -589812, 16, 0, -589811, 16, 0, -589810, 16, 0, -589809, 16, 0, -589808, 16, 0, -589807, 16, 0, -589806, 16, 0, -589805, 16, 0, -589804, 16, 0, -458767, 17, 0, -458766, 6, 0, -458765, 16, 0, -458764, 16, 0, -458763, 16, 0, -458762, 16, 0, -458761, 16, 0, -458760, 16, 0, -458759, 16, 0, -458758, 16, 0, -458757, 16, 0, -458756, 17, 0, -458755, 16, 0, -458754, 16, 0, -458753, 16, 0, -524288, 16, 0, -524287, 16, 0, -524286, 16, 0, -524285, 16, 0, -524284, 16, 0, -524283, 16, 0, -524282, 16, 0, -524281, 16, 0, -524280, 16, 0, -524279, 16, 0, -524278, 16, 0, -524277, 16, 0, -524276, 16, 0, -524275, 16, 0, -524274, 16, 0, -524273, 16, 0, -524272, 16, 0, -524271, 16, 0, -524270, 16, 0, -524269, 16, 0, -524268, 16, 0, -393231, 17, 0, -393230, 5, 0, -393229, 5, 0, -393228, 16, 0, -393227, 16, 0, -393226, 18, 0, -393225, 16, 0, -393224, 16, 0, -393223, 16, 0, -393222, 16, 0, -393221, 16, 0, -393220, 16, 0, -393219, 16, 0, -393218, 16, 0, -393217, 16, 0, -458752, 16, 0, -458751, 16, 0, -458750, 16, 0, -458749, 16, 0, -458748, 16, 0, -458747, 16, 0, -458746, 16, 0, -458745, 16, 0, -458744, 16, 0, -458743, 16, 0, -458742, 16, 0, -458741, 16, 0, -458740, 16, 0, -458739, 25, 0, -458738, 25, 0, -458737, 25, 0, -458736, 25, 0, -458735, 25, 0, -458734, 25, 0, -458733, 16, 0, -458732, 16, 0, -327695, 16, 0, -327694, 5, 0, -327693, 5, 0, -327692, 16, 0, -327691, 16, 0, -327690, 16, 0, -327689, 16, 0, -327688, 16, 0, -327687, 16, 0, -327686, 16, 0, -327685, 16, 0, -327684, 16, 0, -327683, 16, 0, -327682, 16, 0, -327681, 16, 0, -393216, 16, 0, -393215, 16, 0, -393214, 16, 0, -393213, 18, 0, -393212, 18, 0, -393211, 16, 0, -393210, 16, 0, -393209, 16, 0, -393208, 16, 0, -393207, 16, 0, -393206, 16, 0, -393205, 16, 0, -393204, 16, 0, -393203, 25, 0, -393202, 26, 0, -393201, 26, 0, -393200, 26, 0, -393199, 26, 0, -393198, 25, 0, -393197, 16, 0, -393196, 16, 0, -262159, 16, 0, -262158, 7, 0, -262157, 16, 0, -262156, 16, 0, -262155, 16, 0, -262154, 16, 0, -262153, 16, 0, -262152, 16, 0, -262151, 16, 0, -262150, 13, 0, -262149, 13, 0, -262148, 13, 0, -262147, 13, 0, -262146, 13, 0, -262145, 13, 0, -327680, 13, 0, -327679, 13, 0, -327678, 13, 0, -327677, 13, 0, -327676, 13, 0, -327675, 13, 0, -327674, 16, 0, -327673, 16, 0, -327672, 16, 0, -327671, 7, 0, -327670, 16, 0, -327669, 16, 0, -327668, 16, 0, -327667, 25, 0, -327666, 26, 0, -327665, 26, 0, -327664, 26, 0, -327663, 26, 0, -327662, 25, 0, -327661, 16, 0, -327660, 16, 0, -196623, 16, 0, -196622, 5, 0, -196621, 5, 0, -196620, 20, 0, -196619, 16, 0, -196618, 16, 0, -196617, 16, 0, -196616, 16, 0, -196615, 16, 0, -262138, 16, 0, -262137, 18, 0, -262136, 18, 0, -262135, 16, 0, -262134, 16, 0, -262133, 16, 0, -262132, 16, 0, -262131, 25, 0, -262130, 26, 0, -262129, 26, 0, -262128, 26, 0, -262127, 26, 0, -262126, 25, 0, -262125, 16, 0, -262124, 16, 0, -131087, 16, 0, -131086, 5, 0, -131085, 5, 0, -131084, 16, 0, -131083, 22, 0, -131082, 20, 0, -131081, 16, 0, -131080, 16, 0, -131079, 16, 0, -196602, 16, 0, -196601, 18, 0, -196600, 18, 0, -196599, 16, 0, -196598, 16, 0, -196597, 16, 0, -196596, 16, 0, -196595, 25, 0, -196594, 26, 0, -196593, 26, 0, -196592, 26, 0, -196591, 26, 0, -196590, 25, 0, -196589, 16, 0, -196588, 16, 0, -65552, 12, 0, -65551, 16, 0, -65550, 16, 0, -65549, 16, 0, -65548, 16, 0, -65547, 16, 0, -65546, 16, 0, -65545, 16, 0, -65544, 16, 0, -65543, 16, 0, -131066, 16, 0, -131065, 16, 0, -131064, 16, 0, -131063, 16, 0, -131062, 16, 0, -131061, 16, 0, -131060, 16, 0, -131059, 25, 0, -131058, 25, 0, -131057, 25, 0, -131056, 25, 0, -131055, 25, 0, -131054, 25, 0, -131053, 6, 0, -131052, 16, 0, -16, 12, 0, -15, 16, 0, -14, 7, 0, -13, 16, 0, -12, 16, 0, -11, 16, 0, -10, 16, 0, -9, 16, 0, -8, 16, 0, -7, 16, 0, -65530, 16, 0, -65529, 16, 0, -65528, 16, 0, -65527, 16, 0, -65526, 16, 0, -65525, 16, 0, -65524, 16, 0, -65523, 7, 0, -65522, 16, 0, -65521, 16, 0, -65520, 16, 0, -65519, 16, 0, -65518, 16, 0, -65517, 16, 0, -65516, 6, 0, 65520, 12, 0, 65521, 16, 0, 65522, 16, 0, 65523, 16, 0, 65524, 16, 0, 65525, 16, 0, 65526, 16, 0, 65527, 16, 0, 65528, 16, 0, 65529, 16, 0, 6, 16, 0, 7, 16, 0, 8, 16, 0, 9, 16, 0, 10, 16, 0, 11, 16, 0, 12, 16, 0, 13, 16, 0, 14, 16, 0, 15, 16, 0, 16, 16, 0, 17, 6, 0, 18, 6, 0, 19, 6, 0, 20, 6, 0, 131056, 12, 0, 131057, 16, 0, 131058, 5, 0, 131059, 5, 0, 131060, 5, 0, 131061, 5, 0, 131062, 5, 0, 131063, 5, 0, 131064, 16, 0, 131065, 16, 0, 65542, 16, 0, 65543, 16, 0, 65544, 16, 0, 65545, 16, 0, 65546, 16, 0, 65547, 16, 0, 65548, 16, 0, 196592, 12, 0, 196593, 16, 0, 196594, 5, 0, 196595, 16, 0, 196596, 16, 0, 196597, 16, 0, 196598, 16, 0, 196599, 5, 0, 196600, 16, 0, 196601, 16, 0, 196602, 15, 0, 196603, 1, 0, 196604, 0, 0, 196605, 0, 0, 196606, 0, 0, 131078, 16, 0, 131079, 16, 0, 131080, 16, 0, 131081, 16, 0, 131082, 16, 0, 131083, 16, 0, 131084, 16, 0, 131085, 16, 0, 131086, 16, 0, 131087, 16, 0, 131088, 16, 0, 131089, 16, 0, 131090, 16, 0, 262128, 12, 0, 262129, 16, 0, 262130, 5, 0, 262131, 16, 0, 262132, 5, 0, 262133, 5, 0, 262134, 16, 0, 262135, 5, 0, 262136, 16, 0, 262137, 16, 0, 262138, 9, 0, 262139, 8, 0, 262140, 1, 0, 262141, 1, 0, 262142, 2, 0, 262143, 1, 0, 196608, 1, 0, 196609, 11, 0, 196614, 16, 0, 196615, 16, 0, 196616, 16, 0, 196617, 16, 0, 196618, 16, 0, 196619, 16, 0, 196620, 16, 0, 196621, 16, 0, 196622, 16, 0, 196623, 16, 0, 196624, 16, 0, 196625, 16, 0, 196626, 16, 0, 196627, 16, 0, 327664, 12, 0, 327665, 16, 0, 327666, 5, 0, 327667, 16, 0, 327668, 5, 0, 327669, 5, 0, 327670, 16, 0, 327671, 5, 0, 327672, 16, 0, 327673, 16, 0, 327674, 16, 0, 327675, 16, 0, 327676, 10, 0, 327677, 8, 0, 327678, 1, 0, 327679, 8, 0, 262144, 9, 0, 262145, 14, 0, 262150, 16, 0, 262151, 16, 0, 262152, 16, 0, 262153, 16, 0, 262154, 16, 0, 262155, 16, 0, 262156, 16, 0, 262157, 16, 0, 262158, 16, 0, 262159, 16, 0, 262160, 16, 0, 262161, 16, 0, 262162, 16, 0, 262163, 16, 0, 393200, 12, 0, 393201, 16, 0, 393202, 5, 0, 393203, 16, 0, 393204, 16, 0, 393205, 16, 0, 393206, 16, 0, 393207, 5, 0, 393208, 16, 0, 393209, 7, 0, 393210, 16, 0, 393211, 16, 0, 393212, 6, 0, 393213, 6, 0, 393214, 8, 0, 393215, 6, 0, 327680, 16, 0, 327681, 14, 0, 327686, 16, 0, 327687, 16, 0, 327688, 16, 0, 327689, 16, 0, 327690, 16, 0, 327691, 16, 0, 327692, 16, 0, 327693, 16, 0, 327694, 5, 0, 327695, 5, 0, 327696, 5, 0, 327697, 5, 0, 327698, 16, 0, 327699, 16, 0, 458736, 12, 0, 458737, 16, 0, 458738, 5, 0, 458739, 5, 0, 458740, 5, 0, 458741, 5, 0, 458742, 5, 0, 458743, 5, 0, 458744, 16, 0, 458745, 16, 0, 458746, 16, 0, 458747, 16, 0, 458748, 16, 0, 458749, 16, 0, 458750, 16, 0, 458751, 6, 0, 393216, 16, 0, 393217, 14, 0, 393222, 16, 0, 393223, 16, 0, 393224, 16, 0, 393225, 16, 0, 393226, 16, 0, 393227, 16, 0, 393228, 16, 0, 393229, 16, 0, 393230, 5, 0, 393231, 16, 0, 393232, 16, 0, 393233, 5, 0, 393234, 16, 0, 393235, 16, 0, 524272, 12, 0, 524273, 16, 0, 524274, 16, 0, 524275, 16, 0, 524276, 16, 0, 524277, 16, 0, 524278, 16, 0, 524279, 16, 0, 524280, 16, 0, 524281, 16, 0, 524282, 16, 0, 524283, 7, 0, 524284, 7, 0, 524285, 16, 0, 524286, 16, 0, 524287, 16, 0, 458752, 16, 0, 458753, 14, 0, 458758, 16, 0, 458759, 16, 0, 458760, 16, 0, 458761, 16, 0, 458762, 16, 0, 458763, 16, 0, 458764, 16, 0, 458765, 16, 0, 458766, 5, 0, 458767, 16, 0, 458768, 16, 0, 458769, 5, 0, 458770, 16, 0, 458771, 16, 0, 589808, 12, 0, 589809, 13, 0, 589810, 13, 0, 589811, 13, 0, 589812, 13, 0, 589813, 13, 0, 589814, 13, 0, 589815, 13, 0, 589816, 13, 0, 589817, 13, 0, 589818, 12, 0, 589819, 0, 0, 589820, 0, 0, 589821, 0, 0, 589822, 13, 0, 589823, 13, 0, 524288, 13, 0, 524289, 14, 0, 524294, 16, 0, 524295, 16, 0, 524296, 16, 0, 524297, 16, 0, 524298, 16, 0, 524299, 16, 0, 524300, 16, 0, 524301, 16, 0, 524302, 5, 0, 524303, 5, 0, 524304, 5, 0, 524305, 5, 0, 524306, 16, 0, 524307, 16, 0, 655349, 11, 0, 655350, 11, 0, 655351, 11, 0, 655352, 11, 0, 655353, 11, 0, 655354, 12, 0, 655355, 1, 0, 655356, 1, 0, 655357, 1, 0, 655358, 14, 0, 655359, 11, 0, 589830, 6, 0, 589831, 16, 0, 589832, 16, 0, 589833, 16, 0, 589834, 16, 0, 589835, 16, 0, 589836, 16, 0, 589837, 16, 0, 589838, 16, 0, 589839, 16, 0, 589840, 16, 0, 589841, 16, 0, 589842, 16, 0, 589843, 16, 0, 720885, 11, 0, 720886, 11, 0, 720887, 11, 0, 720888, 11, 0, 720895, 11, 0, 655366, 16, 0, 655367, 16, 0, 655368, 16, 0, 655369, 16, 0, 655370, 16, 0, 655371, 16, 0, 655372, 16, 0, 786421, 11, 0, 786422, 11, 0, 786423, 11, 0, 786424, 11, 0, 786425, 11, 0, 786431, 11, 0, 851957, 11, 0, 851958, 11, 0, 851959, 11, 0, 851960, 11, 0, 851961, 11, 0, 851962, 11, 0, 851963, 11, 0, 851964, 11, 0, 851965, 11, 0, 851966, 11, 0, 851967, 11, 0 )

[node name="ConveyorBelt" parent="." instance=ExtResource( 3 )]
position = Vector2( -40, -56 )
rotation = -1.5708

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="HUD" parent="CanvasLayer" instance=ExtResource( 5 )]

[node name="Camera2D" type="Camera2D" parent="."]
current = true

[node name="LargePackage" parent="." instance=ExtResource( 2 )]
position = Vector2( -88, 32 )
   [gd_scene load_steps=6 format=2]

[ext_resource path="res://Sprites/placeholder.png" type="Texture" id=1]
[ext_resource path="res://Packages/Package.gd" type="Script" id=2]
[ext_resource path="res://Sprites/circle.png" type="Texture" id=3]

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 8, 8 )

[sub_resource type="CircleShape2D" id=2]
radius = 8.0

[node name="LargePackage" type="KinematicBody2D" groups=["package"]]
z_index = 200
collision_layer = 2
collision_mask = 3
script = ExtResource( 2 )
push_force = 100.0
damping = 3.0

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.501961, 0.301961, 0.0862745, 1 )
scale = Vector2( 0.7, 1 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 3 )

[node name="FallArea" type="Area2D" parent="."]
collision_layer = 16
collision_mask = 16

[node name="CollisionShape2D" type="CollisionShape2D" parent="FallArea"]
shape = SubResource( 2 )

[node name="CPUParticles2D" type="CPUParticles2D" parent="."]
position = Vector2( 0, 2 )
z_index = -1
amount = 40
lifetime = 0.4
local_coords = false
texture = ExtResource( 3 )
emission_shape = 2
emission_rect_extents = Vector2( 6, 6 )
direction = Vector2( 0, -1 )
gravity = Vector2( 0, 5 )
initial_velocity = 10.0
angular_velocity = 94.12
scale_amount = 0.5
scale_amount_random = 1.0
color = Color( 1, 1, 1, 0.458824 )
     [gd_scene load_steps=7 format=2]

[ext_resource path="res://Sprites/placeholder.png" type="Texture" id=1]
[ext_resource path="res://Packages/Package.gd" type="Script" id=2]
[ext_resource path="res://Sprites/circle.png" type="Texture" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 4.0

[sub_resource type="CircleShape2D" id=2]
radius = 6.0

[sub_resource type="Gradient" id=3]
colors = PoolColorArray( 0.46875, 0.46875, 0.46875, 0.992593, 1, 1, 1, 0 )

[node name="NormalPackage" type="KinematicBody2D" groups=["package"]]
z_index = 200
collision_layer = 2
collision_mask = 3
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.501961, 0.301961, 0.0862745, 1 )
scale = Vector2( 0.5, 0.5 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="FallArea" type="Area2D" parent="."]
collision_layer = 16
collision_mask = 16

[node name="CollisionShape2D" type="CollisionShape2D" parent="FallArea"]
shape = SubResource( 2 )

[node name="CPUParticles2D" type="CPUParticles2D" parent="."]
position = Vector2( 0, 2 )
z_index = -1
amount = 40
lifetime = 0.5
local_coords = false
texture = ExtResource( 3 )
emission_shape = 1
emission_sphere_radius = 3.0
direction = Vector2( 0, -1 )
gravity = Vector2( 0, 5 )
initial_velocity = 4.0
scale_amount = 0.5
scale_amount_random = 1.0
color = Color( 1, 1, 1, 0.458824 )
color_ramp = SubResource( 3 )
          GDSC   )      1        ������������τ�   ���������Ӷ�   ������Ѷ   ��������׶��   �������׶���   ��������Ŷ��   �����������ń�   �������϶���   ���������Ҷ�   ������������������������Ӷ��   ����Ӷ��   ����������޶   ��Ķ   ��������������Ŷ   ��Ŷ   ��������������ض   �������Ŷ���   ����׶��   ������ζ   ϶��   �����ڶ�   �����Ķ�   �������Ѷ���   �������������Ҷ�   ���������������������Ŷ�   ����ڶ��   ��������������¶   ���������Ӷ�   ���������������Ŷ���   ������ڶ   �������������Ӷ�   ��������������¶   ����¶��   ������������������ض   �����ڶ�   �����Ӷ�   ����Ķ��   �������Ķ���   ����������ƶ   ����������������Զ��   ��������������Զ   �         @          n      
                     �?      ?      package                                                  "      #   	   *   
   /      0      9      =      >      G      M      N      W      [      \      c      u      v      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +      ,     -   
  .     /     0     1   3YY8;�  V�  Y8;�  V�  �  YY5;�  W�  Y5;�  W�  YY;�  �  PQY;�  �  YY0�	  P�
  V�  QV�  �  �
  YY0�  P�  V�  QV�  �  �  �  YY0�  P�  V�  QV�  �  �  YY0�  P�  QV�  �  �  &�  T�  �  T�  T�  T�  (�  �  �  �  T�  �  T�  PQ�  �  �  &�X  P�  T�  PQQ�  �  T�  T�  PQ�  V�  �  PQYY0�  P�  QV�  &�  V.Y�  �  �  �  �  �  ;�  �  �  �  �  P�  Q�  �  &�  PQ�  V�  ;�   �!  P�  Q�  �?  P�   R�   T�"  Q�  �  �  T�#  P�   T�"  Q�  �  ;�$  �   T�%  �  &�$  T�&  P�	  QV�  �$  T�  �  �  YY0�'  PQV�  �  �
  �  Y0�(  PQV�  �  �  Y`              GDSC            F      ���ӄ�   �������޶���   ���׶���   ���ׄ�   ���������������Ŷ���   ����׶��   ����Ӷ��   ������Ҷ   �������ض���   Զ��   ���������������������Ŷ�   ���������Ҷ�   ������������������������Ӷ��      A             conveyor_belt_apply_force                                                    *   	   4   
   =      D      3YY8;�  V�  YY5;�  W�  YY0�  P�  QV�  ;�  �  P�  R�  QT�  P�  Q�  )�	  �  T�
  PQV�  &�	  T�  P�  QV�  �	  T�  P�  QY`               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/arrow.png" type="Texture" id=1]
[ext_resource path="res://Parts/ConveyorBelt.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[node name="ConveyorBelt" type="Node2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.231373, 0.623529, 0.882353, 1 )
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 1 )
              GDSC   	      	   ,      ���ӄ�   ������������������Ķ   �������ׄ�������������Ҷ   ���϶���   ���������Ӷ�   ����������ƶ   �����ڶ�   ����ڶ��   ����Ӷ��             package                                                  "      *   	   3YY8;�  V�  YY0�  P�  QV�  �  T�  PQ�  &�  T�  P�  QV�  �  T�  T�  �  Y`    [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/placeholder.png" type="Texture" id=1]
[ext_resource path="res://Parts/PackageOutput.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 16 )

[node name="PackageOutput" type="Node2D"]
script = ExtResource( 2 )

[node name="Area2D" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.705882, 0.0705882, 0.458824, 1 )
scale = Vector2( 2, 2 )
texture = ExtResource( 1 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
          GDSC   8      \   y     ������������τ�   ���������ڶ�   ��������ƶ��   ��������׶��   �������ׄ�   ��������׶��   �������׶���   ����޶��   ����޶��   ����������Ӷ   �������������Ӷ�   �������϶���   ������Ҷ   ����¶��   �����ڶ�   �����Ķ�   ������������Ѷ��   ζ��   ���ƶ���   ����׶��   ������������������������Ӷ��   ����Ӷ��   ������������Ӷ��   ��������󶶶   ϶��   �����������Ķ���   �������Ķ���   ����¶��   ����������������Ҷ��   �������Ŷ���   ���������������������Ҷ�   ������������¶��   ������Ķ   ������������������������ض��   ��������������ض   ���������Ҷ�   �������ض���   ����Ӷ��   ���������������������Ŷ�   ���������Ҷ�   ����������������Զ��   ��������������Զ   Զ��   ����������޶   �������ض���   ����Ӷ��   ������Ӷ   ����Ӷ��   ���϶���   ��������������Ŷ   ����ڶ��   ��������������¶   ���������ڶ�   ���������������Ŷ���   �������������Ӷ�    ���������������������������Ҷ���      A     �A         �?      ?      player_move_left      player_move_right         player_move_up        player_move_down      quick_restart     �������?  �������?      player_grab              player_start_grab         player_end_grab       player_shoot      player_push    ,                    default       player_grab_pos                                                         "      )   	   0   
   1      8      =      >      D      J      K      Z      i      j      s      w      x      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &     '     (   !  )   "  *   )  +   8  ,   I  -   J  .   S  /   Y  0   f  1   q  2   z  3   �  4   �  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G     H     I   	  J     K     L      M   7  N   =  O   >  P   G  Q   H  R   O  S   P  T   V  U   W  V   ^  W   i  X   j  Y   k  Z   q  [   w  \   3YY8;�  V�  Y8;�  V�  �  YY5;�  W�  Y5;�  W�  Y5;�  W�  Y5;�	  W�
  YY;�  �  PQY;�  �  YY0�  PQV�  �  T�  YY0�  P�  R�  V�  R�  V�  QV�  .�  P�  P�  �  �  QQYY0�  P�  V�  QV�  �  �  YY0�  P�  V�  QX�  V�  �  �  T�  �  .�  P�  P�  T�  Q�  R�  P�  T�  Q�  Q�  T�  YY0�  PQX�  V�  ;�  �  PQ�  &�  T�  P�  QV�  T�  �  �  &�  T�  P�  QV�  T�  �  �  &�  T�  P�  QV�  T�  �  �  &�  T�  P�  QV�  T�  �  �  .�  YY0�  P�  QV�  &�  T�  P�	  QV�  �  T�  PQ�  �  ;�   P�!  PQ�"  QT�#  PQ�  �  T�$  �   �  T�  �
  �  �  ;�  �  PQ�  &�  T�  �  V�	  T�%  T�  �  �  '�  T�  	�  V�	  T�%  T�  �  �  �  &�  T�  P�  QV�  &�  �  V�  &�X  P�  T�&  PQQ�  V�  �  �  T�&  PQL�  M�  &�  T�'  P�  QV�  �  T�(  PQ�  (V�  &�  T�'  P�  QV�  �  T�)  PQ�  �  �  �  �  &�  T�  P�  QV�  &�  �  V�  &�  T�'  P�  QV�  �  T�)  PQ�  �  �  �  )�*  �  T�&  PQV�  &�*  T�'  P�  QV�  �*  T�+  P�   Q�  (V�  �  �   �  �  �  T�$  �   �  �  �  T�,  �   T�-  PQ�  �  T�.  �  �  �  T�/  �  �  �  T�0  P�  QY�  &�  �  V�  &�  T�'  P�  QV�  �  T�1  P�"  �   �  T�  Q�  �  &�X  P�  T�&  PQQ�  �  T�2  T�3  PQ�  V�  �  T�4  PQYY0�5  P�  V�  QV�  �  ;�  �  PQ�  �  �  �  �  �  �  �  �6  P�  Q�  �  �  P�  R�  R�  QYYY0�7  PQV�  �  T�.  �  Y`       [gd_scene load_steps=19 format=2]

[ext_resource path="res://Player/Player.gd" type="Script" id=1]
[ext_resource path="res://Sprites/circle.png" type="Texture" id=2]
[ext_resource path="res://Player/player.png" type="Texture" id=3]
[ext_resource path="res://Sprites/slash.png" type="Texture" id=4]

[sub_resource type="CapsuleShape2D" id=16]
radius = 2.0
height = 4.0

[sub_resource type="CircleShape2D" id=15]
radius = 4.0

[sub_resource type="CircleShape2D" id=2]
radius = 8.06226

[sub_resource type="AtlasTexture" id=12]
atlas = ExtResource( 3 )
region = Rect2( 0, 0, 8, 8 )

[sub_resource type="AtlasTexture" id=13]
atlas = ExtResource( 3 )
region = Rect2( 8, 0, 8, 8 )

[sub_resource type="SpriteFrames" id=11]
animations = [ {
"frames": [ SubResource( 12 ), SubResource( 13 ) ],
"loop": true,
"name": "default",
"speed": 8.0
} ]

[sub_resource type="Gradient" id=17]
colors = PoolColorArray( 0.508209, 0.644953, 0.714844, 1, 0.392609, 0.533472, 0.605469, 0 )

[sub_resource type="AtlasTexture" id=23]
atlas = ExtResource( 4 )
region = Rect2( 0, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=24]
atlas = ExtResource( 4 )
region = Rect2( 16, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=25]
atlas = ExtResource( 4 )
region = Rect2( 32, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=26]
atlas = ExtResource( 4 )
region = Rect2( 48, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=27]
atlas = ExtResource( 4 )
region = Rect2( 64, 0, 16, 16 )

[sub_resource type="AtlasTexture" id=28]
atlas = ExtResource( 4 )
region = Rect2( 80, 0, 16, 16 )

[sub_resource type="SpriteFrames" id=22]
animations = [ {
"frames": [ SubResource( 23 ), SubResource( 24 ), SubResource( 25 ), SubResource( 26 ), SubResource( 27 ), SubResource( 28 ) ],
"loop": false,
"name": "default",
"speed": 32.0
} ]

[node name="Player" type="Node2D"]

[node name="KinematicBody2D" type="KinematicBody2D" parent="."]
collision_layer = 4
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="KinematicBody2D"]
rotation = 1.5708
shape = SubResource( 16 )

[node name="FallArea" type="Area2D" parent="KinematicBody2D"]
collision_layer = 16
collision_mask = 16

[node name="CollisionShape2D" type="CollisionShape2D" parent="KinematicBody2D/FallArea"]
shape = SubResource( 15 )

[node name="ItemArea2D" type="Area2D" parent="KinematicBody2D"]
position = Vector2( 15, 0 )
collision_layer = 0
collision_mask = 11

[node name="CollisionShape2D" type="CollisionShape2D" parent="KinematicBody2D/ItemArea2D"]
position = Vector2( -2, 0 )
shape = SubResource( 2 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="KinematicBody2D"]
z_index = 100
frames = SubResource( 11 )
playing = true

[node name="CPUParticles2D" type="CPUParticles2D" parent="KinematicBody2D"]
local_coords = false
texture = ExtResource( 2 )
emission_shape = 1
emission_sphere_radius = 1.0
direction = Vector2( 0, -1 )
spread = 10.0
gravity = Vector2( 0, 5 )
initial_velocity = 5.0
scale_amount = 0.9
scale_amount_random = 0.95
color_ramp = SubResource( 17 )

[node name="Slash" type="AnimatedSprite" parent="KinematicBody2D"]
visible = false
z_index = 120
frames = SubResource( 22 )

[connection signal="animation_finished" from="KinematicBody2D/Slash" to="KinematicBody2D" method="_on_Slash_animation_finished"]
              GDST                �   WEBPRIFF�   WEBPVP8Lt   /�?��m�*�r�����(�mXX�����p� �)�d�a�X`�C�&�6>O]l"IV-i������/�s��G�?�J������Xm��D{�s��I2O�ɑ_��*���        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-e0de26b393baa489289b0e229c9561a8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Player/player.png"
dest_files=[ "res://.import/player.png-e0de26b393baa489289b0e229c9561a8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
               GDST                P   WEBPRIFFD   WEBPVP8L7   /�0��?��pm�H(���P>�p_y�0D�?���� �G�/2�T!EDV��
     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/arrow.png"
dest_files=[ "res://.import/arrow.png-5405b2f4a5090f6ebaea005362d7d52b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
 GDST                .   WEBPRIFF"   WEBPVP8L   /� 0��=�����CD��        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/circle.png-df010cbefcc6dbdc6528d2564633ee87.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/circle.png"
dest_files=[ "res://.import/circle.png-df010cbefcc6dbdc6528d2564633ee87.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
              GDST                `   WEBPRIFFT   WEBPVP8LG   /� H�g�e�@�?�NH���?~X�bH�$�1����� {5�D��`��ڎI9��>�c�?N�H9     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/placeholder.png-7627034f1270dc506da91a2e2c9ef774.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/placeholder.png"
dest_files=[ "res://.import/placeholder.png-7627034f1270dc506da91a2e2c9ef774.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
               GDST`                �   WEBPRIFF�   WEBPVP8L�   /_�0��=��pصm+un��b����@?O�%������	(���UZe��
�䕻~�!�̐�q����������jOKr�LJ�5U��(z��U.:��M��%����
m^���wt_8���Tuo�4��"g�Axz���Y��dV��+b�/��r�6�+ozi�3�� <�R
      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/slash.png-1fb5aa565c27409338cbbf666f9e4cb5.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/slash.png"
dest_files=[ "res://.import/slash.png-1fb5aa565c27409338cbbf666f9e4cb5.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
 GDST@   `             z  WEBPRIFFn  WEBPVP8La  /?��6�m%�[�H�!&�.z�k��ZXŶ�d��k�7�(F
í�;�0����KO\T�Y�!��L�a$�KA����������¶͢,��1 ��7V�Ӯ=����R�M,�<��V�]��}t�N��T;נ�moض�����6�p#[��_����"��@�Ը���!d�yDu�V"?A_Jʔ�TT�q�����<�P�T�&=�����<C)O�"�����P�)RP>[ӝ�ӝ�R��Z[>"釤S��Ss���)3w��.��¿�o=���S�S]N�c4L|M���3�HX�b<�	a����<U� 4nhg�+D	 �A2Mp�'j�Y�`���)`�>OЏ�U����X�S�?X'J�L)%J�nMp �C�&"z�@�4%H����~���l5H���������C�RP��@��.%�u�m
�}�G�kSg1�����g}lΦ��� g_c��������ȶ%9-�%YP�����b��8�o���7��t Z�p�"83˘��=�e����MN���SJ]�1R)�l��Mr�j:[o��@J�V���5�ޚjJD�δX�h%� �(L�m����*���Ȓ�:��+�mZ�-�U�c8Fጚ̤Y�糼JQJ��B��%b3����$؟:�˼��m(�mY����6G�h��EhIu��f�\�U��KQJ�{� �����yJ�������N�ɣ�-fB����~m�}�C��ιv�f���uB�֡���;��.��h�	Qn՜�ݠ���,1��3F�����Qgi��Tsk�=�[�/'�)�2�I�F;�����}	N�)��Ed@;�w�u/&f&e�?S�B���i*o���>>m�ֈt��K���ur-�
��>&W�g��!S�k�!6K�fM%�W𩷷7�R�CQU��\��l���%�
�4!�R��p����Z�$`L���������C�d��	�?�����w0q�1���k���O]m�K�g�����~^>.�3����x�3�wڶ[�n7��@��-@��m���Y�a�1F���M��=�M�0�����G�~�f��C@$�$<��9gw�[]�+>��x*8ű�NP�;r�ʀ�v��	x�6�
c���3YH6���P\QebP����pXB��8@J�����0��R�c +�
���D�2�d� ?`�y�d�ef�7ç�O�r0�D���o���W5= ������J:;��K�]C�����Z/oo�Z������y�%��\�簑j.̜Qd�: /�����`8�t��=�ٕ�gGjH8�YN���f��1���D쎥n~�1��O;s��;��q��C�\��&�܂��/�
1��w'^*gܜn��r�x
�qL�R
�@�'@�h/����'���w�yL�N'���~�RJ5ju(��:b�T��6"KUgP��LM��C�u�I�9�ӵ�D2�7�ONE<����I�b���"��TE�(�~����FN~}�U�s��JE�i۶�¥�K�'��ɧn����L�}��qҶ9�����s9�j���x<&eEΞ�'��.�����w@��,��M?�?�)�	��D�D�(��VLRJ���Q=A)���;           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tileset_1.png-03765ac9f4737b122200b81207f1457f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/tileset_1.png"
dest_files=[ "res://.import/tileset_1.png-03765ac9f4737b122200b81207f1457f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
     GDSC         	   C      ������ڶ   ����Ӷ��   ����Ӷ��   ���Ӷ���   ���Ӷ���   �������Ŷ���   ����׶��   ���¶���   �����ڶ�   ����ڶ��   ��������������¶      Score:        Time:     {�G�z�?                   
                        +      A   	   3YY5;�  W�  Y5;�  W�  YY0�  P�  QV�  �  T�  �>  P�  P�  T�	  T�  QQ�  �  T�  �  �>  P�  P�  T�	  T�
  PQR�  QQY`         [gd_scene load_steps=3 format=2]

[ext_resource path="res://ui_theme.tres" type="Theme" id=1]
[ext_resource path="res://UI/HUD.gd" type="Script" id=2]

[node name="HUD" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
theme = ExtResource( 1 )
script = ExtResource( 2 )

[node name="Score" type="Label" parent="."]
margin_left = 5.0
margin_right = 90.0
margin_bottom = 14.0
custom_colors/font_color = Color( 0.823529, 0.223529, 0.109804, 1 )
custom_colors/font_color_shadow = Color( 0.333333, 0.180392, 0.254902, 1 )
text = "score: 123123"
uppercase = true

[node name="Time" type="Label" parent="."]
margin_left = 4.0
margin_top = 13.0
margin_right = 89.0
margin_bottom = 27.0
custom_colors/font_color = Color( 0.823529, 0.223529, 0.109804, 1 )
custom_colors/font_color_shadow = Color( 0.333333, 0.180392, 0.254902, 1 )
text = "TIme: 123"
uppercase = true
  [gd_resource type="TileSet" load_steps=15 format=2]

[ext_resource path="res://Sprites/tileset_1.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=14]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=9]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=10]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=11]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=12]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=13]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[sub_resource type="ConvexPolygonShape2D" id=8]
points = PoolVector2Array( 8, 8, 0, 8, 0, 0, 8, 0 )

[resource]
0/name = "tileset_1.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 8, 0, 8, 8 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 2 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 101
1/name = "tileset_1.png 1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 16, 0, 8, 8 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape = SubResource( 3 )
1/shape_one_way = false
1/shape_one_way_margin = 1.0
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
1/z_index = 101
2/name = "tileset_1.png 2"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 24, 0, 8, 8 )
2/tile_mode = 0
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shape_offset = Vector2( 0, 0 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
2/shape = SubResource( 4 )
2/shape_one_way = false
2/shape_one_way_margin = 1.0
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
2/z_index = 101
3/name = "tileset_1.png 3"
3/texture = ExtResource( 1 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 32, 0, 8, 8 )
3/tile_mode = 0
3/occluder_offset = Vector2( 0, 0 )
3/navigation_offset = Vector2( 0, 0 )
3/shape_offset = Vector2( 0, 0 )
3/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
3/shape = SubResource( 5 )
3/shape_one_way = false
3/shape_one_way_margin = 1.0
3/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
3/z_index = 0
8/name = "tileset_1.png 8"
8/texture = ExtResource( 1 )
8/tex_offset = Vector2( 0, 0 )
8/modulate = Color( 1, 1, 1, 1 )
8/region = Rect2( 40, 0, 8, 8 )
8/tile_mode = 0
8/occluder_offset = Vector2( 0, 0 )
8/navigation_offset = Vector2( 0, 0 )
8/shape_offset = Vector2( 0, 0 )
8/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
8/shape = SubResource( 6 )
8/shape_one_way = false
8/shape_one_way_margin = 1.0
8/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
8/z_index = 0
9/name = "tileset_1.png 9"
9/texture = ExtResource( 1 )
9/tex_offset = Vector2( 0, 0 )
9/modulate = Color( 1, 1, 1, 1 )
9/region = Rect2( 40, 8, 8, 8 )
9/tile_mode = 0
9/occluder_offset = Vector2( 0, 0 )
9/navigation_offset = Vector2( 0, 0 )
9/shape_offset = Vector2( 0, 0 )
9/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
9/shape = SubResource( 8 )
9/shape_one_way = false
9/shape_one_way_margin = 1.0
9/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 8 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
9/z_index = 0
10/name = "tileset_1.png 10"
10/texture = ExtResource( 1 )
10/tex_offset = Vector2( 0, 0 )
10/modulate = Color( 1, 1, 1, 1 )
10/region = Rect2( 32, 8, 8, 8 )
10/tile_mode = 0
10/occluder_offset = Vector2( 0, 0 )
10/navigation_offset = Vector2( 0, 0 )
10/shape_offset = Vector2( 0, 0 )
10/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
10/shape = SubResource( 7 )
10/shape_one_way = false
10/shape_one_way_margin = 1.0
10/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
10/z_index = 0
15/name = "tileset_1.png 15"
15/texture = ExtResource( 1 )
15/tex_offset = Vector2( 0, 0 )
15/modulate = Color( 1, 1, 1, 1 )
15/region = Rect2( 56, 88, 8, 8 )
15/tile_mode = 0
15/occluder_offset = Vector2( 0, 0 )
15/navigation_offset = Vector2( 0, 0 )
15/shape_offset = Vector2( 0, 0 )
15/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
15/shape = SubResource( 14 )
15/shape_one_way = false
15/shape_one_way_margin = 1.0
15/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 14 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
15/z_index = 0
16/name = "tileset_1.png 16"
16/texture = ExtResource( 1 )
16/tex_offset = Vector2( 0, 0 )
16/modulate = Color( 1, 1, 1, 1 )
16/region = Rect2( 48, 0, 8, 8 )
16/tile_mode = 0
16/occluder_offset = Vector2( 0, 0 )
16/navigation_offset = Vector2( 0, 0 )
16/shape_offset = Vector2( 0, 0 )
16/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
16/shape = SubResource( 9 )
16/shape_one_way = false
16/shape_one_way_margin = 1.0
16/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 9 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
16/z_index = 0
17/name = "tileset_1.png 17"
17/texture = ExtResource( 1 )
17/tex_offset = Vector2( 0, 0 )
17/modulate = Color( 1, 1, 1, 1 )
17/region = Rect2( 8, 8, 8, 8 )
17/tile_mode = 0
17/occluder_offset = Vector2( 0, 0 )
17/navigation_offset = Vector2( 0, 0 )
17/shape_offset = Vector2( 0, 0 )
17/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
17/shape = SubResource( 10 )
17/shape_one_way = false
17/shape_one_way_margin = 1.0
17/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 10 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
17/z_index = 0
18/name = "tileset_1.png 18"
18/texture = ExtResource( 1 )
18/tex_offset = Vector2( 0, 0 )
18/modulate = Color( 1, 1, 1, 1 )
18/region = Rect2( 48, 24, 8, 8 )
18/tile_mode = 0
18/occluder_offset = Vector2( 0, 0 )
18/navigation_offset = Vector2( 0, 0 )
18/shape_offset = Vector2( 0, 0 )
18/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
18/shape = SubResource( 11 )
18/shape_one_way = false
18/shape_one_way_margin = 1.0
18/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 11 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
18/z_index = 0
19/name = "tileset_1.png 19"
19/texture = ExtResource( 1 )
19/tex_offset = Vector2( 0, 0 )
19/modulate = Color( 1, 1, 1, 1 )
19/region = Rect2( 40, 32, 8, 8 )
19/tile_mode = 0
19/occluder_offset = Vector2( 0, 0 )
19/navigation_offset = Vector2( 0, 0 )
19/shape_offset = Vector2( 0, 0 )
19/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
19/shape = SubResource( 12 )
19/shape_one_way = false
19/shape_one_way_margin = 1.0
19/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 12 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
19/z_index = 0
20/name = "tileset_1.png 20"
20/texture = ExtResource( 1 )
20/tex_offset = Vector2( 0, 0 )
20/modulate = Color( 1, 1, 1, 1 )
20/region = Rect2( 40, 40, 8, 8 )
20/tile_mode = 0
20/occluder_offset = Vector2( 0, 0 )
20/navigation_offset = Vector2( 0, 0 )
20/shape_offset = Vector2( 0, 0 )
20/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
20/shape = SubResource( 13 )
20/shape_one_way = false
20/shape_one_way_margin = 1.0
20/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 13 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
20/z_index = 0
       [gd_resource type="Theme" load_steps=2 format=2]

[ext_resource path="res://Fonts/regular.tres" type="DynamicFont" id=1]

[resource]
Label/fonts/font = ExtResource( 1 )
       [remap]

path="res://Enemy.gdc"
[remap]

path="res://Global.gdc"
               [remap]

path="res://Levels/Level.gdc"
         [remap]

path="res://Packages/Package.gdc"
     [remap]

path="res://Parts/ConveyorBelt.gdc"
   [remap]

path="res://Parts/PackageOutput.gdc"
  [remap]

path="res://Player/Player.gdc"
        [remap]

path="res://UI/HUD.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name      
   ludum-dare     application/run/main_scene$         res://Levels/TestLevel.tscn    application/config/icon         res://icon.png     autoload/Global         *res://Global.tscn     display/window/size/width      �     display/window/size/height           display/window/size/test_width      �     display/window/size/test_height      8  !   display/mouse_cursor/custom_image          res://Sprites/cursor.png)   display/mouse_cursor/custom_image_hotspot        �A  �A   display/window/stretch/mode         viewport   display/window/stretch/aspect         keep_height    importer_defaults/texture�              compress/bptc_ldr                compress/hdr_mode                compress/lossy_quality    ffffff�?      compress/mode                compress/normal_map           	   detect_3d                flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat          
   flags/srgb              process/HDR_as_SRGB              process/fix_alpha_border            process/invert_color             process/normal_map_invert_y              process/premult_alpha             
   size_limit               stream            	   svg/scale        �?   input/player_move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/player_move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/player_move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/player_move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/player_shoot              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   X      physical_scancode             unicode           echo          script         input/player_dash�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script         input/player_grab�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/quick_restart�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   R      physical_scancode             unicode           echo          script            deadzone      ?)   physics/common/enable_pause_aware_picking            physics/2d/default_gravity          !   physics/2d/default_gravity_vector              $   rendering/quality/driver/driver_name         GLES2   (   rendering/2d/snapping/use_gpu_pixel_snap         %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      ���=���=���=  �?)   rendering/environment/default_environment          res://default_env.tres                 