package com.snapchat.android.fragments.signup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;

final class NewUserContactBookFragment$4
  implements DialogInterface.OnClickListener
{
  NewUserContactBookFragment$4(NewUserContactBookFragment paramNewUserContactBookFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AnalyticsEvents.e(false);
    NewUserContactBookFragment.a(a);
    RegistrationAnalytics.b(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.NewUserContactBookFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */