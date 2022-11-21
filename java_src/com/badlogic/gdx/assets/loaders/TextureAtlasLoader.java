package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class TextureAtlasLoader extends SynchronousAssetLoader<TextureAtlas, TextureAtlasParameter> {

    /* renamed from: b */
    public TextureAtlas.TextureAtlasData f3561b;

    public TextureAtlasLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
    }

    /* loaded from: classes.dex */
    public static class TextureAtlasParameter extends AssetLoaderParameters<TextureAtlas> {
        public boolean flip;

        public TextureAtlasParameter() {
            this.flip = false;
        }

        public TextureAtlasParameter(boolean z) {
            this.flip = z;
        }
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, TextureAtlasParameter textureAtlasParameter) {
        FileHandle parent = fileHandle.parent();
        if (textureAtlasParameter != null) {
            this.f3561b = new TextureAtlas.TextureAtlasData(fileHandle, parent, textureAtlasParameter.flip);
        } else {
            this.f3561b = new TextureAtlas.TextureAtlasData(fileHandle, parent, false);
        }
        Array<AssetDescriptor> array = new Array<>();
        Array.ArrayIterator<TextureAtlas.TextureAtlasData.Page> it = this.f3561b.getPages().iterator();
        while (it.hasNext()) {
            TextureAtlas.TextureAtlasData.Page next = it.next();
            TextureLoader.TextureParameter textureParameter = new TextureLoader.TextureParameter();
            textureParameter.format = next.format;
            textureParameter.genMipMaps = next.useMipMaps;
            textureParameter.minFilter = next.minFilter;
            textureParameter.magFilter = next.magFilter;
            array.add(new AssetDescriptor(next.textureFile, Texture.class, textureParameter));
        }
        return array;
    }

    @Override // com.badlogic.gdx.assets.loaders.SynchronousAssetLoader
    public TextureAtlas load(AssetManager assetManager, String str, FileHandle fileHandle, TextureAtlasParameter textureAtlasParameter) {
        Array.ArrayIterator<TextureAtlas.TextureAtlasData.Page> it = this.f3561b.getPages().iterator();
        while (it.hasNext()) {
            TextureAtlas.TextureAtlasData.Page next = it.next();
            next.texture = (Texture) assetManager.get(next.textureFile.path().replaceAll("\\\\", "/"), Texture.class);
        }
        TextureAtlas textureAtlas = new TextureAtlas(this.f3561b);
        this.f3561b = null;
        return textureAtlas;
    }
}
