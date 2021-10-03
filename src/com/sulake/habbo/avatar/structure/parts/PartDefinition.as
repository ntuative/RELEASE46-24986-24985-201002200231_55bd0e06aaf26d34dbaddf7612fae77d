package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1529:int = -1;
      
      private var var_1301:Boolean;
      
      private var var_1302:String;
      
      private var var_2126:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2126 = String(param1["set-type"]);
         var_1302 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1301 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1529 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1302;
      }
      
      public function get staticId() : int
      {
         return var_1529;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1529 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1301;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1301 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1302 = param1;
      }
      
      public function get setType() : String
      {
         return var_2126;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
