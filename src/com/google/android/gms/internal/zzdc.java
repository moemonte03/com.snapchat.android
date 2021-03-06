package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

@zzgi
public final class zzdc
{
  public static void zza(Context paramContext, zzb paramzzb)
  {
    if (!zzbe.zzbD().zzA(paramContext))
    {
      paramzzb.zze(new Bundle());
      return;
    }
    new zza(paramContext, paramzzb);
  }
  
  public static final class zza
    implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
  {
    private final Object zznh = new Object();
    private final zzdc.zzb zzrO;
    private final zzdd zzrP;
    
    public zza(Context paramContext, zzdc.zzb paramzzb)
    {
      this(paramContext, paramzzb, false);
    }
    
    zza(Context paramContext, zzdc.zzb paramzzb, boolean paramBoolean)
    {
      zzrO = paramzzb;
      zzrP = new zzdd(paramContext, this, this, 7095000);
      if (!paramBoolean) {
        zzrP.connect();
      }
    }
    
    public final void onConnected(Bundle paramBundle)
    {
      paramBundle = new Bundle();
      Object localObject2 = zznh;
      for (;;)
      {
        try
        {
          Object localObject1 = zzrP.zzcH();
          if (localObject1 != null)
          {
            localObject1 = ((zzde)localObject1).zzcI();
            continue;
          }
        }
        catch (IllegalStateException localIllegalStateException)
        {
          localIllegalStateException = localIllegalStateException;
          zzhx.zzd("Error when get Gservice values", localIllegalStateException);
          if ((zzrP.isConnected()) || (zzrP.isConnecting()))
          {
            zzrP.disconnect();
            continue;
          }
        }
        catch (RemoteException localRemoteException)
        {
          zzhx.zzd("Error when get Gservice values", localRemoteException);
          if ((zzrP.isConnected()) || (zzrP.isConnecting()))
          {
            zzrP.disconnect();
            continue;
          }
        }
        finally
        {
          if ((zzrP.isConnected()) || (zzrP.isConnecting())) {
            zzrP.disconnect();
          }
        }
        Bundle localBundle = paramBundle;
      }
    }
    
    public final void onConnectionFailed(ConnectionResult paramConnectionResult)
    {
      zzrO.zze(new Bundle());
    }
    
    public final void onConnectionSuspended(int paramInt)
    {
      zzhx.zzY("Disconnected from remote ad request service.");
    }
  }
  
  public static abstract interface zzb
  {
    public abstract void zze(Bundle paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */