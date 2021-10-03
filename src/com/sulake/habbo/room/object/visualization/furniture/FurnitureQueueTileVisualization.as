package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1068:int = 1;
      
      private static const const_1033:int = 3;
      
      private static const const_1069:int = 2;
      
      private static const const_1070:int = 15;
       
      
      private var var_805:int;
      
      private var var_232:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_232 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1069)
         {
            var_232 = new Array();
            var_232.push(const_1068);
            var_805 = const_1070;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_805 > 0)
         {
            --var_805;
         }
         if(var_805 == 0)
         {
            if(false)
            {
               super.setAnimation(var_232.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
