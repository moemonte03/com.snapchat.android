package com.snapchat.android.fragments.settings.twofa;

import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.squareup.otto.Bus;

final class TwoFactorSettingsEnabledFragment$4
  implements View.OnClickListener
{
  TwoFactorSettingsEnabledFragment$4(TwoFactorSettingsEnabledFragment paramTwoFactorSettingsEnabledFragment) {}
  
  public final void onClick(View paramView)
  {
    bbo.a().a(new bev(new ForgetDeviceFragment()));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFactorSettingsEnabledFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */