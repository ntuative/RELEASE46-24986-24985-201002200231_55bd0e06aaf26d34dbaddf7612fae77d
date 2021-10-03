package com.sulake.habbo.room.object.visualization.room.utils
{
   import flash.display.BitmapData;
   
   public class PlaneBitmapData
   {
       
      
      private var _bitmap:BitmapData = null;
      
      private var var_1400:int = 0;
      
      public function PlaneBitmapData(param1:BitmapData, param2:int)
      {
         super();
         _bitmap = param1;
         var_1400 = param2;
      }
      
      public function dispose() : void
      {
         _bitmap = null;
      }
      
      public function get timeStamp() : int
      {
         return var_1400;
      }
      
      public function get bitmap() : BitmapData
      {
         return _bitmap;
      }
   }
}
