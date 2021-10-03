package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1785:int;
      
      private var var_2183:String;
      
      private var var_2181:int;
      
      private var var_2180:int;
      
      private var var_639:Boolean;
      
      private var var_2114:Boolean;
      
      private var var_404:int;
      
      private var var_1190:String;
      
      private var var_1797:int;
      
      private var var_1148:int;
      
      private var _ownerName:String;
      
      private var var_677:String;
      
      private var var_2179:int;
      
      private var var_2182:RoomThumbnailData;
      
      private var var_1801:Boolean;
      
      private var var_612:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_612 = new Array();
         super();
         var_404 = param1.readInteger();
         var_639 = param1.readBoolean();
         var_677 = param1.readString();
         _ownerName = param1.readString();
         var_1797 = param1.readInteger();
         var_1785 = param1.readInteger();
         var_2179 = param1.readInteger();
         var_1190 = param1.readString();
         var_2181 = param1.readInteger();
         var_1801 = param1.readBoolean();
         var_2180 = param1.readInteger();
         var_1148 = param1.readInteger();
         var_2183 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_612.push(_loc4_);
            _loc3_++;
         }
         var_2182 = new RoomThumbnailData(param1);
         var_2114 = param1.readBoolean();
      }
      
      public function get method_12() : int
      {
         return var_2179;
      }
      
      public function get roomName() : String
      {
         return var_677;
      }
      
      public function get userCount() : int
      {
         return var_1785;
      }
      
      public function get score() : int
      {
         return var_2180;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2183;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1801;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2114;
      }
      
      public function get event() : Boolean
      {
         return var_639;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_612 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1148;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2181;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2182;
      }
      
      public function get doorMode() : int
      {
         return var_1797;
      }
      
      public function get flatId() : int
      {
         return var_404;
      }
      
      public function get description() : String
      {
         return var_1190;
      }
   }
}
