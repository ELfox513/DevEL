package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class MusicLoader extends AsynchronousAssetLoader<Music, MusicParameter> {

    /* renamed from: b */
    public Music f3556b;

    /* loaded from: classes.dex */
    public static class MusicParameter extends AssetLoaderParameters<Music> {
    }

    public MusicLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, MusicParameter musicParameter) {
        return null;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, MusicParameter musicParameter) {
        this.f3556b = Gdx.audio.newMusic(fileHandle);
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public Music loadSync(AssetManager assetManager, String str, FileHandle fileHandle, MusicParameter musicParameter) {
        Music music = this.f3556b;
        this.f3556b = null;
        return music;
    }
}
