package com.badlogic.gdx.backends.android;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes.dex */
public class AndroidFileHandle extends FileHandle {

    /* renamed from: c */
    public final AssetManager f3616c;

    public AndroidFileHandle(AssetManager assetManager, String str, Files.FileType fileType) {
        super(str.replace('\\', '/'), fileType);
        this.f3616c = assetManager;
    }

    public AssetFileDescriptor getAssetFileDescriptor() {
        AssetManager assetManager = this.f3616c;
        if (assetManager != null) {
            return assetManager.openFd(path());
        }
        return null;
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public long lastModified() {
        return super.lastModified();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle[] list() {
        if (this.f3884b == Files.FileType.Internal) {
            try {
                String[] list = this.f3616c.list(this.f3883a.getPath());
                int length = list.length;
                FileHandle[] fileHandleArr = new FileHandle[length];
                for (int i = 0; i < length; i++) {
                    fileHandleArr[i] = new AndroidFileHandle(this.f3616c, new File(this.f3883a, list[i]), this.f3884b);
                }
                return fileHandleArr;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error listing children: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        }
        return super.list();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle child(String str) {
        String replace = str.replace('\\', '/');
        if (this.f3883a.getPath().length() == 0) {
            return new AndroidFileHandle(this.f3616c, new File(replace), this.f3884b);
        }
        return new AndroidFileHandle(this.f3616c, new File(this.f3883a, replace), this.f3884b);
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public boolean exists() {
        if (this.f3884b == Files.FileType.Internal) {
            String path = this.f3883a.getPath();
            try {
                this.f3616c.open(path).close();
                return true;
            } catch (Exception unused) {
                try {
                    if (this.f3616c.list(path).length > 0) {
                        return true;
                    }
                    return false;
                } catch (Exception unused2) {
                    return false;
                }
            }
        }
        return super.exists();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public File file() {
        if (this.f3884b == Files.FileType.Local) {
            return new File(Gdx.files.getLocalStoragePath(), this.f3883a.getPath());
        }
        return super.file();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public boolean isDirectory() {
        if (this.f3884b == Files.FileType.Internal) {
            try {
                if (this.f3616c.list(this.f3883a.getPath()).length <= 0) {
                    return false;
                }
                return true;
            } catch (IOException unused) {
                return false;
            }
        }
        return super.isDirectory();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public long length() {
        if (this.f3884b == Files.FileType.Internal) {
            AssetFileDescriptor assetFileDescriptor = null;
            try {
                assetFileDescriptor = this.f3616c.openFd(this.f3883a.getPath());
                long length = assetFileDescriptor.getLength();
                try {
                    assetFileDescriptor.close();
                } catch (IOException unused) {
                }
                return length;
            } catch (IOException unused2) {
                if (assetFileDescriptor != null) {
                    try {
                        assetFileDescriptor.close();
                    } catch (IOException unused3) {
                    }
                }
            } catch (Throwable th) {
                if (assetFileDescriptor != null) {
                    try {
                        assetFileDescriptor.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        }
        return super.length();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public ByteBuffer map(FileChannel.MapMode mapMode) {
        long startOffset;
        long declaredLength;
        FileInputStream fileInputStream;
        if (this.f3884b == Files.FileType.Internal) {
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = getAssetFileDescriptor();
                    startOffset = assetFileDescriptor.getStartOffset();
                    declaredLength = assetFileDescriptor.getDeclaredLength();
                    fileInputStream = new FileInputStream(assetFileDescriptor.getFileDescriptor());
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                MappedByteBuffer map = fileInputStream.getChannel().map(mapMode, startOffset, declaredLength);
                map.order(ByteOrder.nativeOrder());
                StreamUtils.closeQuietly(fileInputStream);
                return map;
            } catch (Exception e2) {
                e = e2;
                throw new GdxRuntimeException("Error memory mapping file: " + this + " (" + this.f3884b + ")", e);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                StreamUtils.closeQuietly(fileInputStream2);
                throw th;
            }
        }
        return super.map(mapMode);
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle parent() {
        File parentFile = this.f3883a.getParentFile();
        if (parentFile == null) {
            if (this.f3884b == Files.FileType.Absolute) {
                parentFile = new File("/");
            } else {
                parentFile = new File("");
            }
        }
        return new AndroidFileHandle(this.f3616c, parentFile, this.f3884b);
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public InputStream read() {
        if (this.f3884b == Files.FileType.Internal) {
            try {
                return this.f3616c.open(this.f3883a.getPath());
            } catch (IOException e) {
                throw new GdxRuntimeException("Error reading file: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        }
        return super.read();
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle sibling(String str) {
        String replace = str.replace('\\', '/');
        if (this.f3883a.getPath().length() != 0) {
            return Gdx.files.getFileHandle(new File(this.f3883a.getParent(), replace).getPath(), this.f3884b);
        }
        throw new GdxRuntimeException("Cannot get the sibling of the root.");
    }

    public AndroidFileHandle(AssetManager assetManager, File file, Files.FileType fileType) {
        super(file, fileType);
        this.f3616c = assetManager;
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle[] list(FileFilter fileFilter) {
        if (this.f3884b == Files.FileType.Internal) {
            try {
                String[] list = this.f3616c.list(this.f3883a.getPath());
                FileHandle[] fileHandleArr = new FileHandle[list.length];
                int i = 0;
                for (String str : list) {
                    AndroidFileHandle androidFileHandle = new AndroidFileHandle(this.f3616c, new File(this.f3883a, str), this.f3884b);
                    if (fileFilter.accept(androidFileHandle.file())) {
                        fileHandleArr[i] = androidFileHandle;
                        i++;
                    }
                }
                if (i < list.length) {
                    FileHandle[] fileHandleArr2 = new FileHandle[i];
                    System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
                    return fileHandleArr2;
                }
                return fileHandleArr;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error listing children: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        }
        return super.list(fileFilter);
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle[] list(FilenameFilter filenameFilter) {
        if (this.f3884b == Files.FileType.Internal) {
            try {
                String[] list = this.f3616c.list(this.f3883a.getPath());
                FileHandle[] fileHandleArr = new FileHandle[list.length];
                int i = 0;
                for (String str : list) {
                    if (filenameFilter.accept(this.f3883a, str)) {
                        fileHandleArr[i] = new AndroidFileHandle(this.f3616c, new File(this.f3883a, str), this.f3884b);
                        i++;
                    }
                }
                if (i < list.length) {
                    FileHandle[] fileHandleArr2 = new FileHandle[i];
                    System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
                    return fileHandleArr2;
                }
                return fileHandleArr;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error listing children: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        }
        return super.list(filenameFilter);
    }

    @Override // com.badlogic.gdx.files.FileHandle
    public FileHandle[] list(String str) {
        if (this.f3884b == Files.FileType.Internal) {
            try {
                String[] list = this.f3616c.list(this.f3883a.getPath());
                FileHandle[] fileHandleArr = new FileHandle[list.length];
                int i = 0;
                for (String str2 : list) {
                    if (str2.endsWith(str)) {
                        fileHandleArr[i] = new AndroidFileHandle(this.f3616c, new File(this.f3883a, str2), this.f3884b);
                        i++;
                    }
                }
                if (i < list.length) {
                    FileHandle[] fileHandleArr2 = new FileHandle[i];
                    System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
                    return fileHandleArr2;
                }
                return fileHandleArr;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error listing children: " + this.f3883a + " (" + this.f3884b + ")", e);
            }
        }
        return super.list(str);
    }
}
