package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      private var var_228:int = 0;
      
      private var var_1945:int = 0;
      
      private var var_2168:Number = 0;
      
      private var var_2169:Number = 0;
      
      private var var_2171:Number = 0;
      
      private var var_2172:Number = 0;
      
      private var var_2170:Boolean = false;
      
      private var var_85:Number = 0;
      
      private var _id:int = 0;
      
      private var var_192:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_192 = [];
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_86 = param4;
         var_2172 = param5;
         var_228 = param6;
         var_1945 = param7;
         var_2168 = param8;
         var_2169 = param9;
         var_2171 = param10;
         var_2170 = param11;
         var_192 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function get localZ() : Number
      {
         return var_2172;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2170;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1945;
      }
      
      public function get targetX() : Number
      {
         return var_2168;
      }
      
      public function get targetY() : Number
      {
         return var_2169;
      }
      
      public function get targetZ() : Number
      {
         return var_2171;
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get actions() : Array
      {
         return var_192.slice();
      }
   }
}
