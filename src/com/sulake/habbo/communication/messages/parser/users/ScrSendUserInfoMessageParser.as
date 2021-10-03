package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1737:int;
      
      private var var_1179:String;
      
      private var var_1738:int;
      
      private var var_1740:int;
      
      private var var_1736:int;
      
      private var var_1739:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1179;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1739;
      }
      
      public function get responseType() : int
      {
         return var_1740;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1738;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1179 = param1.readString();
         var_1738 = param1.readInteger();
         var_1737 = param1.readInteger();
         var_1736 = param1.readInteger();
         var_1740 = param1.readInteger();
         var_1739 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1737;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1736;
      }
   }
}
