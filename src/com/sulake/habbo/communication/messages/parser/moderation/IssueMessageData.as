package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_143:int = 1;
      
      public static const const_1350:int = 3;
      
      public static const const_398:int = 2;
       
      
      private var var_1673:int;
      
      private var var_1678:int;
      
      private var var_1676:int;
      
      private var var_1677:int;
      
      private var var_33:int;
      
      private var var_404:int;
      
      private var var_1191:int;
      
      private var var_1617:int;
      
      private var var_1026:int;
      
      private var _roomResources:String;
      
      private var var_1672:int;
      
      private var var_1679:int;
      
      private var var_1668:String;
      
      private var var_1671:String;
      
      private var var_1674:int = 0;
      
      private var var_1274:String;
      
      private var _message:String;
      
      private var var_1669:int;
      
      private var var_1675:String;
      
      private var var_1148:int;
      
      private var var_677:String;
      
      private var var_1670:String;
      
      private var var_1400:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1026 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1674 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1679;
      }
      
      public function set roomName(param1:String) : void
      {
         var_677 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1672 = param1;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_677;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1677 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_33 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1678;
      }
      
      public function get priority() : int
      {
         return var_1673 + var_1674;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1617 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1671;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1400) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1148;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1679 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1191;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1668 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1672;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1677;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1670 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1274 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1617;
      }
      
      public function set priority(param1:int) : void
      {
         var_1673 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1678 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1668;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1676 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1671 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1669 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1274;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1191 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1676;
      }
      
      public function set flatId(param1:int) : void
      {
         var_404 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1148 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1400 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1669;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1675 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1400;
      }
      
      public function get reportedUserId() : int
      {
         return var_1026;
      }
      
      public function get flatId() : int
      {
         return var_404;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1670;
      }
      
      public function get reporterUserName() : String
      {
         return var_1675;
      }
   }
}
