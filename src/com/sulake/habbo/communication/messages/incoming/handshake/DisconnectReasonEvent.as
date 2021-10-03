package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1312:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_792:String = "DisconnectReasonTimeout";
      
      public static const const_522:String = "DisconnectReasonDisconnected";
      
      public static const const_332:String = "DisconnectReasonBanned";
      
      public static const const_984:String = "DisconnectReasonLoggedOut";
      
      public static const const_932:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_4 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_522;
            case 0:
               return const_522;
            case 1:
               return const_984;
            case 1009:
            case 2:
               return const_932;
            case 3:
               return const_792;
            case 4:
               return const_1312;
            default:
               return const_522;
         }
      }
   }
}
