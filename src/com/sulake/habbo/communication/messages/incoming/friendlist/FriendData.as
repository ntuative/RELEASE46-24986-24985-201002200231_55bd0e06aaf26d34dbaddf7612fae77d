package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_547:String;
      
      private var var_1145:String;
      
      private var var_1149:String;
      
      private var var_1148:int;
      
      private var var_935:int;
      
      private var var_1147:String;
      
      private var _name:String;
      
      private var var_1146:Boolean;
      
      private var var_703:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_935 = param1.readInteger();
         this.var_703 = param1.readBoolean();
         this.var_1146 = param1.readBoolean();
         this.var_547 = param1.readString();
         this.var_1148 = param1.readInteger();
         this.var_1149 = param1.readString();
         this.var_1145 = param1.readString();
         this.var_1147 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_935;
      }
      
      public function get realName() : String
      {
         return var_1147;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1149;
      }
      
      public function get categoryId() : int
      {
         return var_1148;
      }
      
      public function get online() : Boolean
      {
         return var_703;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1146;
      }
      
      public function get lastAccess() : String
      {
         return var_1145;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_547;
      }
   }
}
