package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.ModelLoader.ModelParameters;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.model.data.ModelData;
import com.badlogic.gdx.graphics.g3d.model.data.ModelMaterial;
import com.badlogic.gdx.graphics.g3d.model.data.ModelTexture;
import com.badlogic.gdx.graphics.g3d.utils.TextureProvider;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.ObjectMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class ModelLoader<P extends ModelParameters> extends AsynchronousAssetLoader<Model, P> {

    /* renamed from: b */
    public Array<ObjectMap.Entry<String, ModelData>> f3554b;

    /* renamed from: c */
    public ModelParameters f3555c;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public /* bridge */ /* synthetic */ Array getDependencies(String str, FileHandle fileHandle, AssetLoaderParameters assetLoaderParameters) {
        return getDependencies(str, fileHandle, (FileHandle) ((ModelParameters) assetLoaderParameters));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public /* bridge */ /* synthetic */ void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, AssetLoaderParameters assetLoaderParameters) {
        loadAsync(assetManager, str, fileHandle, (FileHandle) ((ModelParameters) assetLoaderParameters));
    }

    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, P p) {
    }

    public Model loadModel(FileHandle fileHandle, TextureProvider textureProvider, P p) {
        ModelData loadModelData = loadModelData(fileHandle, p);
        if (loadModelData == null) {
            return null;
        }
        return new Model(loadModelData, textureProvider);
    }

    public ModelData loadModelData(FileHandle fileHandle) {
        return loadModelData(fileHandle, null);
    }

    public abstract ModelData loadModelData(FileHandle fileHandle, P p);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public /* bridge */ /* synthetic */ Model loadSync(AssetManager assetManager, String str, FileHandle fileHandle, AssetLoaderParameters assetLoaderParameters) {
        return loadSync(assetManager, str, fileHandle, (FileHandle) ((ModelParameters) assetLoaderParameters));
    }

    /* loaded from: classes.dex */
    public static class ModelParameters extends AssetLoaderParameters<Model> {
        public TextureLoader.TextureParameter textureParameter;

        public ModelParameters() {
            TextureLoader.TextureParameter textureParameter = new TextureLoader.TextureParameter();
            this.textureParameter = textureParameter;
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Linear;
            textureParameter.magFilter = textureFilter;
            textureParameter.minFilter = textureFilter;
            Texture.TextureWrap textureWrap = Texture.TextureWrap.Repeat;
            textureParameter.wrapV = textureWrap;
            textureParameter.wrapU = textureWrap;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [V, com.badlogic.gdx.graphics.g3d.model.data.ModelData] */
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, P p) {
        TextureLoader.TextureParameter textureParameter;
        Array<AssetDescriptor> array = new Array<>();
        ?? loadModelData = loadModelData(fileHandle, p);
        if (loadModelData == 0) {
            return array;
        }
        ObjectMap.Entry<String, ModelData> entry = new ObjectMap.Entry<>();
        entry.key = str;
        entry.value = loadModelData;
        synchronized (this.f3554b) {
            this.f3554b.add(entry);
        }
        if (p != null) {
            textureParameter = p.textureParameter;
        } else {
            textureParameter = this.f3555c.textureParameter;
        }
        Array.ArrayIterator<ModelMaterial> it = loadModelData.materials.iterator();
        while (it.hasNext()) {
            Array<ModelTexture> array2 = it.next().textures;
            if (array2 != null) {
                Array.ArrayIterator<ModelTexture> it2 = array2.iterator();
                while (it2.hasNext()) {
                    array.add(new AssetDescriptor(it2.next().fileName, Texture.class, textureParameter));
                }
            }
        }
        return array;
    }

    public Model loadSync(AssetManager assetManager, String str, FileHandle fileHandle, P p) {
        ModelData modelData;
        synchronized (this.f3554b) {
            int i = 0;
            modelData = null;
            while (true) {
                Array<ObjectMap.Entry<String, ModelData>> array = this.f3554b;
                if (i >= array.size) {
                    break;
                }
                if (array.get(i).key.equals(str)) {
                    modelData = this.f3554b.get(i).value;
                    this.f3554b.removeIndex(i);
                }
                i++;
            }
        }
        if (modelData == null) {
            return null;
        }
        Model model = new Model(modelData, new TextureProvider.AssetTextureProvider(assetManager));
        Iterator<Disposable> it = model.getManagedDisposables().iterator();
        while (it.hasNext()) {
            if (it.next() instanceof Texture) {
                it.remove();
            }
        }
        return model;
    }

    public ModelLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f3554b = new Array<>();
        this.f3555c = new ModelParameters();
    }

    public Model loadModel(FileHandle fileHandle, P p) {
        return loadModel(fileHandle, new TextureProvider.FileTextureProvider(), p);
    }

    public Model loadModel(FileHandle fileHandle, TextureProvider textureProvider) {
        return loadModel(fileHandle, textureProvider, null);
    }

    public Model loadModel(FileHandle fileHandle) {
        return loadModel(fileHandle, new TextureProvider.FileTextureProvider(), null);
    }
}
