package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import java.io.File;

public abstract class DocumentFile
{
  static final String TAG = "DocumentFile";
  private final DocumentFile mParent;
  
  DocumentFile(DocumentFile paramDocumentFile)
  {
    mParent = paramDocumentFile;
  }
  
  private DocumentFile findFile(String paramString)
  {
    DocumentFile[] arrayOfDocumentFile = listFiles();
    int j = arrayOfDocumentFile.length;
    int i = 0;
    while (i < j)
    {
      DocumentFile localDocumentFile = arrayOfDocumentFile[i];
      if (paramString.equals(localDocumentFile.getName())) {
        return localDocumentFile;
      }
      i += 1;
    }
    return null;
  }
  
  private static DocumentFile fromFile(File paramFile)
  {
    return new RawDocumentFile(null, paramFile);
  }
  
  private static DocumentFile fromSingleUri(Context paramContext, Uri paramUri)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return new SingleDocumentFile(paramContext, paramUri);
    }
    return null;
  }
  
  private static DocumentFile fromTreeUri(Context paramContext, Uri paramUri)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new TreeDocumentFile(null, paramContext, DocumentsContractApi21.prepareTreeUri(paramUri));
    }
    return null;
  }
  
  private DocumentFile getParentFile()
  {
    return mParent;
  }
  
  private static boolean isDocumentUri(Context paramContext, Uri paramUri)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return DocumentsContractApi19.isDocumentUri(paramContext, paramUri);
    }
    return false;
  }
  
  public abstract boolean canRead();
  
  public abstract boolean canWrite();
  
  public abstract DocumentFile createDirectory(String paramString);
  
  public abstract DocumentFile createFile(String paramString1, String paramString2);
  
  public abstract boolean delete();
  
  public abstract boolean exists();
  
  public abstract String getName();
  
  public abstract String getType();
  
  public abstract Uri getUri();
  
  public abstract boolean isDirectory();
  
  public abstract boolean isFile();
  
  public abstract long lastModified();
  
  public abstract long length();
  
  public abstract DocumentFile[] listFiles();
  
  public abstract boolean renameTo(String paramString);
}

/* Location:
 * Qualified Name:     android.support.v4.provider.DocumentFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */