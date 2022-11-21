package com.badlogic.gdx.maps;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.ObjectMap;
/* loaded from: classes.dex */
public interface ImageResolver {
    TextureRegion getImage(String str);

    /* loaded from: classes.dex */
    public static class AssetManagerImageResolver implements ImageResolver {

        /* renamed from: a */
        public final AssetManager f5242a;

        @Override // com.badlogic.gdx.maps.ImageResolver
        public TextureRegion getImage(String str) {
            return new TextureRegion((Texture) this.f5242a.get(str, Texture.class));
        }

        public AssetManagerImageResolver(AssetManager assetManager) {
            this.f5242a = assetManager;
        }
    }

    /* loaded from: classes.dex */
    public static class DirectImageResolver implements ImageResolver {

        /* renamed from: a */
        public final ObjectMap<String, Texture> f5243a;

        @Override // com.badlogic.gdx.maps.ImageResolver
        public TextureRegion getImage(String str) {
            return new TextureRegion(this.f5243a.get(str));
        }

        public DirectImageResolver(ObjectMap<String, Texture> objectMap) {
            this.f5243a = objectMap;
        }
    }

    /* loaded from: classes.dex */
    public static class TextureAtlasImageResolver implements ImageResolver {

        /* renamed from: a */
        public final TextureAtlas f5244a;

        @Override // com.badlogic.gdx.maps.ImageResolver
        public TextureRegion getImage(String str) {
            return this.f5244a.findRegion(str);
        }

        public TextureAtlasImageResolver(TextureAtlas textureAtlas) {
            this.f5244a = textureAtlas;
        }
    }
}
