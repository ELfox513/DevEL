package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleController;
import com.badlogic.gdx.graphics.g3d.particles.ParticleEffect;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public abstract class ParticleControllerInfluencer extends Influencer {
    public Array<ParticleController> templates;

    /* renamed from: w */
    public ParallelArray.ObjectChannel<ParticleController> f4671w;

    /* loaded from: classes.dex */
    public static class Random extends ParticleControllerInfluencer {

        /* renamed from: x */
        public ParticleControllerPool f4672x;

        /* loaded from: classes.dex */
        public class ParticleControllerPool extends Pool<ParticleController> {
            public ParticleControllerPool() {
            }

            @Override // com.badlogic.gdx.utils.Pool
            public void clear() {
                int free = Random.this.f4672x.getFree();
                for (int i = 0; i < free; i++) {
                    Random.this.f4672x.obtain().dispose();
                }
                super.clear();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.badlogic.gdx.utils.Pool
            public ParticleController newObject() {
                ParticleController copy = Random.this.templates.random().copy();
                copy.init();
                return copy;
            }
        }

        public Random() {
            this.f4672x = new ParticleControllerPool();
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void activateParticles(int i, int i2) {
            int i3 = i2 + i;
            while (i < i3) {
                ParticleController obtain = this.f4672x.obtain();
                obtain.start();
                this.f4671w.data[i] = obtain;
                i++;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void killParticles(int i, int i2) {
            int i3 = i2 + i;
            while (i < i3) {
                ParticleController particleController = this.f4671w.data[i];
                particleController.end();
                this.f4672x.free(particleController);
                this.f4671w.data[i] = null;
                i++;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Random copy() {
            return new Random(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.ParticleControllerInfluencer, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Disposable
        public void dispose() {
            this.f4672x.clear();
            super.dispose();
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void init() {
            this.f4672x.clear();
            for (int i = 0; i < this.f4525a.emitter.maxParticleCount; i++) {
                ParticleControllerPool particleControllerPool = this.f4672x;
                particleControllerPool.free(particleControllerPool.newObject());
            }
        }

        public Random(ParticleController... particleControllerArr) {
            super(particleControllerArr);
            this.f4672x = new ParticleControllerPool();
        }

        public Random(Random random) {
            super(random);
            this.f4672x = new ParticleControllerPool();
        }
    }

    /* loaded from: classes.dex */
    public static class Single extends ParticleControllerInfluencer {
        public Single(ParticleController... particleControllerArr) {
            super(particleControllerArr);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void activateParticles(int i, int i2) {
            int i3 = i2 + i;
            while (i < i3) {
                this.f4671w.data[i].start();
                i++;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void killParticles(int i, int i2) {
            int i3 = i2 + i;
            while (i < i3) {
                this.f4671w.data[i].end();
                i++;
            }
        }

        public Single() {
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Single copy() {
            return new Single(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void init() {
            ParticleController first = this.templates.first();
            int i = this.f4525a.particles.capacity;
            for (int i2 = 0; i2 < i; i2++) {
                ParticleController copy = first.copy();
                copy.init();
                this.f4671w.data[i2] = copy;
            }
        }

        public Single(Single single) {
            super(single);
        }
    }

    public ParticleControllerInfluencer() {
        this.templates = new Array<>(true, 1, ParticleController.class);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4671w = (ParallelArray.ObjectChannel) this.f4525a.particles.addChannel(ParticleChannels.ParticleController);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void end() {
        for (int i = 0; i < this.f4525a.particles.size; i++) {
            this.f4671w.data[i].end();
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (this.f4525a != null) {
            for (int i = 0; i < this.f4525a.particles.size; i++) {
                ParticleController particleController = this.f4671w.data[i];
                if (particleController != null) {
                    particleController.dispose();
                    this.f4671w.data[i] = null;
                }
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        ResourceData.SaveData createSaveData = resourceData.createSaveData();
        Array all = assetManager.getAll(ParticleEffect.class, new Array());
        Array array = new Array(this.templates);
        Array array2 = new Array();
        for (int i = 0; i < all.size && array.size > 0; i++) {
            ParticleEffect particleEffect = (ParticleEffect) all.get(i);
            Array<ParticleController> controllers = particleEffect.getControllers();
            Array.ArrayIterator it = array.iterator();
            IntArray intArray = null;
            while (it.hasNext()) {
                int indexOf = controllers.indexOf((ParticleController) it.next(), true);
                if (indexOf > -1) {
                    if (intArray == null) {
                        intArray = new IntArray();
                    }
                    it.remove();
                    intArray.add(indexOf);
                }
            }
            if (intArray != null) {
                createSaveData.saveAsset(assetManager.getAssetFileName(particleEffect), ParticleEffect.class);
                array2.add(intArray);
            }
        }
        createSaveData.save("indices", array2);
    }

    public ParticleControllerInfluencer(ParticleController... particleControllerArr) {
        this.templates = new Array<>(particleControllerArr);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        ResourceData.SaveData saveData = resourceData.getSaveData();
        Array.ArrayIterator it = ((Array) saveData.load("indices")).iterator();
        while (true) {
            AssetDescriptor loadAsset = saveData.loadAsset();
            if (loadAsset != null) {
                ParticleEffect particleEffect = (ParticleEffect) assetManager.get(loadAsset);
                if (particleEffect != null) {
                    Array<ParticleController> controllers = particleEffect.getControllers();
                    IntArray intArray = (IntArray) it.next();
                    int i = intArray.size;
                    for (int i2 = 0; i2 < i; i2++) {
                        this.templates.add(controllers.get(intArray.get(i2)));
                    }
                } else {
                    throw new RuntimeException("Template is null");
                }
            } else {
                return;
            }
        }
    }

    public ParticleControllerInfluencer(ParticleControllerInfluencer particleControllerInfluencer) {
        this(particleControllerInfluencer.templates.items);
    }
}
