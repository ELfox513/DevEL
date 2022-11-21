package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.ObjectMap;
/* loaded from: classes.dex */
public class ParticleEffectLoader extends AsynchronousAssetLoader<ParticleEffect, ParticleEffectLoadParameter> {

    /* renamed from: b */
    public Array<ObjectMap.Entry<String, ResourceData<ParticleEffect>>> f4528b;

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public void loadAsync(AssetManager assetManager, String str, FileHandle fileHandle, ParticleEffectLoadParameter particleEffectLoadParameter) {
    }

    /* loaded from: classes.dex */
    public static class ParticleEffectLoadParameter extends AssetLoaderParameters<ParticleEffect> {

        /* renamed from: a */
        public Array<ParticleBatch<?>> f4529a;

        public ParticleEffectLoadParameter(Array<ParticleBatch<?>> array) {
            this.f4529a = array;
        }
    }

    /* loaded from: classes.dex */
    public static class ParticleEffectSaveParameter extends AssetLoaderParameters<ParticleEffect> {

        /* renamed from: a */
        public Array<ParticleBatch<?>> f4530a;

        /* renamed from: b */
        public FileHandle f4531b;

        /* renamed from: c */
        public AssetManager f4532c;

        public ParticleEffectSaveParameter(FileHandle fileHandle, AssetManager assetManager, Array<ParticleBatch<?>> array) {
            this.f4530a = array;
            this.f4531b = fileHandle;
            this.f4532c = assetManager;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.badlogic.gdx.graphics.g3d.particles.ResourceData, V] */
    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, ParticleEffectLoadParameter particleEffectLoadParameter) {
        Array<ResourceData.AssetData> assets;
        ?? r0 = (ResourceData) new Json().fromJson(ResourceData.class, fileHandle);
        synchronized (this.f4528b) {
            ObjectMap.Entry<String, ResourceData<ParticleEffect>> entry = new ObjectMap.Entry<>();
            entry.key = str;
            entry.value = r0;
            this.f4528b.add(entry);
            assets = r0.getAssets();
        }
        Array<AssetDescriptor> array = new Array<>();
        Array.ArrayIterator<ResourceData.AssetData> it = assets.iterator();
        while (it.hasNext()) {
            ResourceData.AssetData next = it.next();
            if (!resolve(next.filename).exists()) {
                next.filename = fileHandle.parent().child(Gdx.files.external(next.filename).name()).path();
            }
            Class<T> cls = next.type;
            if (cls == ParticleEffect.class) {
                array.add(new AssetDescriptor(next.filename, cls, particleEffectLoadParameter));
            } else {
                array.add(new AssetDescriptor(next.filename, cls));
            }
        }
        return array;
    }

    @Override // com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader
    public ParticleEffect loadSync(AssetManager assetManager, String str, FileHandle fileHandle, ParticleEffectLoadParameter particleEffectLoadParameter) {
        ResourceData<ParticleEffect> resourceData;
        synchronized (this.f4528b) {
            int i = 0;
            while (true) {
                Array<ObjectMap.Entry<String, ResourceData<ParticleEffect>>> array = this.f4528b;
                if (i >= array.size) {
                    resourceData = null;
                    break;
                }
                ObjectMap.Entry<String, ResourceData<ParticleEffect>> entry = array.get(i);
                if (entry.key.equals(str)) {
                    resourceData = entry.value;
                    this.f4528b.removeIndex(i);
                    break;
                }
                i++;
            }
        }
        resourceData.resource.load(assetManager, resourceData);
        if (particleEffectLoadParameter != null) {
            Array<ParticleBatch<?>> array2 = particleEffectLoadParameter.f4529a;
            if (array2 != null) {
                Array.ArrayIterator<ParticleBatch<?>> it = array2.iterator();
                while (it.hasNext()) {
                    it.next().load(assetManager, resourceData);
                }
            }
            resourceData.resource.setBatch(particleEffectLoadParameter.f4529a);
        }
        return resourceData.resource;
    }

    public void save(ParticleEffect particleEffect, ParticleEffectSaveParameter particleEffectSaveParameter) {
        ResourceData resourceData = new ResourceData(particleEffect);
        particleEffect.save(particleEffectSaveParameter.f4532c, resourceData);
        Array<ParticleBatch<?>> array = particleEffectSaveParameter.f4530a;
        if (array != null) {
            Array.ArrayIterator<ParticleBatch<?>> it = array.iterator();
            while (it.hasNext()) {
                ParticleBatch<?> next = it.next();
                boolean z = false;
                Array.ArrayIterator<ParticleController> it2 = particleEffect.getControllers().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (it2.next().renderer.isCompatible(next)) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    next.save(particleEffectSaveParameter.f4532c, resourceData);
                }
            }
        }
        new Json().toJson(resourceData, particleEffectSaveParameter.f4531b);
    }

    public ParticleEffectLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f4528b = new Array<>();
    }
}
