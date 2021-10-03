package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1963:Boolean = false;
      
      private var var_1967:int = 0;
      
      private var var_1964:int = 0;
      
      private var var_1965:int = 0;
      
      private var var_1551:int = 0;
      
      private var var_1966:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1551 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1967;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1963;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1963 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1967 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1964 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1551;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1965 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1964;
      }
      
      public function get pixelBalance() : int
      {
         return var_1965;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1966 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1966;
      }
   }
}
