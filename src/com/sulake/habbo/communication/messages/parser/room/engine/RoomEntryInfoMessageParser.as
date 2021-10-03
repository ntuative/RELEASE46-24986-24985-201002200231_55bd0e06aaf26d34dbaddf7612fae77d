package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2212:int;
      
      private var var_405:Boolean;
      
      private var var_2211:Boolean;
      
      private var var_893:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2211 = param1.readBoolean();
         if(var_2211)
         {
            var_2212 = param1.readInteger();
            var_405 = param1.readBoolean();
         }
         else
         {
            var_893 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_893 != null)
         {
            var_893.dispose();
            var_893 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2212;
      }
      
      public function get owner() : Boolean
      {
         return var_405;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2211;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_893;
      }
   }
}
