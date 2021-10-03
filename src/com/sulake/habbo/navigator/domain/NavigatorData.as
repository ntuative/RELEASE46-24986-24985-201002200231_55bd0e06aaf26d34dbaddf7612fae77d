package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1410:int = 10;
       
      
      private var var_1512:NavigatorSettingsMessageParser;
      
      private var var_1281:int;
      
      private var var_2049:int;
      
      private var var_2050:Boolean;
      
      private var var_1037:Array;
      
      private var var_846:Dictionary;
      
      private var var_1038:Array;
      
      private var var_2304:int;
      
      private var var_2046:int;
      
      private var var_1694:int;
      
      private var var_2045:int;
      
      private var var_574:PublicRoomShortData;
      
      private var var_415:RoomEventData;
      
      private var var_136:MsgWithRequestId;
      
      private var var_2048:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2047:Boolean;
      
      private var var_200:GuestRoomData;
      
      private var var_698:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1037 = new Array();
         var_1038 = new Array();
         var_846 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2049;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2047;
      }
      
      public function startLoading() : void
      {
         this.var_698 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2047 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_415 != null)
         {
            var_415.dispose();
         }
         var_415 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_136 != null && var_136 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_136 != null && var_136 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_136 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_200;
      }
      
      public function get allCategories() : Array
      {
         return var_1037;
      }
      
      public function onRoomExit() : void
      {
         if(var_415 != null)
         {
            var_415.dispose();
            var_415 = null;
         }
         if(var_574 != null)
         {
            var_574.dispose();
            var_574 = null;
         }
         if(var_200 != null)
         {
            var_200.dispose();
            var_200 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_136 = param1;
         var_698 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1512;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_136 = param1;
         var_698 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_574 = null;
         var_200 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_574 = param1.publicSpace;
            var_415 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2304 = param1.limit;
         this.var_1281 = param1.favouriteRoomIds.length;
         this.var_846 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_846[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_136 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_574;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2050;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_136 = param1;
         var_698 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1694 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_200 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_698;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1038;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1037 = param1;
         var_1038 = new Array();
         for each(_loc2_ in var_1037)
         {
            if(_loc2_.visible)
            {
               var_1038.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2046;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2045;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1512 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_136 == null)
         {
            return;
         }
         var_136.dispose();
         var_136 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_415;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_846[param1] = !!param2 ? "yes" : null;
         var_1281 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_136 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1694;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_136 != null && var_136 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2050 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2046 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2048 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_200 != null)
         {
            var_200.dispose();
         }
         var_200 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_200 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1512.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1281 >= var_2304;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2045 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2048;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_200 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2049 = param1;
      }
   }
}
