package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_838:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1110:Boolean = true;
      
      private var var_1228:int = 0;
      
      private var var_848:int = 0;
      
      private var var_1226:int = 0;
      
      private var var_849:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1225:int = 15;
      
      private var var_163:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1227:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1226 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1110)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_848,var_849);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1228;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_848 == 0 && var_849 == 0;
      }
      
      private function resetLog() : void
      {
         var_848 = 0;
         var_849 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1110)
         {
            return;
         }
         if(getTimer() - var_1226 > var_1227 * 1000 && var_1228 < var_1225)
         {
            var_1226 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_163 = param1;
         var_1227 = int(var_163.getKey("lagwarninglog.interval","60"));
         var_1225 = int(var_163.getKey("lagwarninglog.reportlimit","15"));
         var_1110 = Boolean(int(var_163.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_849 += 1;
            case const_838:
               var_848 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
