package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_945:Boolean;
      
      private var var_946:Boolean;
      
      private var var_947:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_945;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_946;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_947 = param1.readBoolean();
         var_946 = param1.readBoolean();
         var_945 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_947;
      }
      
      public function flush() : Boolean
      {
         var_947 = false;
         var_946 = false;
         var_945 = false;
         return true;
      }
   }
}
