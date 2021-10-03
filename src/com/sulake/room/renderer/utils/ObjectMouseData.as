package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1628:String = "";
      
      private var var_146:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1628 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_146 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1628;
      }
      
      public function get objectId() : String
      {
         return var_146;
      }
   }
}
