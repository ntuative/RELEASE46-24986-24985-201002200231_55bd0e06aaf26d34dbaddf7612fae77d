package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["HabboWindowManagerCom_habbo_skin_button_checkbox_xml"] = const_117;
         param1["bound_to_parent_rect"] = const_80;
         param1["child_window"] = const_1001;
         param1["embedded_controller"] = const_279;
         param1["resize_to_accommodate_children"] = const_62;
         param1["input_event_processor"] = const_47;
         param1["internal_event_handling"] = const_618;
         param1["mouse_dragging_target"] = const_216;
         param1["mouse_dragging_trigger"] = const_319;
         param1["mouse_scaling_target"] = const_255;
         param1["mouse_scaling_trigger"] = const_400;
         param1["horizontal_mouse_scaling_trigger"] = const_211;
         param1["vertical_mouse_scaling_trigger"] = const_193;
         param1["observe_parent_input_events"] = const_890;
         param1["optimize_region_to_layout_size"] = const_387;
         param1["parent_window"] = const_958;
         param1["relative_horizontal_scale_center"] = const_155;
         param1["relative_horizontal_scale_fixed"] = const_102;
         param1["relative_horizontal_scale_move"] = const_294;
         param1["relative_horizontal_scale_strech"] = const_234;
         param1["relative_scale_center"] = const_925;
         param1["relative_scale_fixed"] = const_663;
         param1["relative_scale_move"] = const_954;
         param1["relative_scale_strech"] = const_927;
         param1["relative_vertical_scale_center"] = const_166;
         param1["relative_vertical_scale_fixed"] = const_106;
         param1["relative_vertical_scale_move"] = const_283;
         param1["relative_vertical_scale_strech"] = const_232;
         param1["on_resize_align_left"] = const_619;
         param1["on_resize_align_right"] = const_478;
         param1["on_resize_align_center"] = const_444;
         param1["on_resize_align_top"] = const_587;
         param1["on_resize_align_bottom"] = const_482;
         param1["on_resize_align_middle"] = const_483;
         param1["on_accommodate_align_left"] = const_981;
         param1["on_accommodate_align_right"] = const_407;
         param1["on_accommodate_align_center"] = const_523;
         param1["on_accommodate_align_top"] = const_1014;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_545;
         param1["route_input_events_to_parent"] = const_356;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_862;
         param1["scalable_with_mouse"] = const_824;
         param1["reflect_horizontal_resize_to_parent"] = const_417;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_245;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
