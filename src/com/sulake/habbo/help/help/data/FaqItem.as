package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1353:int;
      
      private var var_1352:String;
      
      private var var_1969:String;
      
      private var _index:int;
      
      private var var_1970:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1353 = param1;
         var_1969 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1352;
      }
      
      public function get questionId() : int
      {
         return var_1353;
      }
      
      public function get questionText() : String
      {
         return var_1969;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1352 = param1;
         var_1970 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_1970;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
