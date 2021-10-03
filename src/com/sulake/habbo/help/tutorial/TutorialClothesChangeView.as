package com.sulake.habbo.help.tutorial
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.help.enum.HabboHelpTutorialEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import flash.display.BitmapData;
   
   public class TutorialClothesChangeView implements ITutorialUIView
   {
       
      
      private var var_47:TutorialUI;
      
      private var var_568:IWindowContainer;
      
      public function TutorialClothesChangeView(param1:IItemListWindow, param2:TutorialUI)
      {
         super();
         var_47 = param2;
         var _loc3_:IWindowContainer = param2.buildXmlWindow("tutorial_change_clothes") as IWindowContainer;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.procedure = windowProcedure;
         param1.addListItem(_loc3_ as IWindow);
         setToolbarIconHighlight(true);
         var_47.help.toolbar.events.addEventListener(HabboToolbarShowMenuEvent.const_44,onShowMenuEvent);
         var_47.prepareForTutorial();
      }
      
      public function setToolbarIconHighlight(param1:Boolean) : void
      {
         var _loc2_:HabboToolbarSetIconEvent = new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_161,HabboToolbarIconEnum.MEMENU);
         if(param1)
         {
            _loc2_.iconState = "highlight_blue";
            showToolbarIconHighlightArrow();
         }
         else
         {
            _loc2_.iconState = "0";
            hideToolbarIconHighlightArrow();
         }
         var_47.help.toolbar.events.dispatchEvent(_loc2_);
      }
      
      private function windowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         switch(param2.name)
         {
            case "button_cancel":
               if(param1.type == WindowMouseEvent.const_48)
               {
                  var_47.showView(TutorialUI.const_79);
               }
         }
      }
      
      private function onShowMenuEvent(param1:HabboToolbarShowMenuEvent) : void
      {
         if(param1.menuId == HabboToolbarIconEnum.MEMENU && param1.type == HabboToolbarShowMenuEvent.const_44)
         {
            setToolbarIconHighlight(false);
            hideToolbarIconHighlightArrow();
            var_47.help.events.dispatchEvent(new HabboHelpTutorialEvent(HabboHelpTutorialEvent.const_419));
         }
      }
      
      private function hideToolbarIconHighlightArrow() : void
      {
         if(var_568 != null)
         {
            var_568.dispose();
            var_568 = null;
         }
      }
      
      public function get id() : String
      {
         return TutorialUI.const_278;
      }
      
      private function showToolbarIconHighlightArrow() : void
      {
         var _loc2_:* = null;
         if(var_568 != null)
         {
            return;
         }
         var_568 = var_47.buildXmlWindow("tutorial_arrow") as IWindowContainer;
         var _loc1_:IBitmapWrapperWindow = var_568.findChildByName("arrow") as IBitmapWrapperWindow;
         if(_loc1_ != null)
         {
            _loc2_ = BitmapDataAsset(var_47.assets.getAssetByName("tutorial_highlight_blue_arrow"));
            _loc1_.bitmap = (_loc2_.content as BitmapData).clone();
         }
         var_47.help.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_44,HabboToolbarIconEnum.MEMENU_ARROW,var_568));
      }
      
      public function dispose() : void
      {
         setToolbarIconHighlight(false);
         var_47.help.toolbar.events.removeEventListener(HabboToolbarShowMenuEvent.const_44,onShowMenuEvent);
      }
   }
}
