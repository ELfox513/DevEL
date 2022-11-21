package com.badlogic.gdx.backends.android;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
public class DefaultAndroidFiles implements AndroidFiles {

    /* renamed from: a */
    public final String f3773a;

    /* renamed from: b */
    public final String f3774b;

    /* renamed from: c */
    public final AssetManager f3775c;

    /* renamed from: d */
    public ZipResourceFile f3776d = null;

    @Override // com.badlogic.gdx.Files
    public FileHandle absolute(String str) {
        return new AndroidFileHandle((AssetManager) null, str, Files.FileType.Absolute);
    }

    /* renamed from: b */
    public String m24297b(ContextWrapper contextWrapper) {
        File externalFilesDir = contextWrapper.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            String absolutePath = externalFilesDir.getAbsolutePath();
            if (!absolutePath.endsWith("/")) {
                return absolutePath + "/";
            }
            return absolutePath;
        }
        return null;
    }

    @Override // com.badlogic.gdx.Files
    public FileHandle classpath(String str) {
        return new AndroidFileHandle((AssetManager) null, str, Files.FileType.Classpath);
    }

    @Override // com.badlogic.gdx.Files
    public FileHandle external(String str) {
        return new AndroidFileHandle((AssetManager) null, str, Files.FileType.External);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFiles
    public ZipResourceFile getExpansionFile() {
        return this.f3776d;
    }

    @Override // com.badlogic.gdx.Files
    public String getExternalStoragePath() {
        return this.f3773a;
    }

    @Override // com.badlogic.gdx.Files
    public String getLocalStoragePath() {
        return this.f3774b;
    }

    @Override // com.badlogic.gdx.Files
    public boolean isExternalStorageAvailable() {
        return this.f3773a != null;
    }

    @Override // com.badlogic.gdx.Files
    public boolean isLocalStorageAvailable() {
        return true;
    }

    @Override // com.badlogic.gdx.Files
    public FileHandle local(String str) {
        return new AndroidFileHandle((AssetManager) null, str, Files.FileType.Local);
    }

    /* renamed from: a */
    public final FileHandle m24298a(FileHandle fileHandle, String str) {
        try {
            this.f3775c.open(str).close();
            return fileHandle;
        } catch (Exception unused) {
            AndroidZipFileHandle androidZipFileHandle = new AndroidZipFileHandle(str);
            if (!androidZipFileHandle.isDirectory()) {
                return androidZipFileHandle;
            }
            if (androidZipFileHandle.exists()) {
                return androidZipFileHandle;
            }
            return fileHandle;
        }
    }

    @Override // com.badlogic.gdx.Files
    public FileHandle getFileHandle(String str, Files.FileType fileType) {
        AssetManager assetManager;
        Files.FileType fileType2 = Files.FileType.Internal;
        if (fileType == fileType2) {
            assetManager = this.f3775c;
        } else {
            assetManager = null;
        }
        AndroidFileHandle androidFileHandle = new AndroidFileHandle(assetManager, str, fileType);
        if (this.f3776d != null && fileType == fileType2) {
            return m24298a(androidFileHandle, str);
        }
        return androidFileHandle;
    }

    @Override // com.badlogic.gdx.Files
    public FileHandle internal(String str) {
        AndroidFileHandle androidFileHandle = new AndroidFileHandle(this.f3775c, str, Files.FileType.Internal);
        if (this.f3776d != null) {
            return m24298a(androidFileHandle, str);
        }
        return androidFileHandle;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidFiles
    public boolean setAPKExpansion(int i, int i2) {
        Context baseContext;
        try {
            Application application = Gdx.app;
            if (application instanceof Activity) {
                baseContext = ((Activity) application).getBaseContext();
            } else if (application instanceof Fragment) {
                baseContext = ((Fragment) application).getActivity().getBaseContext();
            } else {
                throw new GdxRuntimeException("APK expansion not supported for application type");
            }
            ZipResourceFile aPKExpansionZipFile = APKExpansionSupport.getAPKExpansionZipFile(baseContext, i, i2);
            this.f3776d = aPKExpansionZipFile;
            if (aPKExpansionZipFile != null) {
                return true;
            }
            return false;
        } catch (IOException unused) {
            throw new GdxRuntimeException("APK expansion main version " + i + " or patch version " + i2 + " couldn't be opened!");
        }
    }

    public DefaultAndroidFiles(AssetManager assetManager, ContextWrapper contextWrapper, boolean z) {
        this.f3775c = assetManager;
        String absolutePath = contextWrapper.getFilesDir().getAbsolutePath();
        if (!absolutePath.endsWith("/")) {
            absolutePath = absolutePath + "/";
        }
        this.f3774b = absolutePath;
        if (z) {
            this.f3773a = m24297b(contextWrapper);
        } else {
            this.f3773a = null;
        }
    }
}
