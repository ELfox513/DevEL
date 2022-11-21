package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
/* loaded from: classes.dex */
public abstract class AsynchronousAssetLoader<T, P extends AssetLoaderParameters<T>> extends AssetLoader<T, P> {
    public AsynchronousAssetLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    public abstract void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, P p);

    public abstract T loadSync(AssetManager assetManager, String str, FileHandle fileHandle, P p);

    public void unloadAsync(AssetManager assetManager, String str, FileHandle fileHandle, P p) {
    }
}
