package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_999:SoundChannel = null;
      
      private var var_807:Boolean;
      
      private var var_1000:Sound = null;
      
      private var var_623:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1000 = param1;
         var_1000.addEventListener(Event.COMPLETE,onComplete);
         var_623 = 1;
         var_807 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_807;
      }
      
      public function stop() : Boolean
      {
         var_999.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_807 = false;
         var_999 = var_1000.play(0);
         this.volume = var_623;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_623;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_999.position;
      }
      
      public function get length() : Number
      {
         return var_1000.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_623 = param1;
         if(var_999 != null)
         {
            var_999.soundTransform = new SoundTransform(var_623);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_807 = true;
      }
   }
}
