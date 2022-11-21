package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class BitmapFontLoader extends AsynchronousAssetLoader<BitmapFont, BitmapFontParameter> {

    /* renamed from: b */
    public BitmapFont.BitmapFontData f3548b;

    public BitmapFontLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, BitmapFontParameter bitmapFontParameter) {
    }

    /* loaded from: classes.dex */
    public static class BitmapFontParameter extends AssetLoaderParameters<BitmapFont> {
        public String atlasName;
        public BitmapFont.BitmapFontData bitmapFontData;
        public boolean flip = false;
        public boolean genMipMaps = false;
        public Texture.TextureFilter magFilter;
        public Texture.TextureFilter minFilter;

        public BitmapFontParameter() {
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
            this.minFilter = textureFilter;
            this.magFilter = textureFilter;
            this.bitmapFontData = null;
            this.atlasName = null;
        }
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, BitmapFontParameter bitmapFontParameter) {
        String str2;
        BitmapFont.BitmapFontData bitmapFontData;
        Array<AssetDescriptor> array = new Array<>();
        if (bitmapFontParameter != null && (bitmapFontData = bitmapFontParameter.bitmapFontData) != null) {
            this.f3548b = bitmapFontData;
            return array;
        }
        this.f3548b = new BitmapFont.BitmapFontData(fileHandle, bitmapFontParameter != null && bitmapFontParameter.flip);
        if (bitmapFontParameter != null && (str2 = bitmapFontParameter.atlasName) != null) {
            array.add(new AssetDescriptor(str2, TextureAtlas.class));
        } else {
            for (int i = 0; i < this.f3548b.getImagePaths().length; i++) {
                FileHandle resolve = resolve(this.f3548b.getImagePath(i));
                TextureLoader.TextureParameter textureParameter = new TextureLoader.TextureParameter();
                if (bitmapFontParameter != null) {
                    textureParameter.genMipMaps = bitmapFontParameter.genMipMaps;
                    textureParameter.minFilter = bitmapFontParameter.minFilter;
                    textureParameter.magFilter = bitmapFontParameter.magFilter;
                }
                array.add(new AssetDescriptor(resolve, Texture.class, textureParameter));
            }
        }
        return array;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public BitmapFont loadSync(AssetManager assetManager, String str, FileHandle fileHandle, BitmapFontParameter bitmapFontParameter) {
        String str2;
        if (bitmapFontParameter != null && (str2 = bitmapFontParameter.atlasName) != null) {
            String str3 = fileHandle.sibling(this.f3548b.imagePaths[0]).nameWithoutExtension().toString();
            TextureAtlas.AtlasRegion findRegion = ((TextureAtlas) assetManager.get(str2, TextureAtlas.class)).findRegion(str3);
            if (findRegion != null) {
                return new BitmapFont(fileHandle, findRegion);
            }
            throw new GdxRuntimeException("Could not find font region " + str3 + " in atlas " + bitmapFontParameter.atlasName);
        }
        int length = this.f3548b.getImagePaths().length;
        Array array = new Array(length);
        for (int i = 0; i < length; i++) {
            array.add(new TextureRegion((Texture) assetManager.get(this.f3548b.getImagePath(i), Texture.class)));
        }
        return new BitmapFont(this.f3548b, (Array<TextureRegion>) array, true);
    }
}
