import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class bql$a
  extends Handler
{
  private final bql a;
  
  public bql$a(Looper paramLooper, bql parambql)
  {
    super(paramLooper);
    a = parambql;
  }
  
  public final void handleMessage(final Message paramMessage)
  {
    long l;
    switch (what)
    {
    default: 
      bqe.a.post(new Runnable()
      {
        public final void run()
        {
          throw new AssertionError("Unhandled stats message." + paramMessagewhat);
        }
      });
      return;
    case 0: 
      paramMessage = a;
      d += 1L;
      return;
    case 1: 
      paramMessage = a;
      e += 1L;
      return;
    case 2: 
      localbql = a;
      l = arg1;
      m += 1;
      g = (l + g);
      i = m;
      j = (g / i);
      return;
    case 3: 
      localbql = a;
      l = arg1;
      n += 1;
      h = (l + h);
      i = m;
      k = (h / i);
      return;
    }
    bql localbql = a;
    paramMessage = (Long)obj;
    l += 1;
    f += paramMessage.longValue();
    int i = l;
    i = (f / i);
  }
}

/* Location:
 * Qualified Name:     bql.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */