package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MeMenuSettingsViewSlider
   {
       
      
      private var var_845:MeMenuSettingsView;
      
      private var var_2370:int;
      
      private var var_572:BitmapData;
      
      private var var_1034:Number = 1;
      
      private var var_1510:int;
      
      private var var_697:Number = 0;
      
      private var _sliderContainer:IWindowContainer;
      
      private var var_573:BitmapData;
      
      public function MeMenuSettingsViewSlider(param1:MeMenuSettingsView, param2:IWindowContainer, param3:IAssetLibrary, param4:Number = 0, param5:Number = 1)
      {
         super();
         var_845 = param1;
         _sliderContainer = param2;
         var_697 = param4;
         var_1034 = param5;
         storeAssets(param3);
         displaySlider();
      }
      
      private function buttonProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_425)
         {
            return;
         }
         var_845.saveVolume(getValue(param2.x),false);
      }
      
      private function displaySlider() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_sliderContainer == null)
         {
            return;
         }
         _loc2_ = _sliderContainer.findChildByName("slider_base") as IBitmapWrapperWindow;
         if(_loc2_ != null && var_573 != null)
         {
            _loc2_.bitmap = new BitmapData(var_573.width,var_573.height,true,16777215);
            _loc2_.bitmap.copyPixels(var_573,var_573.rect,new Point(0,0),null,null,true);
         }
         _loc1_ = _sliderContainer.findChildByName("slider_movement_area") as IWindowContainer;
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.findChildByName("slider_button") as IBitmapWrapperWindow;
            if(_loc2_ != null && var_572 != null)
            {
               _loc2_.bitmap = new BitmapData(var_572.width,var_572.height,true,16777215);
               _loc2_.bitmap.copyPixels(var_572,var_572.rect,new Point(0,0),null,null,true);
               _loc2_.procedure = buttonProcedure;
               var_1510 = _loc1_.width - _loc2_.width;
            }
         }
      }
      
      private function storeAssets(param1:IAssetLibrary) : void
      {
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_base"));
         var_573 = BitmapData(_loc2_.content);
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_button"));
         var_572 = BitmapData(_loc2_.content);
      }
      
      public function set max(param1:Number) : void
      {
         var_1034 = param1;
         setValue(var_845.volume);
      }
      
      public function dispose() : void
      {
         var_845 = null;
         _sliderContainer = null;
         var_573 = null;
         var_572 = null;
      }
      
      private function getSliderPosition(param1:Number) : int
      {
         return int(var_1510 * (Number(param1 - var_697) / (var_1034 - var_697)));
      }
      
      public function set min(param1:Number) : void
      {
         var_697 = param1;
         setValue(var_845.volume);
      }
      
      public function setValue(param1:Number) : void
      {
         if(_sliderContainer == null)
         {
            return;
         }
         var _loc2_:IWindow = _sliderContainer.findChildByName("slider_button");
         if(_loc2_ != null)
         {
            _loc2_.x = getSliderPosition(param1);
         }
      }
      
      private function getValue(param1:Number) : Number
      {
         return param1 / var_1510 * (var_1034 - var_697) + var_697;
      }
   }
}
