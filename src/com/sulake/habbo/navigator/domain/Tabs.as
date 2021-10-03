package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_571:int = 6;
      
      public static const const_192:int = 5;
      
      public static const const_617:int = 2;
      
      public static const const_307:int = 9;
      
      public static const const_284:int = 4;
      
      public static const const_250:int = 2;
      
      public static const const_638:int = 4;
      
      public static const const_206:int = 8;
      
      public static const const_567:int = 7;
      
      public static const const_228:int = 3;
      
      public static const const_293:int = 1;
      
      public static const const_191:int = 5;
      
      public static const const_391:int = 12;
      
      public static const const_310:int = 1;
      
      public static const const_601:int = 11;
      
      public static const const_665:int = 3;
      
      public static const const_1433:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_420:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_420 = new Array();
         var_420.push(new Tab(_navigator,const_293,const_391,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_454));
         var_420.push(new Tab(_navigator,const_250,const_310,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_454));
         var_420.push(new Tab(_navigator,const_284,const_601,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_969));
         var_420.push(new Tab(_navigator,const_228,const_192,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_454));
         var_420.push(new Tab(_navigator,const_191,const_206,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_687));
         setSelectedTab(const_293);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_420)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_420)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_420)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_284;
      }
      
      public function get tabs() : Array
      {
         return var_420;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
