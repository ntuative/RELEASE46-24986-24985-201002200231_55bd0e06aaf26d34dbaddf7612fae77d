package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_795:String = "price_type_none";
      
      public static const const_393:String = "pricing_model_multi";
      
      public static const const_355:String = "price_type_credits";
      
      public static const const_473:String = "price_type_credits_and_pixels";
      
      public static const const_409:String = "pricing_model_bundle";
      
      public static const const_447:String = "pricing_model_single";
      
      public static const const_657:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1245:String = "pricing_model_unknown";
      
      public static const const_396:String = "price_type_pixels";
       
      
      private var var_831:int;
      
      private var _offerId:int;
      
      private var var_830:int;
      
      private var var_412:String;
      
      private var var_567:String;
      
      private var var_1962:int;
      
      private var var_652:ICatalogPage;
      
      private var var_1257:String;
      
      private var var_413:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1257 = param1.localizationId;
         var_831 = param1.priceInCredits;
         var_830 = param1.priceInPixels;
         var_652 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_412;
      }
      
      public function get page() : ICatalogPage
      {
         return var_652;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1962 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_413;
      }
      
      public function get localizationId() : String
      {
         return var_1257;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_830;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1257 = "";
         var_831 = 0;
         var_830 = 0;
         var_652 = null;
         if(var_413 != null)
         {
            var_413.dispose();
            var_413 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_567;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1962;
      }
      
      public function get priceInCredits() : int
      {
         return var_831;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_412 = const_447;
            }
            else
            {
               var_412 = const_393;
            }
         }
         else if(param1.length > 1)
         {
            var_412 = const_409;
         }
         else
         {
            var_412 = const_1245;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_412)
         {
            case const_447:
               var_413 = new SingleProductContainer(this,param1);
               break;
            case const_393:
               var_413 = new MultiProductContainer(this,param1);
               break;
            case const_409:
               var_413 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_412);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_831 > 0 && var_830 > 0)
         {
            var_567 = const_473;
         }
         else if(var_831 > 0)
         {
            var_567 = const_355;
         }
         else if(var_830 > 0)
         {
            var_567 = const_396;
         }
         else
         {
            var_567 = const_795;
         }
      }
   }
}
