package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1729:int;
      
      private var var_1733:Boolean;
      
      private var var_1728:int;
      
      private var var_1372:String;
      
      private var var_1732:Boolean = false;
      
      private var var_1612:int;
      
      private var var_434:int;
      
      private var var_969:String;
      
      private var var_1731:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1166:int;
      
      private var var_1734:Boolean;
      
      private var var_1730:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1729 = param1;
         var_969 = param2;
         _objId = param3;
         var_1166 = param4;
         var_1372 = param5;
         var_1733 = param6;
         var_1734 = param7;
         var_1612 = param8;
         var_1731 = param9;
         var_1728 = param10;
         var_434 = -1;
      }
      
      public function get songId() : int
      {
         return var_1728;
      }
      
      public function get iconCallbackId() : int
      {
         return var_434;
      }
      
      public function get expiryTime() : int
      {
         return var_1612;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1730 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1732 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_434 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1734;
      }
      
      public function get slotId() : String
      {
         return var_1731;
      }
      
      public function get classId() : int
      {
         return var_1166;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1733;
      }
      
      public function get stuffData() : String
      {
         return var_1372;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1729;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1732;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1730;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_969;
      }
   }
}
