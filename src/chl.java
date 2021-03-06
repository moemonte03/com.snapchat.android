import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.joda.convert.FromString;

public abstract class chl
  implements Serializable
{
  public static final chl a = new clm("UTC", "UTC", 0, 0);
  public static cln b = e();
  private static clo d;
  private static Set<String> e;
  private static volatile chl f;
  private static ckx g;
  private static Map<String, SoftReference<chl>> h;
  private static Map<String, String> i;
  public final String c;
  
  static
  {
    clo localclo = d();
    Set localSet = localclo.a();
    if ((localSet == null) || (localSet.size() == 0)) {
      throw new IllegalArgumentException("The provider doesn't have any available ids");
    }
    if (!localSet.contains("UTC")) {
      throw new IllegalArgumentException("The provider doesn't support UTC");
    }
    if (!a.equals(localclo.a("UTC"))) {
      throw new IllegalArgumentException("Invalid UTC zone provided");
    }
    d = localclo;
    e = localSet;
  }
  
  public chl(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Id must not be null");
    }
    c = paramString;
  }
  
  public static chl a()
  {
    Object localObject1 = f;
    if (localObject1 == null)
    {
      for (;;)
      {
        Object localObject4;
        chl localchl;
        String str;
        try
        {
          localObject4 = f;
          localObject1 = localObject4;
          if (localObject4 == null)
          {
            localchl = null;
            localObject4 = null;
            localObject1 = localchl;
          }
        }
        finally {}
        try
        {
          str = System.getProperty("user.timezone");
          localObject1 = localObject4;
          if (str != null)
          {
            localObject1 = localchl;
            localchl = a(str);
            localObject1 = localchl;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          localObject5 = localObject2;
        }
        catch (RuntimeException localRuntimeException)
        {
          Object localObject5;
          localObject3 = localObject5;
        }
      }
      localObject4 = localObject1;
      if (localObject1 == null) {
        localObject4 = a(TimeZone.getDefault());
      }
      localObject1 = localObject4;
      if (localObject4 == null) {
        localObject1 = a;
      }
      f = (chl)localObject1;
      return (chl)localObject1;
    }
    Object localObject3;
    return (chl)localObject3;
  }
  
  public static chl a(int paramInt)
  {
    if ((paramInt < -86399999) || (paramInt > 86399999)) {
      throw new IllegalArgumentException("Millis out of range: " + paramInt);
    }
    return a(b(paramInt), paramInt);
  }
  
  @FromString
  public static chl a(String paramString)
  {
    Object localObject;
    if (paramString == null) {
      localObject = a();
    }
    chl localchl;
    do
    {
      return (chl)localObject;
      if (paramString.equals("UTC")) {
        return a;
      }
      localchl = d.a(paramString);
      localObject = localchl;
    } while (localchl != null);
    if ((paramString.startsWith("+")) || (paramString.startsWith("-")))
    {
      int j = c(paramString);
      if (j == 0L) {
        return a;
      }
      return a(b(j), j);
    }
    throw new IllegalArgumentException("The datetime zone id '" + paramString + "' is not recognised");
  }
  
  private static chl a(String paramString, int paramInt)
  {
    if (paramInt == 0) {}
    for (;;)
    {
      try
      {
        localObject = a;
        return (chl)localObject;
      }
      finally {}
      if (h == null) {
        h = new HashMap();
      }
      Object localObject = (Reference)h.get(paramString);
      if (localObject != null)
      {
        chl localchl = (chl)((Reference)localObject).get();
        localObject = localchl;
        if (localchl != null) {}
      }
      else
      {
        localObject = new clm(paramString, null, paramInt, paramInt);
        h.put(paramString, new SoftReference(localObject));
      }
    }
  }
  
  public static chl a(TimeZone paramTimeZone)
  {
    Object localObject2;
    if (paramTimeZone == null) {
      localObject2 = a();
    }
    String str1;
    String str2;
    Object localObject1;
    do
    {
      return (chl)localObject2;
      str1 = paramTimeZone.getID();
      if (str1.equals("UTC")) {
        return a;
      }
      localObject2 = null;
      str2 = b(str1);
      if (str2 != null) {
        localObject2 = d.a(str2);
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = d.a(str1);
      }
      localObject2 = localObject1;
    } while (localObject1 != null);
    if (str2 == null)
    {
      paramTimeZone = paramTimeZone.getID();
      if ((paramTimeZone.startsWith("GMT+")) || (paramTimeZone.startsWith("GMT-")))
      {
        int j = c(paramTimeZone.substring(3));
        if (j == 0L) {
          return a;
        }
        return a(b(j), j);
      }
    }
    throw new IllegalArgumentException("The datetime zone id '" + str1 + "' is not recognised");
  }
  
  public static String b(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramInt >= 0) {
      localStringBuffer.append('+');
    }
    for (;;)
    {
      j = paramInt / 3600000;
      clc.a(localStringBuffer, j, 2);
      paramInt -= j * 3600000;
      j = paramInt / 60000;
      localStringBuffer.append(':');
      clc.a(localStringBuffer, j, 2);
      paramInt -= j * 60000;
      if (paramInt != 0) {
        break;
      }
      return localStringBuffer.toString();
      localStringBuffer.append('-');
      paramInt = -paramInt;
    }
    int j = paramInt / 1000;
    localStringBuffer.append(':');
    clc.a(localStringBuffer, j, 2);
    paramInt -= j * 1000;
    if (paramInt == 0) {
      return localStringBuffer.toString();
    }
    localStringBuffer.append('.');
    clc.a(localStringBuffer, paramInt, 3);
    return localStringBuffer.toString();
  }
  
  private static String b(String paramString)
  {
    try
    {
      Map localMap = i;
      Object localObject = localMap;
      if (localMap == null)
      {
        localObject = new HashMap();
        ((Map)localObject).put("GMT", "UTC");
        ((Map)localObject).put("WET", "WET");
        ((Map)localObject).put("CET", "CET");
        ((Map)localObject).put("MET", "CET");
        ((Map)localObject).put("ECT", "CET");
        ((Map)localObject).put("EET", "EET");
        ((Map)localObject).put("MIT", "Pacific/Apia");
        ((Map)localObject).put("HST", "Pacific/Honolulu");
        ((Map)localObject).put("AST", "America/Anchorage");
        ((Map)localObject).put("PST", "America/Los_Angeles");
        ((Map)localObject).put("MST", "America/Denver");
        ((Map)localObject).put("PNT", "America/Phoenix");
        ((Map)localObject).put("CST", "America/Chicago");
        ((Map)localObject).put("EST", "America/New_York");
        ((Map)localObject).put("IET", "America/Indiana/Indianapolis");
        ((Map)localObject).put("PRT", "America/Puerto_Rico");
        ((Map)localObject).put("CNT", "America/St_Johns");
        ((Map)localObject).put("AGT", "America/Argentina/Buenos_Aires");
        ((Map)localObject).put("BET", "America/Sao_Paulo");
        ((Map)localObject).put("ART", "Africa/Cairo");
        ((Map)localObject).put("CAT", "Africa/Harare");
        ((Map)localObject).put("EAT", "Africa/Addis_Ababa");
        ((Map)localObject).put("NET", "Asia/Yerevan");
        ((Map)localObject).put("PLT", "Asia/Karachi");
        ((Map)localObject).put("IST", "Asia/Kolkata");
        ((Map)localObject).put("BST", "Asia/Dhaka");
        ((Map)localObject).put("VST", "Asia/Ho_Chi_Minh");
        ((Map)localObject).put("CTT", "Asia/Shanghai");
        ((Map)localObject).put("JST", "Asia/Tokyo");
        ((Map)localObject).put("ACT", "Australia/Darwin");
        ((Map)localObject).put("AET", "Australia/Sydney");
        ((Map)localObject).put("SST", "Pacific/Guadalcanal");
        ((Map)localObject).put("NST", "Pacific/Auckland");
        i = (Map)localObject;
      }
      paramString = (String)((Map)localObject).get(paramString);
      return paramString;
    }
    finally {}
  }
  
  public static Set<String> b()
  {
    return e;
  }
  
  private static int c(String paramString)
  {
    cil local1 = new cil()
    {
      public final chg a(chl paramAnonymouschl)
      {
        return this;
      }
      
      public final chl a()
      {
        return null;
      }
      
      public final chg b()
      {
        return this;
      }
      
      public final String toString()
      {
        return getClass().getName();
      }
    };
    return -(int)f().a(local1).a(paramString);
  }
  
  private static clo d()
  {
    localObject4 = null;
    for (;;)
    {
      try
      {
        localObject5 = System.getProperty("org.joda.time.DateTimeZone.Provider");
        localObject1 = localObject4;
        if (localObject5 == null) {}
      }
      catch (SecurityException localSecurityException)
      {
        Object localObject5;
        Object localObject1;
        Object localObject2;
        Object localObject3 = localObject4;
        continue;
        continue;
      }
      try
      {
        localObject1 = (clo)Class.forName((String)localObject5).newInstance();
        if (localObject1 != null) {}
      }
      catch (Exception localException1)
      {
        try
        {
          localObject4 = new clq("org/joda/time/tz/data");
          localObject1 = localObject4;
          localObject4 = localObject1;
          if (localObject1 == null) {
            localObject4 = new clp();
          }
          return (clo)localObject4;
        }
        catch (Exception localException2)
        {
          localObject5 = Thread.currentThread();
          ((Thread)localObject5).getThreadGroup().uncaughtException((Thread)localObject5, localException2);
        }
        localException1 = localException1;
        localObject5 = Thread.currentThread();
        ((Thread)localObject5).getThreadGroup().uncaughtException((Thread)localObject5, localException1);
        localObject2 = localObject4;
      }
    }
  }
  
  private static cln e()
  {
    for (;;)
    {
      try
      {
        localObject1 = System.getProperty("org.joda.time.DateTimeZone.NameProvider");
        if (localObject1 == null) {
          continue;
        }
      }
      catch (SecurityException localSecurityException)
      {
        Object localObject1;
        Object localObject4;
        Object localObject2;
        Object localObject3 = null;
        continue;
      }
      try
      {
        localObject1 = (cln)Class.forName((String)localObject1).newInstance();
        localObject4 = localObject1;
        if (localObject1 == null) {
          localObject4 = new cll();
        }
        return (cln)localObject4;
      }
      catch (Exception localException)
      {
        localObject4 = Thread.currentThread();
        ((Thread)localObject4).getThreadGroup().uncaughtException((Thread)localObject4, localException);
      }
      localObject2 = null;
    }
  }
  
  private static ckx f()
  {
    try
    {
      if (g == null) {
        g = new cky().a(null, true, 4).a();
      }
      ckx localckx = g;
      return localckx;
    }
    finally {}
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    int j = b(paramLong2);
    paramLong2 = paramLong1 - j;
    if (b(paramLong2) == j) {
      return paramLong2;
    }
    return e(paramLong1);
  }
  
  public final long a(chl paramchl, long paramLong)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = a();
    }
    if (localchl == this) {
      return paramLong;
    }
    return localchl.a(d(paramLong), paramLong);
  }
  
  public abstract String a(long paramLong);
  
  public abstract int b(long paramLong);
  
  public int c(long paramLong)
  {
    int j = b(paramLong);
    long l = paramLong - j;
    int k = b(l);
    if (j != k)
    {
      if ((j - k < 0) && (f(l) != f(paramLong - k))) {
        return j;
      }
    }
    else if (j >= 0)
    {
      paramLong = g(l);
      if (paramLong < l)
      {
        int m = b(paramLong);
        if (l - paramLong <= m - j) {
          return m;
        }
      }
    }
    return k;
  }
  
  public abstract boolean c();
  
  public final long d(long paramLong)
  {
    int j = b(paramLong);
    long l = j + paramLong;
    if (((paramLong ^ l) < 0L) && ((j ^ paramLong) >= 0L)) {
      throw new ArithmeticException("Adding time zone offset caused overflow");
    }
    return l;
  }
  
  public final long e(long paramLong)
  {
    long l2 = Long.MAX_VALUE;
    int j = b(paramLong);
    int k = b(paramLong - j);
    long l3;
    long l1;
    if ((j != k) && (j < 0))
    {
      l3 = f(paramLong - j);
      l1 = l3;
      if (l3 == paramLong - j) {
        l1 = Long.MAX_VALUE;
      }
      l3 = f(paramLong - k);
      if (l3 != paramLong - k) {
        break label134;
      }
    }
    for (;;)
    {
      if (l1 != l2) {}
      for (;;)
      {
        l1 = paramLong - j;
        if (((paramLong ^ l1) < 0L) && ((j ^ paramLong) < 0L)) {
          throw new ArithmeticException("Subtracting time zone offset caused overflow");
        }
        return l1;
        j = k;
      }
      label134:
      l2 = l3;
    }
  }
  
  public abstract boolean equals(Object paramObject);
  
  public abstract long f(long paramLong);
  
  public abstract long g(long paramLong);
  
  public int hashCode()
  {
    return c.hashCode() + 57;
  }
  
  public String toString()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     chl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */