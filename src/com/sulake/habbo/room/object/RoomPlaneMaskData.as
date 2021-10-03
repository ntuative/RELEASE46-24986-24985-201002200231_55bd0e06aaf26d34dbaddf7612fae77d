package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1941:Number = 0;
      
      private var var_1944:Number = 0;
      
      private var var_1943:Number = 0;
      
      private var var_1942:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1944 = param1;
         var_1943 = param2;
         var_1941 = param3;
         var_1942 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1944;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1941;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1943;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1942;
      }
   }
}
