package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_603:String = "RWUAM_RESPECT_USER";
      
      public static const const_566:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_572:String = "RWUAM_START_TRADING";
      
      public static const const_681:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_621:String = "RWUAM_WHISPER_USER";
      
      public static const const_559:String = "RWUAM_IGNORE_USER";
      
      public static const const_392:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_514:String = "RWUAM_BAN_USER";
      
      public static const const_628:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_414:String = "RWUAM_KICK_USER";
      
      public static const const_729:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_682:String = " RWUAM_RESPECT_PET";
      
      public static const const_448:String = "RWUAM_KICK_BOT";
      
      public static const const_1158:String = "RWUAM_TRAIN_PET";
      
      public static const const_554:String = "RWUAM_PICKUP_PET";
      
      public static const const_503:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_520:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
