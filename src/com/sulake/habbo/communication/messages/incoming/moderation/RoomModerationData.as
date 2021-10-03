package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_110:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1785:int;
      
      private var var_404:int;
      
      private var var_639:RoomData;
      
      private var var_1784:int;
      
      private var _ownerName:String;
      
      private var var_1786:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_404 = param1.readInteger();
         var_1785 = param1.readInteger();
         var_1786 = param1.readBoolean();
         var_1784 = param1.readInteger();
         _ownerName = param1.readString();
         var_110 = new RoomData(param1);
         var_639 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1785;
      }
      
      public function get event() : RoomData
      {
         return var_639;
      }
      
      public function get room() : RoomData
      {
         return var_110;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_110 != null)
         {
            var_110.dispose();
            var_110 = null;
         }
         if(var_639 != null)
         {
            var_639.dispose();
            var_639 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_404;
      }
      
      public function get ownerId() : int
      {
         return var_1784;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1786;
      }
   }
}
