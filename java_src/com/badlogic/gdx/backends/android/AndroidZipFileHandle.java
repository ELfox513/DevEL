package com.badlogic.gdx.backends.android;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.ZipResourceFile;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class AndroidZipFileHandle extends AndroidFileHandle {

    /* renamed from: d */
    public boolean f3748d;

    /* renamed from: e */
    public long f3749e;

    /* renamed from: f */
    public ZipResourceFile f3750f;

    /* renamed from: g */
    public String f3751g;

    public AndroidZipFileHandle(String str) {
        super((AssetManager) null, str, Files.FileType.Internal);
        m24301g();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public boolean exists() {
        return this.f3748d || this.f3750f.m24287b(m24302f()).length != 0;
    }

    /* renamed from: f */
    public final String m24302f() {
        return this.f3751g;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle
    public AssetFileDescriptor getAssetFileDescriptor() {
        return this.f3750f.getAssetFileDescriptor(m24302f());
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public boolean isDirectory() {
        return !this.f3748d;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public long length() {
        if (this.f3748d) {
            return this.f3749e;
        }
        return 0L;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public FileHandle[] list() {
        ZipResourceFile.ZipEntryRO[] m24287b = this.f3750f.m24287b(m24302f());
        FileHandle[] fileHandleArr = new FileHandle[m24287b.length - 1];
        int length = m24287b.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (m24287b[i2].mFileName.length() != m24302f().length()) {
                fileHandleArr[i] = new AndroidZipFileHandle(m24287b[i2].mFileName);
                i++;
            }
        }
        return fileHandleArr;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public FileHandle child(String str) {
        if (this.f3883a.getPath().length() == 0) {
            return new AndroidZipFileHandle(new File(str), this.f3884b);
        }
        return new AndroidZipFileHandle(new File(this.f3883a, str), this.f3884b);
    }

    /* renamed from: g */
    public final void m24301g() {
        this.f3751g = this.f3883a.getPath().replace('\\', '/');
        ZipResourceFile expansionFile = ((AndroidFiles) Gdx.files).getExpansionFile();
        this.f3750f = expansionFile;
        AssetFileDescriptor assetFileDescriptor = expansionFile.getAssetFileDescriptor(m24302f());
        if (assetFileDescriptor != null) {
            this.f3748d = true;
            this.f3749e = assetFileDescriptor.getLength();
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
        } else {
            this.f3748d = false;
        }
        if (isDirectory()) {
            this.f3751g += "/";
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public FileHandle parent() {
        File parentFile = this.f3883a.getParentFile();
        if (parentFile == null) {
            parentFile = new File("");
        }
        return new AndroidZipFileHandle(parentFile.getPath());
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public InputStream read() {
        try {
            return this.f3750f.getInputStream(m24302f());
        } catch (IOException e) {
            throw new GdxRuntimeException("Error reading file: " + this.f3883a + " (ZipResourceFile)", e);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public FileHandle sibling(String str) {
        if (this.f3883a.getPath().length() != 0) {
            return Gdx.files.getFileHandle(new File(this.f3883a.getParent(), str).getPath(), this.f3884b);
        }
        throw new GdxRuntimeException("Cannot get the sibling of the root.");
    }

    public AndroidZipFileHandle(File file, Files.FileType fileType) {
        super((AssetManager) null, file, fileType);
        m24301g();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public FileHandle[] list(FileFilter fileFilter) {
        ZipResourceFile.ZipEntryRO[] m24287b = this.f3750f.m24287b(m24302f());
        int length = m24287b.length - 1;
        FileHandle[] fileHandleArr = new FileHandle[length];
        int length2 = m24287b.length;
        int i = 0;
        for (int i2 = 0; i2 < length2; i2++) {
            if (m24287b[i2].mFileName.length() != m24302f().length()) {
                AndroidZipFileHandle androidZipFileHandle = new AndroidZipFileHandle(m24287b[i2].mFileName);
                if (fileFilter.accept(androidZipFileHandle.file())) {
                    fileHandleArr[i] = androidZipFileHandle;
                    i++;
                }
            }
        }
        if (i < length) {
            FileHandle[] fileHandleArr2 = new FileHandle[i];
            System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
            return fileHandleArr2;
        }
        return fileHandleArr;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public FileHandle[] list(FilenameFilter filenameFilter) {
        ZipResourceFile.ZipEntryRO[] m24287b = this.f3750f.m24287b(m24302f());
        int length = m24287b.length - 1;
        FileHandle[] fileHandleArr = new FileHandle[length];
        int length2 = m24287b.length;
        int i = 0;
        for (int i2 = 0; i2 < length2; i2++) {
            if (m24287b[i2].mFileName.length() != m24302f().length()) {
                String str = m24287b[i2].mFileName;
                if (filenameFilter.accept(this.f3883a, str)) {
                    fileHandleArr[i] = new AndroidZipFileHandle(str);
                    i++;
                }
            }
        }
        if (i < length) {
            FileHandle[] fileHandleArr2 = new FileHandle[i];
            System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
            return fileHandleArr2;
        }
        return fileHandleArr;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFileHandle, com.badlogic.gdx.files.FileHandle
    public FileHandle[] list(String str) {
        ZipResourceFile.ZipEntryRO[] m24287b = this.f3750f.m24287b(m24302f());
        int length = m24287b.length - 1;
        FileHandle[] fileHandleArr = new FileHandle[length];
        int length2 = m24287b.length;
        int i = 0;
        for (int i2 = 0; i2 < length2; i2++) {
            if (m24287b[i2].mFileName.length() != m24302f().length()) {
                String str2 = m24287b[i2].mFileName;
                if (str2.endsWith(str)) {
                    fileHandleArr[i] = new AndroidZipFileHandle(str2);
                    i++;
                }
            }
        }
        if (i < length) {
            FileHandle[] fileHandleArr2 = new FileHandle[i];
            System.arraycopy(fileHandleArr, 0, fileHandleArr2, 0, i);
            return fileHandleArr2;
        }
        return fileHandleArr;
    }
}
