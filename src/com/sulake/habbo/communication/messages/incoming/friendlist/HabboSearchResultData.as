package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2286:Boolean;
      
      private var var_2287:int;
      
      private var var_2284:Boolean;
      
      private var var_1515:String;
      
      private var var_1147:String;
      
      private var var_1694:int;
      
      private var var_2073:String;
      
      private var var_2285:String;
      
      private var var_2074:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1694 = param1.readInteger();
         this.var_1515 = param1.readString();
         this.var_2073 = param1.readString();
         this.var_2286 = param1.readBoolean();
         this.var_2284 = param1.readBoolean();
         param1.readString();
         this.var_2287 = param1.readInteger();
         this.var_2074 = param1.readString();
         this.var_2285 = param1.readString();
         this.var_1147 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1147;
      }
      
      public function get avatarName() : String
      {
         return this.var_1515;
      }
      
      public function get avatarId() : int
      {
         return this.var_1694;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2286;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2285;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2074;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2284;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2073;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2287;
      }
   }
}
