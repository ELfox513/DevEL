package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class SoundLoader extends AsynchronousAssetLoader<Sound, SoundParameter> {

    /* renamed from: b */
    public Sound f3560b;

    /* loaded from: classes.dex */
    public static class SoundParameter extends AssetLoaderParameters<Sound> {
    }

    public SoundLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, SoundParameter soundParameter) {
        return null;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, SoundParameter soundParameter) {
        this.f3560b = Gdx.audio.newSound(fileHandle);
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public Sound loadSync(AssetManager assetManager, String str, FileHandle fileHandle, SoundParameter soundParameter) {
        Sound sound = this.f3560b;
        this.f3560b = null;
        return sound;
    }
}
