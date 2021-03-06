package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_304:String = "WE_CHILD_RESIZED";
      
      public static const const_1194:String = "WE_CLOSE";
      
      public static const const_1210:String = "WE_DESTROY";
      
      public static const const_150:String = "WE_CHANGE";
      
      public static const const_1307:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1522:String = "WE_PARENT_RESIZE";
      
      public static const const_91:String = "WE_UPDATE";
      
      public static const const_1252:String = "WE_MAXIMIZE";
      
      public static const const_364:String = "WE_DESTROYED";
      
      public static const const_793:String = "WE_UNSELECT";
      
      public static const const_1316:String = "WE_MAXIMIZED";
      
      public static const const_1440:String = "WE_UNLOCKED";
      
      public static const const_426:String = "WE_CHILD_REMOVED";
      
      public static const const_171:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1141:String = "WE_ACTIVATE";
      
      public static const const_252:String = "WE_ENABLED";
      
      public static const const_465:String = "WE_CHILD_RELOCATED";
      
      public static const const_1294:String = "WE_CREATE";
      
      public static const const_529:String = "WE_SELECT";
      
      public static const const_167:String = "";
      
      public static const const_1434:String = "WE_LOCKED";
      
      public static const const_1589:String = "WE_PARENT_RELOCATE";
      
      public static const const_1539:String = "WE_CHILD_REMOVE";
      
      public static const const_1546:String = "WE_CHILD_RELOCATE";
      
      public static const const_1591:String = "WE_LOCK";
      
      public static const const_202:String = "WE_FOCUSED";
      
      public static const const_725:String = "WE_UNSELECTED";
      
      public static const const_1006:String = "WE_DEACTIVATED";
      
      public static const const_1360:String = "WE_MINIMIZED";
      
      public static const const_1508:String = "WE_ARRANGED";
      
      public static const const_1477:String = "WE_UNLOCK";
      
      public static const const_1503:String = "WE_ATTACH";
      
      public static const const_1209:String = "WE_OPEN";
      
      public static const const_1374:String = "WE_RESTORE";
      
      public static const const_1456:String = "WE_PARENT_RELOCATED";
      
      public static const const_1274:String = "WE_RELOCATE";
      
      public static const const_1572:String = "WE_CHILD_RESIZE";
      
      public static const const_1429:String = "WE_ARRANGE";
      
      public static const const_1271:String = "WE_OPENED";
      
      public static const const_1361:String = "WE_CLOSED";
      
      public static const const_1464:String = "WE_DETACHED";
      
      public static const const_1547:String = "WE_UPDATED";
      
      public static const const_1330:String = "WE_UNFOCUSED";
      
      public static const const_425:String = "WE_RELOCATED";
      
      public static const const_1190:String = "WE_DEACTIVATE";
      
      public static const const_221:String = "WE_DISABLED";
      
      public static const const_581:String = "WE_CANCEL";
      
      public static const const_553:String = "WE_ENABLE";
      
      public static const const_1344:String = "WE_ACTIVATED";
      
      public static const const_1143:String = "WE_FOCUS";
      
      public static const const_1581:String = "WE_DETACH";
      
      public static const const_1255:String = "WE_RESTORED";
      
      public static const const_1305:String = "WE_UNFOCUS";
      
      public static const const_50:String = "WE_SELECTED";
      
      public static const const_1151:String = "WE_PARENT_RESIZED";
      
      public static const const_1303:String = "WE_CREATED";
      
      public static const const_1588:String = "WE_ATTACHED";
      
      public static const const_1367:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1590:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1375:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1590 = param3;
         var_1375 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1375;
      }
      
      public function get related() : IWindow
      {
         return var_1590;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1375 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
