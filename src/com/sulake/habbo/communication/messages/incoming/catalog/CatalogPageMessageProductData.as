package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_207:String = "e";
      
      public static const const_73:String = "i";
      
      public static const const_76:String = "s";
       
      
      private var var_1044:String;
      
      private var var_1287:String;
      
      private var var_1285:int;
      
      private var var_2149:int;
      
      private var var_1045:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1287 = param1.readString();
         var_2149 = param1.readInteger();
         var_1044 = param1.readString();
         var_1045 = param1.readInteger();
         var_1285 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1045;
      }
      
      public function get productType() : String
      {
         return var_1287;
      }
      
      public function get expiration() : int
      {
         return var_1285;
      }
      
      public function get furniClassId() : int
      {
         return var_2149;
      }
      
      public function get extraParam() : String
      {
         return var_1044;
      }
   }
}
