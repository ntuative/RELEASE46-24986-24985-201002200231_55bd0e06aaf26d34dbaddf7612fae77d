package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_49:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1895:Number = -1;
      
      private var var_791:IGraphicAsset = null;
      
      private var var_1893:Number = 1;
      
      private var var_1894:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1895 = param2;
         _normalMaxX = param3;
         var_1894 = param4;
         var_1893 = param5;
         var_791 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1893;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1895;
      }
      
      public function get normalMinY() : Number
      {
         return var_1894;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_791;
      }
      
      public function dispose() : void
      {
         var_791 = null;
      }
   }
}
