package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2157:int;
      
      private var var_2155:String;
      
      private var var_1513:IActionDefinition;
      
      private var var_2158:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2156:String;
      
      private var var_2154:String;
      
      private var var_1767:Boolean;
      
      private var var_2159:ColorTransform;
      
      private var var_1840:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2155 = param1;
         var_2156 = param2;
         var_2157 = param3;
         _color = param4;
         _frames = param5;
         var_1513 = param6;
         var_1767 = param7;
         var_1840 = param8;
         var_2154 = param9;
         var_2158 = param10;
         var_2159 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1767;
      }
      
      public function get partType() : String
      {
         return var_2156;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1840;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2158;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2157;
      }
      
      public function get flippedPartType() : String
      {
         return var_2154;
      }
      
      public function get bodyPartId() : String
      {
         return var_2155;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1513;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2159;
      }
   }
}
