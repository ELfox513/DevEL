package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public abstract class AssetLoader<T, P extends AssetLoaderParameters<T>> {

    /* renamed from: a */
    public FileHandleResolver f3547a;

    public abstract Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, P p);

    public FileHandle resolve(String str) {
        return this.f3547a.resolve(str);
    }

    public AssetLoader(FileHandleResolver fileHandleResolver) {
        this.f3547a = fileHandleResolver;
    }
}
