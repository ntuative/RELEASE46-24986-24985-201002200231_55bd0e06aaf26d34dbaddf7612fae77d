package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_126:String = "RWPUW_CONTENT";
      
      public static const const_114:String = "RWPUW_OFFER";
      
      public static const const_63:String = "RWPUW_ERROR";
       
      
      private var var_990:Array = null;
      
      private var var_1215:String = "";
      
      private var var_1192:String;
      
      private var var_1216:String = "";
      
      private var var_991:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
      }
      
      public function get questionArray() : Array
      {
         return var_990;
      }
      
      public function get startMessage() : String
      {
         return var_1215;
      }
      
      public function get summary() : String
      {
         return var_1192;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1215 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_991 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1192 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_991;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1216 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1216;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_990 = param1;
      }
   }
}
