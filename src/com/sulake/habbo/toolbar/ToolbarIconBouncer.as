package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1875:Number;
      
      private var var_555:Number = 0;
      
      private var var_1876:Number;
      
      private var var_556:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1875 = param1;
         var_1876 = param2;
      }
      
      public function update() : void
      {
         var_556 += var_1876;
         var_555 += var_556;
         if(var_555 > 0)
         {
            var_555 = 0;
            var_556 = var_1875 * -1 * var_556;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_556 = param1;
         var_555 = 0;
      }
      
      public function get location() : Number
      {
         return var_555;
      }
   }
}
