package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1678:int;
      
      private var var_1908:String;
      
      private var var_1677:int;
      
      private var _disposed:Boolean;
      
      private var var_1909:int;
      
      private var var_1907:String;
      
      private var var_1273:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1907 = param1.readString();
         var_1678 = param1.readInteger();
         var_1677 = param1.readInteger();
         var_1908 = param1.readString();
         var_1909 = param1.readInteger();
         var_1273 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1909;
      }
      
      public function get worldId() : int
      {
         return var_1677;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1907;
      }
      
      public function get unitPort() : int
      {
         return var_1678;
      }
      
      public function get castLibs() : String
      {
         return var_1908;
      }
      
      public function get nodeId() : int
      {
         return var_1273;
      }
   }
}
