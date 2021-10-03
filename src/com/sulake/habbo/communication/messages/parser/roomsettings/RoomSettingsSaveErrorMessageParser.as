package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1467:int = 9;
      
      public static const const_1495:int = 4;
      
      public static const const_1516:int = 1;
      
      public static const const_1279:int = 10;
      
      public static const const_1498:int = 2;
      
      public static const const_1368:int = 7;
      
      public static const const_1236:int = 11;
      
      public static const const_1484:int = 3;
      
      public static const const_1254:int = 8;
      
      public static const const_1207:int = 5;
      
      public static const const_1450:int = 6;
      
      public static const const_1195:int = 12;
       
      
      private var var_2192:String;
      
      private var _roomId:int;
      
      private var var_1109:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2192;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1109 = param1.readInteger();
         var_2192 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1109;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
