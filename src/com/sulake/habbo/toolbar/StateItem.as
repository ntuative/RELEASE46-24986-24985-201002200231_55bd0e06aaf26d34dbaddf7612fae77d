package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1356:Boolean;
      
      private var var_1951:String;
      
      private var _frames:XMLList;
      
      private var var_1053:String = "-1";
      
      private var var_744:String;
      
      private var var_172:int = 120;
      
      private var var_1252:String = "-1";
      
      private var var_1253:String;
      
      private var var_1952:Boolean;
      
      private var var_1489:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1356 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1952 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_172 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1253 = param1.@namebase;
         }
         else
         {
            var_1253 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1053 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1252 = param1.@nextState;
         }
         else
         {
            var_1252 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1489 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1951 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_744 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1053 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1952;
      }
      
      public function get defaultState() : String
      {
         return var_1489;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1489 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1951;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_172;
      }
      
      public function get loop() : Boolean
      {
         return var_1356;
      }
      
      public function get nextState() : String
      {
         return var_1252;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_744;
      }
      
      public function get stateOver() : String
      {
         return var_1053;
      }
      
      public function get nameBase() : String
      {
         return var_1253;
      }
   }
}
