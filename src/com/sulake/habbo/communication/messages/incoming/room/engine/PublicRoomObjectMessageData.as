package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_966:int = 0;
      
      private var var_86:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_203:Boolean = false;
      
      private var var_228:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_85:Number = 0;
      
      private var var_967:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_203)
         {
            var_86 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_966;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_203)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_203)
         {
            var_228 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_203)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_203 = true;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_203)
         {
            var_966 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_203)
         {
            var_967 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_203)
         {
            var_85 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_203)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_967;
      }
   }
}
