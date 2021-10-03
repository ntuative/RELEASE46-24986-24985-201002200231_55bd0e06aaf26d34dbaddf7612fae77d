package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRedeemClubPromoMessage extends RoomWidgetMessage
   {
      
      public static const const_531:String = "rwrcp_redeem_club_promo";
       
      
      private var var_1726:String;
      
      private var var_1727:Boolean;
      
      public function RoomWidgetRedeemClubPromoMessage(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         var_1726 = param2;
         var_1727 = param3;
      }
      
      public function get code() : String
      {
         return var_1726;
      }
      
      public function get isTrial() : Boolean
      {
         return var_1727;
      }
   }
}
