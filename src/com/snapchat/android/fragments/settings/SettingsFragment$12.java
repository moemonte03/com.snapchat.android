package com.snapchat.android.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.squareup.otto.Bus;

final class SettingsFragment$12
  implements View.OnClickListener
{
  SettingsFragment$12(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    AnalyticsEvents.f();
    bbo.a().a(new bev(new ClearConversationsFragment()));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */