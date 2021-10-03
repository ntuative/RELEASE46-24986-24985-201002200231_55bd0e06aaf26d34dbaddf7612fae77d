package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_411:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_433:int = 0;
      
      public static const const_968:int = 2;
      
      public static const const_889:int = 1;
      
      public static const const_672:Boolean = false;
      
      public static const const_683:String = "";
      
      public static const const_399:int = 0;
      
      public static const const_420:int = 0;
      
      public static const const_472:int = 0;
       
      
      private var var_1804:int = 0;
      
      private var var_1762:String = "";
      
      private var var_1564:int = 0;
      
      private var var_1806:int = 0;
      
      private var var_1802:Number = 0;
      
      private var var_1805:int = 255;
      
      private var var_1803:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1804;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1564 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1802;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1806 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1804 = param1;
      }
      
      public function get tag() : String
      {
         return var_1762;
      }
      
      public function get alpha() : int
      {
         return var_1805;
      }
      
      public function get ink() : int
      {
         return var_1564;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1802 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1806;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1803 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1803;
      }
      
      public function set tag(param1:String) : void
      {
         var_1762 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1805 = param1;
      }
   }
}
