package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class LoaderManager
{
  private static void enableDebugLogging$1385ff()
  {
    LoaderManagerImpl.DEBUG = false;
  }
  
  public abstract void destroyLoader(int paramInt);
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract <D> Loader<D> getLoader(int paramInt);
  
  public boolean hasRunningLoaders()
  {
    return false;
  }
  
  public abstract <D> Loader<D> initLoader$71be8de6(int paramInt, LoaderCallbacks<D> paramLoaderCallbacks);
  
  public abstract <D> Loader<D> restartLoader$71be8de6(int paramInt, LoaderCallbacks<D> paramLoaderCallbacks);
  
  public static abstract interface LoaderCallbacks<D>
  {
    public abstract Loader<D> onCreateLoader(int paramInt, Bundle paramBundle);
    
    public abstract void onLoadFinished(Loader<D> paramLoader, D paramD);
    
    public abstract void onLoaderReset(Loader<D> paramLoader);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.LoaderManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */