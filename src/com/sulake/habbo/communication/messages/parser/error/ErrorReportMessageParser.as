package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1342:int;
      
      private var var_1109:int;
      
      private var var_1341:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1342;
      }
      
      public function flush() : Boolean
      {
         var_1109 = 0;
         var_1342 = 0;
         var_1341 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1109;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1342 = param1.readInteger();
         var_1109 = param1.readInteger();
         var_1341 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1341;
      }
   }
}
