package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_2117:int;
      
      private var var_1797:int;
      
      private var var_2115:Boolean;
      
      private var var_2116:Boolean;
      
      private var var_2118:Array;
      
      private var var_2114:Boolean;
      
      private var var_1148:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_612:Array;
      
      private var var_1190:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1797;
      }
      
      public function get description() : String
      {
         return var_1190;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2116;
      }
      
      public function get maximumVisitors() : int
      {
         return var_2117;
      }
      
      public function set description(param1:String) : void
      {
         var_1190 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2114 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2117 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1148;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2118;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2114;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1797 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2115 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_612 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2118 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1148 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2115;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2116 = param1;
      }
   }
}
