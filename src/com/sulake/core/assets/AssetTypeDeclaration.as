package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1878:Class;
      
      private var var_1877:Class;
      
      private var var_1879:String;
      
      private var var_1221:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1879 = param1;
         var_1877 = param2;
         var_1878 = param3;
         if(rest == null)
         {
            var_1221 = new Array();
         }
         else
         {
            var_1221 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1878;
      }
      
      public function get assetClass() : Class
      {
         return var_1877;
      }
      
      public function get mimeType() : String
      {
         return var_1879;
      }
      
      public function get fileTypes() : Array
      {
         return var_1221;
      }
   }
}
