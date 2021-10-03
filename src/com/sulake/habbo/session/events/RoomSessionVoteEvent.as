package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_120:String = "RSPE_VOTE_RESULT";
      
      public static const const_116:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1308:int = 0;
      
      private var var_937:String = "";
      
      private var var_681:Array;
      
      private var var_1064:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1064 = [];
         var_681 = [];
         super(param1,param2,param7,param8);
         var_937 = param3;
         var_1064 = param4;
         var_681 = param5;
         if(var_681 == null)
         {
            var_681 = [];
         }
         var_1308 = param6;
      }
      
      public function get votes() : Array
      {
         return var_681.slice();
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
   }
}
