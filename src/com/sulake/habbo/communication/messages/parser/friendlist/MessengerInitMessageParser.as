package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2321:int;
      
      private var var_2317:int;
      
      private var var_2320:int;
      
      private var var_220:Array;
      
      private var var_2318:int;
      
      private var var_2319:int;
      
      private var var_13:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_13 = new Array();
         this.var_220 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2321;
      }
      
      public function get friends() : Array
      {
         return this.var_220;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2320;
      }
      
      public function get categories() : Array
      {
         return this.var_13;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2317;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2319;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2319 = param1.readInteger();
         this.var_2320 = param1.readInteger();
         this.var_2321 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_13.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_220.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2317 = param1.readInteger();
         this.var_2318 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2318;
      }
   }
}
