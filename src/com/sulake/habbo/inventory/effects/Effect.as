package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2020:Date;
      
      private var var_1277:Boolean = false;
      
      private var _type:int;
      
      private var var_362:BitmapData;
      
      private var var_274:Boolean = false;
      
      private var var_1171:int;
      
      private var var_570:int = 1;
      
      private var var_1031:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_362;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_570;
         if(var_570 < 0)
         {
            var_570 = 0;
         }
         var_1031 = var_1171;
         var_274 = false;
         var_1277 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1031 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_274;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_362 = param1;
      }
      
      public function get duration() : int
      {
         return var_1171;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1277;
      }
      
      public function get effectsInInventory() : int
      {
         return var_570;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_362;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_274)
         {
            var_2020 = new Date();
         }
         var_274 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_570 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_274)
         {
            _loc1_ = var_1031 - (new Date().valueOf() - var_2020.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1031;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1277 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1171 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
