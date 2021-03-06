package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetPetCommandMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class PetCommandTool
   {
       
      
      private var var_632:int;
      
      private var var_320:Timer;
      
      private var var_321:IFrameWindow;
      
      private var _widget:InfostandWidget;
      
      private var var_943:Map;
      
      private const const_1597:int = 1100;
      
      private var var_1645:String;
      
      private var var_40:IFrameWindow;
      
      public function PetCommandTool(param1:InfostandWidget)
      {
         super();
         _widget = param1;
         var_943 = new Map();
         var_320 = new Timer(const_1597);
         var_320.addEventListener(TimerEvent.TIMER,onButtonDisableTimeout);
      }
      
      private function onWindowDesktopResized(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(var_40 && true)
         {
            _loc2_ = param1.window;
            _loc3_ = new Rectangle();
            var_40.getGlobalRectangle(_loc3_);
            if(_loc3_.x > _loc2_.width)
            {
               var_40.x = _loc2_.width - 0;
               var_40.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.x + _loc3_.width <= 0)
            {
               var_40.x = 0;
               var_40.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.y > _loc2_.height)
            {
               var_40.y = 0;
               var_40.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.y + _loc3_.height <= 0)
            {
               var_40.y = 0;
               var_40.getGlobalRectangle(_loc3_);
            }
         }
      }
      
      public function showWindow(param1:Boolean) : void
      {
         if(param1)
         {
            if(var_40 == null)
            {
               createCommandWindow();
            }
            var_40.visible = true;
         }
         else if(var_40 != null)
         {
            var_40.visible = false;
         }
         var_320.stop();
      }
      
      private function requestEnabledCommands(param1:int) : void
      {
         var _loc2_:RoomWidgetPetCommandMessage = new RoomWidgetPetCommandMessage(RoomWidgetPetCommandMessage.const_697,param1);
         _widget.messageListener.processWidgetMessage(_loc2_);
      }
      
      public function dispose() : void
      {
         if(var_320)
         {
            var_320.stop();
            var_320 = null;
         }
         if(_widget)
         {
            _widget = null;
         }
         if(var_40)
         {
            var_40.dispose();
         }
         var_40 = null;
         if(var_321)
         {
            var_321.dispose();
         }
         var_321 = null;
      }
      
      private function updateCommandButtonsViewState(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         if(var_40 == null)
         {
            return;
         }
         if(param1 == null)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         do
         {
            _loc4_ = "btn_cmd_" + _loc3_;
            _loc2_ = var_40.findChildByName(_loc4_) as IButtonWindow;
            if(_loc2_ == null)
            {
               break;
            }
            if(param1.indexOf(_loc3_) > -1)
            {
               _loc2_.enable();
            }
            else
            {
               _loc2_.disable();
            }
            _loc3_++;
         }
         while(_loc2_ != null);
         
         var_320.stop();
      }
      
      public function setEnabledCommands(param1:int, param2:Array) : void
      {
         var_943.remove(param1);
         var_943.add(param1,param2);
         if(param1 != var_632)
         {
            return;
         }
         updateCommandButtonsViewState(param2);
         var_320.stop();
      }
      
      public function isVisible() : Boolean
      {
         if(var_40 == null)
         {
            return false;
         }
         return var_40.visible;
      }
      
      private function onInfoWindowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ != null && _loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(param2.name == "header_button_close")
            {
               var_321.visible = false;
            }
         }
      }
      
      private function openInfoWindow() : void
      {
         var _loc1_:* = null;
         if(var_321 == null)
         {
            _loc1_ = _widget.assets.getAssetByName("pet_commands_info") as XmlAsset;
            var_321 = (_widget.windowManager as ICoreWindowManager).buildFromXML(_loc1_.content as XML) as IFrameWindow;
            if(var_321 == null)
            {
               throw new Error("Failed to construct command info window from XML!");
            }
            var_321.x = 200;
            var_321.procedure = onInfoWindowProcedure;
         }
         else
         {
            var_321.visible = true;
         }
      }
      
      private function onButtonDisableTimeout(param1:TimerEvent) : void
      {
         var _loc2_:Array = var_943.getValue(var_632) as Array;
         updateCommandButtonsViewState(_loc2_);
         var_320.stop();
      }
      
      private function onCommandWindowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ != null && _loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(param2.name == "header_button_close")
            {
               var_40.visible = false;
            }
            else if(param2.name == "description_link")
            {
               openInfoWindow();
            }
            else if(param2.name == "avatar_image")
            {
               _widget.messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_392,var_632));
            }
            else if(param2.name.indexOf("btn_cmd_") > -1)
            {
               _loc4_ = int(param2.name.substring(8));
               _loc5_ = "pet.command." + _loc4_;
               _loc6_ = _widget.localizations.getKey(_loc5_);
               _loc7_ = new RoomWidgetPetCommandMessage(RoomWidgetPetCommandMessage.const_660,var_632,var_1645 + " " + _loc6_);
               _widget.messageListener.processWidgetMessage(_loc7_);
               updateCommandButtonsViewState(new Array());
               var_320.start();
            }
         }
      }
      
      public function showCommandToolForPet(param1:int, param2:String, param3:BitmapData = null) : void
      {
         if(var_632 == param1)
         {
            return;
         }
         var_632 = param1;
         var_1645 = param2;
         if(var_40 == null)
         {
            return;
         }
         var _loc4_:ITextWindow = var_40.findChildByName("pet_name") as ITextWindow;
         if(_loc4_ != null)
         {
            _loc4_.text = param2;
         }
         var _loc5_:IBitmapWrapperWindow = var_40.findChildByName("avatar_image") as IBitmapWrapperWindow;
         if(_loc5_ != null)
         {
            _loc5_.bitmap = param3;
            _loc5_.width = param3.width;
            _loc5_.height = param3.height;
            _loc5_.invalidate();
         }
         var _loc6_:Array = var_943.getValue(param1) as Array;
         if(_loc6_ == null)
         {
            updateCommandButtonsViewState(new Array());
            requestEnabledCommands(var_632);
         }
         else
         {
            updateCommandButtonsViewState(_loc6_);
         }
      }
      
      private function createCommandWindow() : void
      {
         var _loc1_:XmlAsset = _widget.assets.getAssetByName("pet_commands") as XmlAsset;
         var_40 = (_widget.windowManager as ICoreWindowManager).buildFromXML(_loc1_.content as XML) as IFrameWindow;
         if(var_40 == null)
         {
            throw new Error("Failed to construct command window from XML!");
         }
         var_40.setParamFlag(WindowParam.const_80,true);
         var_40.context.getDesktopWindow().addEventListener(WindowEvent.const_43,onWindowDesktopResized);
         var_40.procedure = onCommandWindowProcedure;
         var_40.x = 80;
      }
   }
}
