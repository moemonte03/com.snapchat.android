import android.view.MotionEvent;
import com.snapchat.android.ui.snapeditormotion.SwipeHandlerType;

public final class ary
  implements arx
{
  public final SwipeHandlerType a(aqd paramaqd, ase paramase, int paramInt)
  {
    int j = 1;
    if (f == b[0])
    {
      i = 1;
      if (i == 0) {
        if (b[1] == -1) {
          break label68;
        }
      }
    }
    label68:
    for (int i = j;; i = 0)
    {
      if (i == 0)
      {
        paramase.a(paramInt);
        paramaqd.a(a[paramInt]);
      }
      return null;
      i = 0;
      break;
    }
  }
  
  public final SwipeHandlerType a(aqd paramaqd, ase paramase, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    float f;
    if (paramInt1 > 1)
    {
      f = d;
      if (Math.abs(f - a[1]) > paramInt2)
      {
        a[1] = Float.MAX_VALUE;
        if (g) {
          break label60;
        }
      }
    }
    for (;;)
    {
      paramaqd.a(bool, f);
      return null;
      label60:
      bool = false;
    }
  }
  
  public final SwipeHandlerType a(aqd paramaqd, ase paramase, MotionEvent paramMotionEvent)
  {
    int i = 1;
    if (paramase.a())
    {
      paramaqd.e();
      g = false;
      return SwipeHandlerType.NO_SWIPE_STARTED;
    }
    if ((a[1] == Float.MAX_VALUE) && (f == 1)) {}
    for (;;)
    {
      if (i != 0) {
        paramaqd.e();
      }
      return null;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     ary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */