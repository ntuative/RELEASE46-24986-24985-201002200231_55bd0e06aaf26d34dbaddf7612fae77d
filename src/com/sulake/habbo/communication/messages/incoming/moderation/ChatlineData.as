package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1421:String;
      
      private var var_1683:int;
      
      private var var_1682:int;
      
      private var var_1681:int;
      
      private var var_1680:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1683 = param1.readInteger();
         var_1681 = param1.readInteger();
         var_1682 = param1.readInteger();
         var_1680 = param1.readString();
         var_1421 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1421;
      }
      
      public function get hour() : int
      {
         return var_1683;
      }
      
      public function get minute() : int
      {
         return var_1681;
      }
      
      public function get chatterName() : String
      {
         return var_1680;
      }
      
      public function get chatterId() : int
      {
         return var_1682;
      }
   }
}
