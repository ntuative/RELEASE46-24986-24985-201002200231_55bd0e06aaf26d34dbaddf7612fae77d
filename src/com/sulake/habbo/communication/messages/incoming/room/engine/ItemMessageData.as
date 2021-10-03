package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_86:Number = 0;
      
      private var _data:String = "";
      
      private var var_1511:int = 0;
      
      private var var_33:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2210:Boolean = false;
      
      private var var_2347:String = "";
      
      private var _id:int = 0;
      
      private var var_203:Boolean = false;
      
      private var var_228:String = "";
      
      private var var_2208:int = 0;
      
      private var var_2209:int = 0;
      
      private var var_1627:int = 0;
      
      private var var_1625:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2210 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_203)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2210;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_203)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_228;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_203)
         {
            var_1627 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_203)
         {
            var_2208 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_203)
         {
            var_2209 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_203)
         {
            var_228 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_203)
         {
            var_1625 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_203)
         {
            var_33 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1627;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_203)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2208;
      }
      
      public function get wallY() : Number
      {
         return var_2209;
      }
      
      public function get localY() : Number
      {
         return var_1625;
      }
      
      public function setReadOnly() : void
      {
         var_203 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_203)
         {
            var_86 = param1;
         }
      }
   }
}
