package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Cubemap;
import com.badlogic.gdx.graphics.CubemapData;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.KTXTextureData;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class CubemapLoader extends AsynchronousAssetLoader<Cubemap, CubemapParameter> {

    /* renamed from: b */
    public CubemapLoaderInfo f3549b;

    /* loaded from: classes.dex */
    public static class CubemapLoaderInfo {

        /* renamed from: a */
        public String f3550a;

        /* renamed from: b */
        public CubemapData f3551b;

        /* renamed from: c */
        public Cubemap f3552c;
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, CubemapParameter cubemapParameter) {
        return null;
    }

    /* loaded from: classes.dex */
    public static class CubemapParameter extends AssetLoaderParameters<Cubemap> {
        public Texture.TextureFilter magFilter;
        public Texture.TextureFilter minFilter;
        public Texture.TextureWrap wrapU;
        public Texture.TextureWrap wrapV;
        public Pixmap.Format format = null;
        public Cubemap cubemap = null;
        public CubemapData cubemapData = null;

        public CubemapParameter() {
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
            this.minFilter = textureFilter;
            this.magFilter = textureFilter;
            Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
            this.wrapU = textureWrap;
            this.wrapV = textureWrap;
        }
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, CubemapParameter cubemapParameter) {
        CubemapData cubemapData;
        CubemapLoaderInfo cubemapLoaderInfo = this.f3549b;
        cubemapLoaderInfo.f3550a = str;
        if (cubemapParameter != null && (cubemapData = cubemapParameter.cubemapData) != null) {
            cubemapLoaderInfo.f3551b = cubemapData;
            cubemapLoaderInfo.f3552c = cubemapParameter.cubemap;
        } else {
            cubemapLoaderInfo.f3552c = null;
            if (cubemapParameter != null) {
                cubemapLoaderInfo.f3552c = cubemapParameter.cubemap;
            }
            if (str.contains(".ktx") || str.contains(".zktx")) {
                this.f3549b.f3551b = new KTXTextureData(fileHandle, false);
            }
        }
        if (this.f3549b.f3551b.isPrepared()) {
            return;
        }
        this.f3549b.f3551b.prepare();
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public Cubemap loadSync(AssetManager assetManager, String str, FileHandle fileHandle, CubemapParameter cubemapParameter) {
        CubemapLoaderInfo cubemapLoaderInfo = this.f3549b;
        if (cubemapLoaderInfo == null) {
            return null;
        }
        Cubemap cubemap = cubemapLoaderInfo.f3552c;
        if (cubemap != null) {
            cubemap.load(cubemapLoaderInfo.f3551b);
        } else {
            cubemap = new Cubemap(this.f3549b.f3551b);
        }
        if (cubemapParameter != null) {
            cubemap.setFilter(cubemapParameter.minFilter, cubemapParameter.magFilter);
            cubemap.setWrap(cubemapParameter.wrapU, cubemapParameter.wrapV);
        }
        return cubemap;
    }

    public CubemapLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f3549b = new CubemapLoaderInfo();
    }
}
