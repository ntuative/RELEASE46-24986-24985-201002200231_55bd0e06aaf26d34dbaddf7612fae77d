package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1092:int = 31;
      
      private static const const_1033:int = 32;
      
      private static const const_493:int = 30;
      
      private static const const_761:int = 20;
      
      private static const const_492:int = 10;
       
      
      private var var_608:Boolean = false;
      
      private var var_232:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_232 = new Array();
         super();
         super.setAnimation(const_493);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_608 = true;
            var_232 = new Array();
            var_232.push(const_1092);
            var_232.push(const_1033);
            return;
         }
         if(param1 > 0 && param1 <= const_492)
         {
            if(var_608)
            {
               var_608 = false;
               var_232 = new Array();
               if(_direction == 2)
               {
                  var_232.push(const_761 + 5 - param1);
                  var_232.push(const_492 + 5 - param1);
               }
               else
               {
                  var_232.push(const_761 + param1);
                  var_232.push(const_492 + param1);
               }
               var_232.push(const_493);
               return;
            }
            super.setAnimation(const_493);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
