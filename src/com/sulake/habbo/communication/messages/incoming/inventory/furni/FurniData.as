package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1372:String;
      
      private var var_969:String;
      
      private var var_2008:Boolean;
      
      private var var_1511:int;
      
      private var var_1729:int;
      
      private var var_2007:Boolean;
      
      private var var_1731:String = "";
      
      private var var_1733:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1166:int;
      
      private var var_1734:Boolean;
      
      private var var_1728:int = -1;
      
      private var var_1612:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1729 = param1;
         var_969 = param2;
         _objId = param3;
         var_1166 = param4;
         _category = param5;
         var_1372 = param6;
         var_2008 = param7;
         var_1733 = param8;
         var_1734 = param9;
         var_2007 = param10;
         var_1612 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1731;
      }
      
      public function get extra() : int
      {
         return var_1511;
      }
      
      public function get classId() : int
      {
         return var_1166;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2007;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2008;
      }
      
      public function get stripId() : int
      {
         return var_1729;
      }
      
      public function get stuffData() : String
      {
         return var_1372;
      }
      
      public function get songId() : int
      {
         return var_1728;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1731 = param1;
         var_1511 = param2;
      }
      
      public function get itemType() : String
      {
         return var_969;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1612;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1734;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1733;
      }
   }
}
