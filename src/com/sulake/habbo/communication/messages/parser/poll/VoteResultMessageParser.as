package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1308:int;
      
      private var var_937:String;
      
      private var var_681:Array;
      
      private var var_1064:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_681.slice();
      }
      
      public function flush() : Boolean
      {
         var_937 = "";
         var_1064 = [];
         var_681 = [];
         var_1308 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1308;
      }
      
      public function get question() : String
      {
         return var_937;
      }
      
      public function get choices() : Array
      {
         return var_1064.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_937 = param1.readString();
         var_1064 = [];
         var_681 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1064.push(param1.readString());
            var_681.push(param1.readInteger());
            _loc3_++;
         }
         var_1308 = param1.readInteger();
         return true;
      }
   }
}
