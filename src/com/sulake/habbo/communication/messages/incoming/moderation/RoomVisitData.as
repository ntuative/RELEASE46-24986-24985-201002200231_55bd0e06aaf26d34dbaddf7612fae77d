package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_677:String;
      
      private var var_2167:int;
      
      private var var_1456:Boolean;
      
      private var _roomId:int;
      
      private var var_2166:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1456 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_677 = param1.readString();
         var_2166 = param1.readInteger();
         var_2167 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1456;
      }
      
      public function get roomName() : String
      {
         return var_677;
      }
      
      public function get enterMinute() : int
      {
         return var_2167;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2166;
      }
   }
}
