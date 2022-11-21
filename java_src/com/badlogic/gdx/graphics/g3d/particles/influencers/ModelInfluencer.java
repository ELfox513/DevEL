package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public abstract class ModelInfluencer extends Influencer {
    public Array<Model> models;

    /* renamed from: w */
    public ParallelArray.ObjectChannel<ModelInstance> f4662w;

    /* loaded from: classes.dex */
    public static class Random extends ModelInfluencer {

        /* renamed from: x */
        public ModelInstancePool f4663x;

        /* loaded from: classes.dex */
        public class ModelInstancePool extends Pool<ModelInstance> {
            public ModelInstancePool() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.badlogic.gdx.utils.Pool
            public ModelInstance newObject() {
                return new ModelInstance(Random.this.models.random());
            }
        }

        public Random() {
            this.f4663x = new ModelInstancePool();
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void activateParticles(int i, int i2) {
            int i3 = i2 + i;
            while (i < i3) {
                this.f4662w.data[i] = this.f4663x.obtain();
                i++;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void init() {
            this.f4663x.clear();
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void killParticles(int i, int i2) {
            int i3 = i2 + i;
            while (i < i3) {
                this.f4663x.free(this.f4662w.data[i]);
                this.f4662w.data[i] = null;
                i++;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Random copy() {
            return new Random(this);
        }

        public Random(Random random) {
            super(random);
            this.f4663x = new ModelInstancePool();
        }

        public Random(Model... modelArr) {
            super(modelArr);
            this.f4663x = new ModelInstancePool();
        }
    }

    /* loaded from: classes.dex */
    public static class Single extends ModelInfluencer {
        public Single() {
        }

        public Single(Single single) {
            super(single);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Single copy() {
            return new Single(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void init() {
            Model first = this.models.first();
            int i = this.f4525a.emitter.maxParticleCount;
            for (int i2 = 0; i2 < i; i2++) {
                this.f4662w.data[i2] = new ModelInstance(first);
            }
        }

        public Single(Model... modelArr) {
            super(modelArr);
        }
    }

    public ModelInfluencer() {
        this.models = new Array<>(true, 1, Model.class);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4662w = (ParallelArray.ObjectChannel) this.f4525a.particles.addChannel(ParticleChannels.ModelInstance);
    }

    public ModelInfluencer(Model... modelArr) {
        this.models = new Array<>(modelArr);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        ResourceData.SaveData saveData = resourceData.getSaveData();
        while (true) {
            AssetDescriptor loadAsset = saveData.loadAsset();
            if (loadAsset != null) {
                Model model = (Model) assetManager.get(loadAsset);
                if (model != null) {
                    this.models.add(model);
                } else {
                    throw new RuntimeException("Model is null");
                }
            } else {
                return;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        ResourceData.SaveData createSaveData = resourceData.createSaveData();
        Array.ArrayIterator<Model> it = this.models.iterator();
        while (it.hasNext()) {
            createSaveData.saveAsset(assetManager.getAssetFileName(it.next()), Model.class);
        }
    }

    public ModelInfluencer(ModelInfluencer modelInfluencer) {
        this((Model[]) modelInfluencer.models.toArray(Model.class));
    }
}
