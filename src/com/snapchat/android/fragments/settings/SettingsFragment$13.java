package com.snapchat.android.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.snapchat.android.fragments.verification.SettingsPhoneVerificationFragment;
import com.squareup.otto.Bus;

final class SettingsFragment$13
  implements View.OnClickListener
{
  SettingsFragment$13(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    bbo.a().a(new bev(new SettingsPhoneVerificationFragment()));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */