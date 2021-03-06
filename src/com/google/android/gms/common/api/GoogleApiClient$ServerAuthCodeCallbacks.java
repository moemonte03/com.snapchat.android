package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzx;
import java.util.Set;

public abstract interface GoogleApiClient$ServerAuthCodeCallbacks
{
  public abstract CheckResult onCheckServerAuthorization(String paramString, Set<Scope> paramSet);
  
  public abstract boolean onUploadServerAuthCode(String paramString1, String paramString2);
  
  public static class CheckResult
  {
    private Set<Scope> zzMe;
    private boolean zzMs;
    
    private CheckResult(boolean paramBoolean, Set<Scope> paramSet)
    {
      zzMs = paramBoolean;
      zzMe = paramSet;
    }
    
    public static CheckResult newAuthNotRequiredResult()
    {
      return new CheckResult(false, null);
    }
    
    public static CheckResult newAuthRequiredResult(Set<Scope> paramSet)
    {
      if ((paramSet != null) && (!paramSet.isEmpty())) {}
      for (boolean bool = true;; bool = false)
      {
        zzx.zzb(bool, "A non-empty scope set is required if further auth is needed.");
        return new CheckResult(true, paramSet);
      }
    }
    
    public boolean zzic()
    {
      return zzMs;
    }
    
    public Set<Scope> zzid()
    {
      return zzMe;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.GoogleApiClient.ServerAuthCodeCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */