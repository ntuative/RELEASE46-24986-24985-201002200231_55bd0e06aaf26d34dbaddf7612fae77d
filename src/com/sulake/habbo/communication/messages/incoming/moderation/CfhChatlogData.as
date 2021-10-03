package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1026:int;
      
      private var var_1929:int;
      
      private var var_1480:int;
      
      private var var_110:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1480 = param1.readInteger();
         var_1929 = param1.readInteger();
         var_1026 = param1.readInteger();
         var_110 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1480);
      }
      
      public function get reportedUserId() : int
      {
         return var_1026;
      }
      
      public function get callerUserId() : int
      {
         return var_1929;
      }
      
      public function get callId() : int
      {
         return var_1480;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_110;
      }
   }
}
