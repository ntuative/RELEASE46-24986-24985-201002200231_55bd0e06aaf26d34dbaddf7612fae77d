package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1217:String = "WN_CREATED";
      
      public static const const_985:String = "WN_DISABLE";
      
      public static const const_905:String = "WN_DEACTIVATED";
      
      public static const const_950:String = "WN_OPENED";
      
      public static const const_869:String = "WN_CLOSED";
      
      public static const const_844:String = "WN_DESTROY";
      
      public static const const_1545:String = "WN_ARRANGED";
      
      public static const const_470:String = "WN_PARENT_RESIZED";
      
      public static const const_814:String = "WN_ENABLE";
      
      public static const const_924:String = "WN_RELOCATE";
      
      public static const const_995:String = "WN_FOCUS";
      
      public static const const_974:String = "WN_PARENT_RELOCATED";
      
      public static const const_351:String = "WN_PARAM_UPDATED";
      
      public static const const_589:String = "WN_PARENT_ACTIVATED";
      
      public static const const_189:String = "WN_RESIZED";
      
      public static const const_813:String = "WN_CLOSE";
      
      public static const const_806:String = "WN_PARENT_REMOVED";
      
      public static const const_242:String = "WN_CHILD_RELOCATED";
      
      public static const const_656:String = "WN_ENABLED";
      
      public static const const_238:String = "WN_CHILD_RESIZED";
      
      public static const const_845:String = "WN_MINIMIZED";
      
      public static const const_732:String = "WN_DISABLED";
      
      public static const const_195:String = "WN_CHILD_ACTIVATED";
      
      public static const const_455:String = "WN_STATE_UPDATED";
      
      public static const const_542:String = "WN_UNSELECTED";
      
      public static const const_459:String = "WN_STYLE_UPDATED";
      
      public static const const_1526:String = "WN_UPDATE";
      
      public static const const_385:String = "WN_PARENT_ADDED";
      
      public static const const_674:String = "WN_RESIZE";
      
      public static const const_653:String = "WN_CHILD_REMOVED";
      
      public static const const_1428:String = "";
      
      public static const const_964:String = "WN_RESTORED";
      
      public static const const_298:String = "WN_SELECTED";
      
      public static const const_827:String = "WN_MINIMIZE";
      
      public static const const_811:String = "WN_FOCUSED";
      
      public static const const_1264:String = "WN_LOCK";
      
      public static const const_329:String = "WN_CHILD_ADDED";
      
      public static const const_1003:String = "WN_UNFOCUSED";
      
      public static const const_421:String = "WN_RELOCATED";
      
      public static const const_931:String = "WN_DEACTIVATE";
      
      public static const const_1302:String = "WN_CRETAE";
      
      public static const const_962:String = "WN_RESTORE";
      
      public static const const_290:String = "WN_ACTVATED";
      
      public static const const_1182:String = "WN_LOCKED";
      
      public static const const_350:String = "WN_SELECT";
      
      public static const const_994:String = "WN_MAXIMIZE";
      
      public static const const_873:String = "WN_OPEN";
      
      public static const const_730:String = "WN_UNSELECT";
      
      public static const const_1505:String = "WN_ARRANGE";
      
      public static const const_1211:String = "WN_UNLOCKED";
      
      public static const const_1460:String = "WN_UPDATED";
      
      public static const const_807:String = "WN_ACTIVATE";
      
      public static const const_1165:String = "WN_UNLOCK";
      
      public static const const_784:String = "WN_MAXIMIZED";
      
      public static const const_908:String = "WN_DESTROYED";
      
      public static const const_794:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1590,cancelable);
      }
   }
}
