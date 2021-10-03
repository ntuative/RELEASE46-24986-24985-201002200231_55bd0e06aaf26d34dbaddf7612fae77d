package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_615;
         param1["bitmap"] = const_541;
         param1["border"] = const_584;
         param1["border_notify"] = const_1131;
         param1["button"] = const_383;
         param1["button_thick"] = const_552;
         param1["button_icon"] = const_1280;
         param1["button_group_left"] = const_717;
         param1["button_group_center"] = const_626;
         param1["button_group_right"] = const_727;
         param1["canvas"] = const_685;
         param1["checkbox"] = const_512;
         param1["closebutton"] = const_853;
         param1["container"] = const_317;
         param1["container_button"] = const_710;
         param1["display_object_wrapper"] = const_675;
         param1["dropmenu"] = const_395;
         param1["dropmenu_item"] = const_354;
         param1["frame"] = const_309;
         param1["frame_notify"] = const_1189;
         param1["header"] = const_673;
         param1["icon"] = const_857;
         param1["itemgrid"] = const_817;
         param1["itemgrid_horizontal"] = const_451;
         param1["itemgrid_vertical"] = const_610;
         param1["itemlist"] = const_851;
         param1["itemlist_horizontal"] = const_334;
         param1["itemlist_vertical"] = const_333;
         param1["maximizebox"] = const_1351;
         param1["menu"] = const_1219;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_943;
         param1["minimizebox"] = const_1300;
         param1["notify"] = const_1310;
         param1["HabboWindowManagerCom_habbo_skin_button_checkbox_xml"] = const_530;
         param1["password"] = const_706;
         param1["radiobutton"] = const_655;
         param1["region"] = const_442;
         param1["restorebox"] = const_1287;
         param1["scaler"] = const_975;
         param1["scaler_horizontal"] = const_1311;
         param1["scaler_vertical"] = const_1191;
         param1["scrollbar_horizontal"] = const_384;
         param1["scrollbar_vertical"] = const_538;
         param1["scrollbar_slider_button_up"] = const_868;
         param1["scrollbar_slider_button_down"] = const_810;
         param1["scrollbar_slider_button_left"] = const_896;
         param1["scrollbar_slider_button_right"] = const_980;
         param1["scrollbar_slider_bar_horizontal"] = const_917;
         param1["scrollbar_slider_bar_vertical"] = const_963;
         param1["scrollbar_slider_track_horizontal"] = const_911;
         param1["scrollbar_slider_track_vertical"] = const_788;
         param1["scrollable_itemlist"] = const_1202;
         param1["scrollable_itemlist_vertical"] = const_349;
         param1["scrollable_itemlist_horizontal"] = const_854;
         param1["selector"] = const_560;
         param1["selector_list"] = const_661;
         param1["submenu"] = const_943;
         param1["tab_button"] = const_556;
         param1["tab_container_button"] = const_973;
         param1["tab_context"] = const_480;
         param1["tab_content"] = const_867;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_676;
         param1["input"] = const_604;
         param1["toolbar"] = const_1199;
         param1["tooltip"] = const_291;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
