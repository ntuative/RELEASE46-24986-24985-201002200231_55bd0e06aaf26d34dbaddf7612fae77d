package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_826:Array;
      
      private var var_831:int;
      
      private var var_1257:String;
      
      private var _offerId:int;
      
      private var var_830:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1257 = param1.readString();
         var_831 = param1.readInteger();
         var_830 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_826 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_826.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_826;
      }
      
      public function get priceInCredits() : int
      {
         return var_831;
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
   }
}
