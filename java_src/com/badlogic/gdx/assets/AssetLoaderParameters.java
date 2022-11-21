package com.badlogic.gdx.assets;
/* loaded from: classes.dex */
public class AssetLoaderParameters<T> {
    public LoadedCallback loadedCallback;

    /* loaded from: classes.dex */
    public interface LoadedCallback {
        void finishedLoading(AssetManager assetManager, String str, Class cls);
    }
}
