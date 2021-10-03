package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1193:int = 4;
      
      public static const const_731:int = 3;
      
      public static const const_507:int = 2;
      
      public static const const_831:int = 1;
       
      
      private var var_2030:String;
      
      private var _disposed:Boolean;
      
      private var var_1785:int;
      
      private var var_2029:Boolean;
      
      private var var_804:String;
      
      private var var_843:PublicRoomData;
      
      private var var_2027:int;
      
      private var _index:int;
      
      private var var_2026:String;
      
      private var _type:int;
      
      private var var_1762:String;
      
      private var var_842:GuestRoomData;
      
      private var var_2028:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2030 = param1.readString();
         var_2028 = param1.readString();
         var_2029 = param1.readInteger() == 1;
         var_2026 = param1.readString();
         var_804 = param1.readString();
         var_2027 = param1.readInteger();
         var_1785 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_831)
         {
            var_1762 = param1.readString();
         }
         else if(_type == const_731)
         {
            var_843 = new PublicRoomData(param1);
         }
         else if(_type == const_507)
         {
            var_842 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2027;
      }
      
      public function get popupCaption() : String
      {
         return var_2030;
      }
      
      public function get userCount() : int
      {
         return var_1785;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2029;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_831)
         {
            return 0;
         }
         if(this.type == const_507)
         {
            return this.var_842.method_12;
         }
         if(this.type == const_731)
         {
            return this.var_843.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2028;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_842 != null)
         {
            this.var_842.dispose();
            this.var_842 = null;
         }
         if(this.var_843 != null)
         {
            this.var_843.dispose();
            this.var_843 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_842;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2026;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_843;
      }
      
      public function get picRef() : String
      {
         return var_804;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1762;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
