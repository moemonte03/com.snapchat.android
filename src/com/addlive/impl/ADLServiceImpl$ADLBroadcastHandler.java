package com.addlive.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

class ADLServiceImpl$ADLBroadcastHandler
  extends BroadcastReceiver
{
  private ADLServiceImpl$ADLBroadcastHandler(ADLServiceImpl paramADLServiceImpl) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    if (paramIntent.getAction().equals("android.intent.action.HEADSET_PLUG")) {
      ADLServiceImpl.access$200(this$0).updateAudioSettings();
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl.ADLBroadcastHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */