package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1214:String;
      
      private var _disposed:Boolean;
      
      private var var_1390:String;
      
      private var var_1213:int;
      
      private var var_47:ModerationManager;
      
      private var var_755:IDropMenuWindow;
      
      private var var_398:ITextFieldWindow;
      
      private var var_50:IFrameWindow;
      
      private var var_300:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_47 = param1;
         var_1213 = param2;
         var_1390 = param3;
         var_1214 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_202)
         {
            return;
         }
         if(!var_300)
         {
            return;
         }
         var_398.text = "";
         var_300 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_50;
      }
      
      public function getId() : String
      {
         return var_1390;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_300 || false)
         {
            var_47.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_47.connection.send(new ModMessageMessageComposer(var_1213,var_398.text,var_1214));
         this.dispose();
      }
      
      public function show() : void
      {
         var_50 = IFrameWindow(var_47.getXmlWindow("send_msgs"));
         var_50.caption = "Msg To: " + var_1390;
         var_50.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_398 = ITextFieldWindow(var_50.findChildByName("message_input"));
         var_398.procedure = onInputClick;
         var_755 = IDropMenuWindow(var_50.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_755);
         var_755.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_50.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_50.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_47.initMsg.messageTemplates.length);
         param1.populate(var_47.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_50 != null)
         {
            var_50.destroy();
            var_50 = null;
         }
         var_755 = null;
         var_398 = null;
         var_47 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_50)
         {
            return;
         }
         var _loc3_:String = var_47.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_300 = false;
            var_398.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1163;
      }
   }
}
