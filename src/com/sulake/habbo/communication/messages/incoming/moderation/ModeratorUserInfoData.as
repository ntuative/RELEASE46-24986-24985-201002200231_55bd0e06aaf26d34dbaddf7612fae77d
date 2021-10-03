package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1642:int;
      
      private var var_1641:int;
      
      private var var_1639:int;
      
      private var _userName:String;
      
      private var var_1640:int;
      
      private var var_1643:int;
      
      private var var_1644:int;
      
      private var _userId:int;
      
      private var var_703:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1643 = param1.readInteger();
         var_1640 = param1.readInteger();
         var_703 = param1.readBoolean();
         var_1639 = param1.readInteger();
         var_1641 = param1.readInteger();
         var_1642 = param1.readInteger();
         var_1644 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1644;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_703;
      }
      
      public function get method_14() : int
      {
         return var_1640;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1641;
      }
      
      public function get cautionCount() : int
      {
         return var_1642;
      }
      
      public function get cfhCount() : int
      {
         return var_1639;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1643;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
