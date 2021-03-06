package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2300:Boolean;
      
      private var var_1485:int;
      
      private var var_2299:String = "";
      
      private var var_70:ITextFieldWindow;
      
      private var var_2301:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1307:String = "";
      
      private var var_151:IWindowContainer;
      
      private var var_300:Boolean;
      
      private var var_1248:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_70 = param2;
         var_1485 = param3;
         var_1248 = param4;
         if(param5 != null)
         {
            var_300 = true;
            var_1307 = param5;
            var_70.text = param5;
         }
         Util.setProcDirectly(var_70,onInputClick);
         var_70.addEventListener(WindowKeyboardEvent.const_148,checkEnterPress);
         var_70.addEventListener(WindowEvent.const_150,checkMaxLen);
         this.var_2300 = var_70.textBackground;
         this._orgTextBackgroundColor = var_70.textBackgroundColor;
         this.var_2301 = var_70.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1248 != null)
            {
               var_1248();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1307 != null)
         {
            var_70.text = var_1307;
            var_300 = true;
         }
         else
         {
            var_70.text = "";
            var_300 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_70;
      }
      
      public function restoreBackground() : void
      {
         var_70.textBackground = this.var_2300;
         var_70.textBackgroundColor = this._orgTextBackgroundColor;
         var_70.textColor = this.var_2301;
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
         var_70.text = var_2299;
         var_300 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_151 != null)
         {
            var_151.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_70.textBackground = true;
         var_70.textBackgroundColor = 4294021019;
         var_70.textColor = 4278190080;
         if(this.var_151 == null)
         {
            this.var_151 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_151,"popup_arrow_down",true,null,0);
            IWindowContainer(var_70.parent).addChild(this.var_151);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_151.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_151.findChildByName("border").width = _loc2_.width + 15;
         var_151.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_70.getLocalPosition(_loc3_);
         this.var_151.x = _loc3_.x;
         this.var_151.y = _loc3_.y - this.var_151.height + 3;
         var _loc4_:IWindow = var_151.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_151.width / 2 - _loc4_.width / 2;
         var_151.x += (0 - 0) / 2;
         this.var_151.visible = true;
      }
      
      public function getText() : String
      {
         if(var_300)
         {
            return var_2299;
         }
         return var_70.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_300 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_300 = false;
         var_70.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1485)
         {
            var_70.text = _loc2_.substring(0,var_1485);
         }
      }
   }
}
