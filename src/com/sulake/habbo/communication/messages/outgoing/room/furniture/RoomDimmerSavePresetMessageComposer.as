package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1902:int;
      
      private var var_1900:int;
      
      private var var_1901:Boolean;
      
      private var var_1898:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1899:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1900 = param1;
         var_1902 = param2;
         var_1898 = param3;
         var_1899 = param4;
         var_1901 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1900,var_1902,var_1898,var_1899,int(var_1901)];
      }
      
      public function dispose() : void
      {
      }
   }
}
