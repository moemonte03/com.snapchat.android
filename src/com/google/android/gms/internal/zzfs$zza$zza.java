package com.google.android.gms.internal;

import android.os.IBinder;

class zzfs$zza$zza
  implements zzfs
{
  private IBinder zzle;
  
  zzfs$zza$zza(IBinder paramIBinder)
  {
    zzle = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return zzle;
  }
  
  /* Error */
  public boolean isValidPurchase(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   5: astore 4
    //   7: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore 5
    //   12: aload 4
    //   14: ldc 31
    //   16: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   19: aload 4
    //   21: aload_1
    //   22: invokevirtual 38	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getfield 18	com/google/android/gms/internal/zzfs$zza$zza:zzle	Landroid/os/IBinder;
    //   29: iconst_1
    //   30: aload 4
    //   32: aload 5
    //   34: iconst_0
    //   35: invokeinterface 44 5 0
    //   40: pop
    //   41: aload 5
    //   43: invokevirtual 47	android/os/Parcel:readException	()V
    //   46: aload 5
    //   48: invokevirtual 51	android/os/Parcel:readInt	()I
    //   51: istore_2
    //   52: iload_2
    //   53: ifeq +15 -> 68
    //   56: aload 5
    //   58: invokevirtual 54	android/os/Parcel:recycle	()V
    //   61: aload 4
    //   63: invokevirtual 54	android/os/Parcel:recycle	()V
    //   66: iload_3
    //   67: ireturn
    //   68: iconst_0
    //   69: istore_3
    //   70: goto -14 -> 56
    //   73: astore_1
    //   74: aload 5
    //   76: invokevirtual 54	android/os/Parcel:recycle	()V
    //   79: aload 4
    //   81: invokevirtual 54	android/os/Parcel:recycle	()V
    //   84: aload_1
    //   85: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	zza
    //   0	86	1	paramString	String
    //   51	2	2	i	int
    //   1	69	3	bool	boolean
    //   5	75	4	localParcel1	android.os.Parcel
    //   10	65	5	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   12	52	73	finally
  }
  
  /* Error */
  public void zza(zzfr paramzzfr)
  {
    // Byte code:
    //   0: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 29	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 31
    //   11: invokevirtual 35	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +42 -> 57
    //   18: aload_1
    //   19: invokeinterface 59 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 62	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 18	com/google/android/gms/internal/zzfs$zza$zza:zzle	Landroid/os/IBinder;
    //   34: iconst_2
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 44 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 47	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 54	android/os/Parcel:recycle	()V
    //   52: aload_2
    //   53: invokevirtual 54	android/os/Parcel:recycle	()V
    //   56: return
    //   57: aconst_null
    //   58: astore_1
    //   59: goto -34 -> 25
    //   62: astore_1
    //   63: aload_3
    //   64: invokevirtual 54	android/os/Parcel:recycle	()V
    //   67: aload_2
    //   68: invokevirtual 54	android/os/Parcel:recycle	()V
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	zza
    //   0	73	1	paramzzfr	zzfr
    //   3	65	2	localParcel1	android.os.Parcel
    //   7	57	3	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	62	finally
    //   18	25	62	finally
    //   25	48	62	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfs.zza.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */