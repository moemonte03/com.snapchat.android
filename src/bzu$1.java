import java.io.InputStream;

final class bzu$1
  extends InputStream
{
  bzu$1(bzu parambzu) {}
  
  public final int available()
  {
    return (int)Math.min(a.b, 2147483647L);
  }
  
  public final void close() {}
  
  public final int read()
  {
    if (a.b > 0L) {
      return a.f() & 0xFF;
    }
    return -1;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return a.a(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public final String toString()
  {
    return a + ".inputStream()";
  }
}

/* Location:
 * Qualified Name:     bzu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */