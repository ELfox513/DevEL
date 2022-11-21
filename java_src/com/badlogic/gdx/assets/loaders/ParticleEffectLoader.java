package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class ParticleEffectLoader extends SynchronousAssetLoader<ParticleEffect, ParticleEffectParameter> {

    /* loaded from: classes.dex */
    public static class ParticleEffectParameter extends AssetLoaderParameters<ParticleEffect> {
        public String atlasFile;
        public String atlasPrefix;
        public FileHandle imagesDir;
    }

    public ParticleEffectLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, ParticleEffectParameter particleEffectParameter) {
        if (particleEffectParameter == null || particleEffectParameter.atlasFile == null) {
            return null;
        }
        Array<AssetDescriptor> array = new Array<>();
        array.add(new AssetDescriptor(particleEffectParameter.atlasFile, TextureAtlas.class));
        return array;
    }

    @Override // com.badlogic.gdx.assets.loaders.SynchronousAssetLoader
    public ParticleEffect load(AssetManager assetManager, String str, FileHandle fileHandle, ParticleEffectParameter particleEffectParameter) {
        FileHandle fileHandle2;
        String str2;
        ParticleEffect particleEffect = new ParticleEffect();
        if (particleEffectParameter != null && (str2 = particleEffectParameter.atlasFile) != null) {
            particleEffect.load(fileHandle, (TextureAtlas) assetManager.get(str2, TextureAtlas.class), particleEffectParameter.atlasPrefix);
        } else if (particleEffectParameter != null && (fileHandle2 = particleEffectParameter.imagesDir) != null) {
            particleEffect.load(fileHandle, fileHandle2);
        } else {
            particleEffect.load(fileHandle, fileHandle.parent());
        }
        return particleEffect;
    }
}
