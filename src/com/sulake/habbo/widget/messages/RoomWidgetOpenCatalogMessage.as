package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_625:String = "RWOCM_CLUB_MAIN";
      
      public static const const_645:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2218:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_645);
         var_2218 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2218;
      }
   }
}
