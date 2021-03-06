package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1559:int = 2;
      
      public static const const_1523:int = 1;
      
      public static const const_1446:int = 0;
       
      
      private var var_1132:int;
      
      private var var_363:int;
      
      private var var_2374:int;
      
      private var _offerId:int;
      
      private var var_1650:int;
      
      private var var_1648:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1648 = param2;
         var_1650 = param3;
         var_1132 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1648;
      }
      
      public function get furniType() : int
      {
         return var_1650;
      }
      
      public function get price() : int
      {
         return var_1132;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
