package com.badlogic.gdx.assets;

import com.badlogic.gdx.files.FileHandle;
/* loaded from: classes.dex */
public class AssetDescriptor<T> {
    public FileHandle file;
    public final String fileName;
    public final AssetLoaderParameters params;
    public final Class<T> type;

    public AssetDescriptor(String str, Class<T> cls) {
        this(str, cls, (AssetLoaderParameters) null);
    }

    public AssetDescriptor(FileHandle fileHandle, Class<T> cls) {
        this(fileHandle, cls, (AssetLoaderParameters) null);
    }

    public String toString() {
        return this.fileName + ", " + this.type.getName();
    }

    public AssetDescriptor(String str, Class<T> cls, AssetLoaderParameters<T> assetLoaderParameters) {
        this.fileName = str;
        this.type = cls;
        this.params = assetLoaderParameters;
    }

    public AssetDescriptor(FileHandle fileHandle, Class<T> cls, AssetLoaderParameters<T> assetLoaderParameters) {
        this.fileName = fileHandle.path();
        this.file = fileHandle;
        this.type = cls;
        this.params = assetLoaderParameters;
    }
}
