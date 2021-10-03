package com.sulake.habbo.widget.events
{
   public class RoomWidgetAvatarEditorUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_849:String = "RWAEUE_HIDE_CLUB_PROMO";
      
      public static const const_640:String = "RWUE_AVATAR_EDITOR_CLOSED";
      
      public static const const_1250:String = "RWAEUE_MODE_TRIAL";
      
      public static const const_891:String = "RWAEUE_MODE_FULL";
      
      public static const const_449:String = "RWAEUE_SHOW_CLUB_PROMO";
       
      
      private var var_2216:String;
      
      private var var_2217:String;
      
      public function RoomWidgetAvatarEditorUpdateEvent(param1:String, param2:String = "", param3:String = "RWAEUE_MODE_FULL", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_2216 = param2;
         var_2217 = param3;
      }
      
      public function get promoMode() : String
      {
         return var_2217;
      }
      
      public function get promoImageUrl() : String
      {
         return var_2216;
      }
   }
}
