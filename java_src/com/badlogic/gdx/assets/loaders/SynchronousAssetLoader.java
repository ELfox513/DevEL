package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
/* loaded from: classes.dex */
public abstract class SynchronousAssetLoader<T, P extends AssetLoaderParameters<T>> extends AssetLoader<T, P> {
    public SynchronousAssetLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    public abstract T load(AssetManager assetManager, String str, FileHandle fileHandle, P p);
}
