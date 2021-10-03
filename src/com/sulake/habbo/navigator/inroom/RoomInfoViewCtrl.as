package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_731:IWindowContainer;
      
      private var var_1078:ITextWindow;
      
      private var var_204:RoomSettingsCtrl;
      
      private var var_1338:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1336:ITextWindow;
      
      private var var_357:IWindowContainer;
      
      private var var_2215:IWindowContainer;
      
      private var var_2213:ITextWindow;
      
      private var var_895:IWindowContainer;
      
      private var var_1559:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_677:ITextWindow;
      
      private var var_1555:IWindowContainer;
      
      private var var_1337:IWindowContainer;
      
      private var var_896:ITextWindow;
      
      private var var_1076:ITextFieldWindow;
      
      private var var_308:IWindowContainer;
      
      private var var_897:ITextWindow;
      
      private var var_1558:IButtonWindow;
      
      private var var_1077:ITextWindow;
      
      private var var_2324:int;
      
      private var var_1335:IContainerButtonWindow;
      
      private var var_894:IWindowContainer;
      
      private var var_1334:ITextWindow;
      
      private var var_1332:IContainerButtonWindow;
      
      private var var_1557:ITextWindow;
      
      private var var_1556:IButtonWindow;
      
      private var var_832:TagRenderer;
      
      private var var_1774:ITextWindow;
      
      private var var_356:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_730:ITextWindow;
      
      private var var_277:RoomThumbnailCtrl;
      
      private var var_1333:IContainerButtonWindow;
      
      private var var_2214:IWindowContainer;
      
      private var var_278:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_356 = new RoomEventViewCtrl(_navigator);
         var_204 = new RoomSettingsCtrl(_navigator,this,true);
         var_277 = new RoomThumbnailCtrl(_navigator);
         var_832 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_204);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_204.active = true;
         this.var_356.active = false;
         this.var_277.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1559.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1556.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1555.visible = Util.hasVisibleChildren(var_1555);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_677.text = param1.roomName;
         var_677.height = NaN;
         _ownerName.text = param1.ownerName;
         var_896.text = param1.description;
         var_832.refreshTags(var_357,param1.tags);
         var_896.visible = false;
         if(param1.description != "")
         {
            var_896.height = NaN;
            var_896.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_357,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_357,"thumb_down",_loc3_,onThumbDown,0);
         var_2213.visible = _loc3_;
         var_897.visible = !_loc3_;
         var_1557.visible = !_loc3_;
         var_1557.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_357,"home",param2,null,0);
         _navigator.refreshButton(var_357,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_357,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_677.y,0);
         var_357.visible = true;
         var_357.height = Util.getLowestPoint(var_357);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_358,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1558.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1338.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1333.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1335.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1332.visible = _navigator.data.canEditRoomSettings && param1;
         var_1337.visible = Util.hasVisibleChildren(var_1337);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_356.active = false;
         this.var_204.active = false;
         this.var_277.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_44,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_356.active = false;
         this.var_204.active = false;
         this.var_277.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_44,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_358,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_308);
         var_308.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_204.refresh(var_308);
         this.var_277.refresh(var_308);
         Util.moveChildrenToColumn(var_308,["room_details","room_buttons"],0,2);
         var_308.height = Util.getLowestPoint(var_308);
         var_308.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1076.setSelection(0,var_1076.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_278);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_356.refresh(var_278);
         if(Util.hasVisibleChildren(var_278) && !this.var_277.active)
         {
            Util.moveChildrenToColumn(var_278,["event_details","event_buttons"],0,2);
            var_278.height = Util.getLowestPoint(var_278);
            var_278.visible = true;
         }
         else
         {
            var_278.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_356.active = true;
         this.var_204.active = false;
         this.var_277.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1078.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1078.height = NaN;
         var_1336.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1336.height = NaN;
         Util.moveChildrenToColumn(var_731,["public_space_name","public_space_desc"],var_1078.y,0);
         var_731.visible = true;
         var_731.height = Math.max(86,Util.getLowestPoint(var_731));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_894.visible = true;
            var_1076.text = this.getEmbedData();
         }
         else
         {
            var_894.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_204.load(param1);
         this.var_204.active = true;
         this.var_356.active = false;
         this.var_277.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_204.active = false;
         this.var_356.active = false;
         this.var_277.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_65,false);
         _window.setParamFlag(HabboWindowParam.const_1267,true);
         _window.visible = false;
         var_308 = IWindowContainer(find("room_info"));
         var_357 = IWindowContainer(find("room_details"));
         var_731 = IWindowContainer(find("public_space_details"));
         var_2214 = IWindowContainer(find("owner_name_cont"));
         var_2215 = IWindowContainer(find("rating_cont"));
         var_1337 = IWindowContainer(find("room_buttons"));
         var_677 = ITextWindow(find("room_name"));
         var_1078 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_896 = ITextWindow(find("room_desc"));
         var_1336 = ITextWindow(find("public_space_desc"));
         var_1077 = ITextWindow(find("owner_caption"));
         var_897 = ITextWindow(find("rating_caption"));
         var_2213 = ITextWindow(find("rate_caption"));
         var_1557 = ITextWindow(find("rating_txt"));
         var_278 = IWindowContainer(find("event_info"));
         var_895 = IWindowContainer(find("event_details"));
         var_1555 = IWindowContainer(find("event_buttons"));
         var_1774 = ITextWindow(find("event_name"));
         var_730 = ITextWindow(find("event_desc"));
         var_1338 = IContainerButtonWindow(find("add_favourite_button"));
         var_1333 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1335 = IContainerButtonWindow(find("make_home_button"));
         var_1332 = IContainerButtonWindow(find("unmake_home_button"));
         var_1558 = IButtonWindow(find("room_settings_button"));
         var_1559 = IButtonWindow(find("create_event_button"));
         var_1556 = IButtonWindow(find("edit_event_button"));
         var_894 = IWindowContainer(find("embed_info"));
         var_1334 = ITextWindow(find("embed_info_txt"));
         var_1076 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1338,onAddFavouriteClick);
         Util.setProcDirectly(var_1333,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1558,onRoomSettingsClick);
         Util.setProcDirectly(var_1335,onMakeHomeClick);
         Util.setProcDirectly(var_1332,onUnmakeHomeClick);
         Util.setProcDirectly(var_1559,onEventSettingsClick);
         Util.setProcDirectly(var_1556,onEventSettingsClick);
         Util.setProcDirectly(var_1076,onEmbedSrcClick);
         _navigator.refreshButton(var_1338,"favourite",true,null,0);
         _navigator.refreshButton(var_1333,"favourite",true,null,0);
         _navigator.refreshButton(var_1335,"home",true,null,0);
         _navigator.refreshButton(var_1332,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_308,onHover);
         Util.setProcDirectly(var_278,onHover);
         var_1077.width = var_1077.textWidth;
         Util.moveChildrenToRow(var_2214,["owner_caption","owner_name"],var_1077.x,var_1077.y,3);
         var_897.width = var_897.textWidth;
         Util.moveChildrenToRow(var_2215,["rating_caption","rating_txt"],var_897.x,var_897.y,3);
         var_1334.height = NaN;
         Util.moveChildrenToColumn(var_894,["embed_info_txt","embed_src_txt"],var_1334.y,2);
         var_894.height = Util.getLowestPoint(var_894) + 5;
         var_2324 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1774.text = param1.eventName;
         var_730.text = param1.eventDescription;
         var_832.refreshTags(var_895,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_730.visible = false;
         if(param1.eventDescription != "")
         {
            var_730.height = NaN;
            var_730.y = Util.getLowestPoint(var_895) + 2;
            var_730.visible = true;
         }
         var_895.visible = true;
         var_895.height = Util.getLowestPoint(var_895);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_866,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
