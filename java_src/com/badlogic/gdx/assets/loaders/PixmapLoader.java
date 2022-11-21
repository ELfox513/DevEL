package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class PixmapLoader extends AsynchronousAssetLoader<Pixmap, PixmapParameter> {

    /* renamed from: b */
    public Pixmap f3557b;

    /* loaded from: classes.dex */
    public static class PixmapParameter extends AssetLoaderParameters<Pixmap> {
    }

    public PixmapLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, PixmapParameter pixmapParameter) {
        return null;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, PixmapParameter pixmapParameter) {
        this.f3557b = null;
        this.f3557b = new Pixmap(fileHandle);
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public Pixmap loadSync(AssetManager assetManager, String str, FileHandle fileHandle, PixmapParameter pixmapParameter) {
        Pixmap pixmap = this.f3557b;
        this.f3557b = null;
        return pixmap;
    }
}
