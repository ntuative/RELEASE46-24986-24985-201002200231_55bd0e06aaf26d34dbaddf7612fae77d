package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1934:XML;
      
      private var var_1482:ITextWindow;
      
      private var var_1483:ITextWindow;
      
      private var var_1932:XML;
      
      private var var_820:IWindowContainer;
      
      private var var_2298:ITextWindow;
      
      private var var_1931:String = "";
      
      private var var_2364:IButtonWindow;
      
      private var var_1930:XML;
      
      private var var_1481:ITextWindow;
      
      private var var_1933:XML;
      
      private var var_819:IButtonWindow;
      
      private var var_77:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_355:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1932) as IWindowContainer;
               break;
            case Offer.const_396:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1933) as IWindowContainer;
               break;
            case Offer.const_473:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1934) as IWindowContainer;
               break;
            case Offer.const_657:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1930) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_820 != null)
            {
               _window.removeChild(var_820);
               var_820.dispose();
            }
            var_820 = _loc2_;
            _window.addChild(_loc2_);
            var_820.x = 0;
            var_820.y = 0;
         }
         var_1481 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1483 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1482 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2298 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_819 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_819 != null)
         {
            var_819.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_819.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_77 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_77,page,var_1931);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1932 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1933 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1934 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1930 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_906,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1931 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_77 = param1.offer;
         attachStub(var_77.priceType);
         if(var_1481 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_77.priceInCredits));
            var_1481.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1483 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_77.priceInPixels));
            var_1483.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1482 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_77.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_77.priceInPixels));
            var_1482.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_819 != null)
         {
            var_819.enable();
         }
      }
   }
}
