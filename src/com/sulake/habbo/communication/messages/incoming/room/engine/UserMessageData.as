package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1218:String = "F";
      
      public static const const_960:String = "M";
       
      
      private var var_85:Number = 0;
      
      private var var_547:String = "";
      
      private var var_2165:int = 0;
      
      private var var_1606:String = "";
      
      private var var_1608:int = 0;
      
      private var var_1609:int = 0;
      
      private var var_1610:String = "";
      
      private var var_1202:String = "";
      
      private var _id:int = 0;
      
      private var var_203:Boolean = false;
      
      private var var_228:int = 0;
      
      private var var_2164:String = "";
      
      private var _name:String = "";
      
      private var var_1607:int = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_203)
         {
            var_228 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_203)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2165;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_203)
         {
            var_1608 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2164;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_203)
         {
            var_1610 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_203)
         {
            var_2164 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_203)
         {
            var_1609 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_203)
         {
            var_547 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_203)
         {
            var_2165 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_203)
         {
            var_1202 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1608;
      }
      
      public function get groupID() : String
      {
         return var_1610;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_203)
         {
            var_1607 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_203)
         {
            var_1606 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_203 = true;
      }
      
      public function get sex() : String
      {
         return var_1202;
      }
      
      public function get figure() : String
      {
         return var_547;
      }
      
      public function get webID() : int
      {
         return var_1607;
      }
      
      public function get custom() : String
      {
         return var_1606;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_203)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_203)
         {
            var_86 = param1;
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
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1609;
      }
   }
}
