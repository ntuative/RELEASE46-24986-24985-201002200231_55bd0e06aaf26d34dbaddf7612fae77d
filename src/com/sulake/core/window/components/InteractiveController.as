package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.MouseCursorType;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class InteractiveController extends WindowController implements IInteractiveWindow
   {
      
      protected static const KEY_TOOLTIP_DELAY:String = "tool_tip_delay";
      
      protected static const const_1018:String = "tool_tip_caption";
      
      protected static const const_1382:uint = 500;
      
      protected static const const_736:String = "";
      
      protected static var var_318:Array;
       
      
      protected var var_2261:uint = 0;
      
      protected var var_929:String = "";
      
      protected var var_432:Array;
      
      protected var var_930:uint = 500;
      
      public function InteractiveController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         param4 |= 0;
         var_432 = new Array();
         var_432[0] = MouseCursorType.const_326;
         var_432[1] = MouseCursorType.const_36;
         var_432[2] = MouseCursorType.const_326;
         var_432[3] = MouseCursorType.const_326;
         var_432[4] = MouseCursorType.const_36;
         var_432[5] = MouseCursorType.const_36;
         var_432[6] = MouseCursorType.const_326;
         if(var_318 == null)
         {
            var_318 = new Array();
            var_318[0] = WindowState.const_92;
            var_318[1] = WindowState.const_71;
            var_318[2] = WindowState.const_75;
            var_318[3] = WindowState.const_61;
            var_318[4] = WindowState.const_45;
            var_318[5] = WindowState.const_87;
            var_318[6] = WindowState.const_68;
         }
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public static function writeInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : Array
      {
         param2.push(new PropertyStruct(const_1018,param1.toolTipCaption,PropertyStruct.STRING,param1.toolTipCaption != const_736));
         param2.push(new PropertyStruct(KEY_TOOLTIP_DELAY,param1.toolTipDelay,PropertyStruct.const_946,param1.toolTipDelay != const_1382));
         return param2;
      }
      
      public static function readInteractiveWindowProperties(param1:IInteractiveWindow, param2:Array) : void
      {
         var _loc3_:* = null;
         for each(_loc3_ in param2)
         {
            switch(_loc3_.key)
            {
               case const_1018:
                  param1.toolTipCaption = _loc3_.value as String;
                  break;
               case KEY_TOOLTIP_DELAY:
                  param1.toolTipDelay = _loc3_.value as uint;
                  break;
               case "mouse_cursor_hovering":
                  param1.setMouseCursorByState(WindowState.const_75,_loc3_.value as uint);
                  break;
               case "mouse_cursor_pressed":
                  param1.setMouseCursorByState(WindowState.const_87,_loc3_.value as uint);
                  break;
               case "mouse_cursor_disabled":
                  param1.setMouseCursorByState(WindowState.const_68,_loc3_.value as uint);
                  break;
            }
         }
      }
      
      public static function processInteractiveWindowEvents(param1:IInteractiveWindow, param2:Event) : void
      {
         if(param1.toolTipCaption != const_736)
         {
            if(param2.type == MouseEvent.MOUSE_OVER)
            {
               param1.context.getWindowServices().getToolTipAgentService().begin(param1);
            }
            else if(param2.type != MouseEvent.MOUSE_MOVE)
            {
               if(param2.type == MouseEvent.MOUSE_OUT)
               {
                  param1.context.getWindowServices().getToolTipAgentService().end(param1);
               }
            }
         }
      }
      
      public function set toolTipDelay(param1:uint) : void
      {
         var_930 = param1;
      }
      
      public function hideToolTip() : void
      {
      }
      
      override public function get properties() : Array
      {
         return writeInteractiveWindowProperties(this,super.properties);
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         if(param1 == this)
         {
            processInteractiveWindowEvents(this,param2);
         }
         return super.update(param1,param2);
      }
      
      public function get toolTipCaption() : String
      {
         return var_929;
      }
      
      public function set toolTipCaption(param1:String) : void
      {
         var_929 = param1 == null ? const_736 : param1;
      }
      
      override public function set properties(param1:Array) : void
      {
         readInteractiveWindowProperties(this,param1);
         super.properties = param1;
      }
      
      public function getMouseCursorByState(param1:uint) : uint
      {
         var _loc2_:int = 0;
         while(_loc2_-- > 0)
         {
            if((param1 & 0) > 0)
            {
               return var_432[_loc2_];
            }
         }
         return MouseCursorType.const_36;
      }
      
      public function setMouseCursorByState(param1:uint, param2:uint) : void
      {
         var _loc3_:int = var_318.indexOf(param1);
         if(_loc3_ > -1)
         {
            var_432[_loc3_] = param2;
         }
      }
      
      public function showToolTip(param1:IToolTipWindow) : void
      {
      }
      
      public function get toolTipDelay() : uint
      {
         return var_930;
      }
      
      public function set mouseCursorType(param1:uint) : void
      {
         var_2261 = param1;
      }
      
      public function get mouseCursorType() : uint
      {
         return var_2261;
      }
   }
}
