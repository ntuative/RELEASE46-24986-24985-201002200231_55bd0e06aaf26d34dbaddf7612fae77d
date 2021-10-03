package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1964:int = 0;
      
      private var var_1996:int = 0;
      
      private var var_1995:int = 0;
      
      private var var_1966:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1996;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1996 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1964 = param1;
      }
      
      public function get credits() : int
      {
         return var_1995;
      }
      
      public function get clubDays() : int
      {
         return var_1964;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1966 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1995 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1966;
      }
   }
}
