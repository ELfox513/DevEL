package com.badlogic.gdx;

import com.badlogic.gdx.files.FileHandle;
/* loaded from: classes.dex */
public interface Files {

    /* loaded from: classes.dex */
    public enum FileType {
        Classpath,
        Internal,
        External,
        Absolute,
        Local
    }

    FileHandle absolute(String str);

    FileHandle classpath(String str);

    FileHandle external(String str);

    String getExternalStoragePath();

    FileHandle getFileHandle(String str, FileType fileType);

    String getLocalStoragePath();

    FileHandle internal(String str);

    boolean isExternalStorageAvailable();

    boolean isLocalStorageAvailable();

    FileHandle local(String str);
}
