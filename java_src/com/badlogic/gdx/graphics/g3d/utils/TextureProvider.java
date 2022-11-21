package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.Texture;
/* loaded from: classes.dex */
public interface TextureProvider {

    /* loaded from: classes.dex */
    public static class FileTextureProvider implements TextureProvider {

        /* renamed from: a */
        public Texture.TextureFilter f4908a;

        /* renamed from: b */
        public Texture.TextureFilter f4909b;

        /* renamed from: c */
        public Texture.TextureWrap f4910c;

        /* renamed from: d */
        public Texture.TextureWrap f4911d;

        /* renamed from: e */
        public boolean f4912e;

        public FileTextureProvider() {
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
            this.f4909b = textureFilter;
            this.f4908a = textureFilter;
            Texture.TextureWrap textureWrap = Texture.TextureWrap.Repeat;
            this.f4911d = textureWrap;
            this.f4910c = textureWrap;
            this.f4912e = false;
        }

        @Override // com.badlogic.gdx.graphics.g3d.utils.TextureProvider
        public Texture load(String str) {
            Texture texture = new Texture(Gdx.files.external(str), this.f4912e);
            texture.setFilter(this.f4908a, this.f4909b);
            texture.setWrap(this.f4910c, this.f4911d);
            return texture;
        }

        public FileTextureProvider(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, Texture.TextureWrap textureWrap, Texture.TextureWrap textureWrap2, boolean z) {
            this.f4908a = textureFilter;
            this.f4909b = textureFilter2;
            this.f4910c = textureWrap;
            this.f4911d = textureWrap2;
            this.f4912e = z;
        }
    }

    Texture load(String str);

    /* loaded from: classes.dex */
    public static class AssetTextureProvider implements TextureProvider {
        public final AssetManager assetManager;

        @Override // com.badlogic.gdx.graphics.g3d.utils.TextureProvider
        public Texture load(String str) {
            return (Texture) this.assetManager.get(str, Texture.class);
        }

        public AssetTextureProvider(AssetManager assetManager) {
            this.assetManager = assetManager;
        }
    }
}
