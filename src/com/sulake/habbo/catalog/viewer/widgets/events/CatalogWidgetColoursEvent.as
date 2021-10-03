package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1279:Array;
      
      private var var_1824:String;
      
      private var var_1825:String;
      
      private var var_1826:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1279 = param1;
         var_1824 = param2;
         var_1825 = param3;
         var_1826 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1279;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1824;
      }
      
      public function get colourAssetName() : String
      {
         return var_1825;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1826;
      }
   }
}
