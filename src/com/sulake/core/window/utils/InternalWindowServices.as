package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_119:DisplayObject;
      
      private var var_2305:uint;
      
      private var var_855:IWindowToolTipAgentService;
      
      private var var_851:IWindowMouseScalingService;
      
      private var var_209:IWindowContext;
      
      private var var_854:IWindowFocusManagerService;
      
      private var var_853:IWindowMouseListenerService;
      
      private var var_852:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2305 = 0;
         var_119 = param2;
         var_209 = param1;
         var_852 = new WindowMouseDragger(param2);
         var_851 = new WindowMouseScaler(param2);
         var_853 = new WindowMouseListener(param2);
         var_854 = new FocusManager(param2);
         var_855 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_851;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_854;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_855;
      }
      
      public function dispose() : void
      {
         if(var_852 != null)
         {
            var_852.dispose();
            var_852 = null;
         }
         if(var_851 != null)
         {
            var_851.dispose();
            var_851 = null;
         }
         if(var_853 != null)
         {
            var_853.dispose();
            var_853 = null;
         }
         if(var_854 != null)
         {
            var_854.dispose();
            var_854 = null;
         }
         if(var_855 != null)
         {
            var_855.dispose();
            var_855 = null;
         }
         var_209 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_853;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_852;
      }
   }
}
