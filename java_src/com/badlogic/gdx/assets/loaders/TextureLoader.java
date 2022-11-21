package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class TextureLoader extends AsynchronousAssetLoader<Texture, TextureParameter> {

    /* renamed from: b */
    public TextureLoaderInfo f3562b;

    /* loaded from: classes.dex */
    public static class TextureLoaderInfo {

        /* renamed from: a */
        public String f3563a;

        /* renamed from: b */
        public TextureData f3564b;

        /* renamed from: c */
        public Texture f3565c;
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, TextureParameter textureParameter) {
        return null;
    }

    /* loaded from: classes.dex */
    public static class TextureParameter extends AssetLoaderParameters<Texture> {
        public Texture.TextureFilter magFilter;
        public Texture.TextureFilter minFilter;
        public Texture.TextureWrap wrapU;
        public Texture.TextureWrap wrapV;
        public Pixmap.Format format = null;
        public boolean genMipMaps = false;
        public Texture texture = null;
        public TextureData textureData = null;

        public TextureParameter() {
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
            this.minFilter = textureFilter;
            this.magFilter = textureFilter;
            Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
            this.wrapU = textureWrap;
            this.wrapV = textureWrap;
        }
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, TextureParameter textureParameter) {
        TextureData textureData;
        TextureLoaderInfo textureLoaderInfo = this.f3562b;
        textureLoaderInfo.f3563a = str;
        if (textureParameter != null && (textureData = textureParameter.textureData) != null) {
            textureLoaderInfo.f3564b = textureData;
            textureLoaderInfo.f3565c = textureParameter.texture;
        } else {
            boolean z = false;
            Pixmap.Format format = null;
            textureLoaderInfo.f3565c = null;
            if (textureParameter != null) {
                format = textureParameter.format;
                z = textureParameter.genMipMaps;
                textureLoaderInfo.f3565c = textureParameter.texture;
            }
            textureLoaderInfo.f3564b = TextureData.Factory.loadFromFile(fileHandle, format, z);
        }
        if (this.f3562b.f3564b.isPrepared()) {
            return;
        }
        this.f3562b.f3564b.prepare();
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public Texture loadSync(AssetManager assetManager, String str, FileHandle fileHandle, TextureParameter textureParameter) {
        TextureLoaderInfo textureLoaderInfo = this.f3562b;
        if (textureLoaderInfo == null) {
            return null;
        }
        Texture texture = textureLoaderInfo.f3565c;
        if (texture != null) {
            texture.load(textureLoaderInfo.f3564b);
        } else {
            texture = new Texture(this.f3562b.f3564b);
        }
        if (textureParameter != null) {
            texture.setFilter(textureParameter.minFilter, textureParameter.magFilter);
            texture.setWrap(textureParameter.wrapU, textureParameter.wrapV);
        }
        return texture;
    }

    public TextureLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f3562b = new TextureLoaderInfo();
    }
}
