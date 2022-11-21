package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public abstract class RegionInfluencer extends Influencer {
    public String atlasName;
    public Array<AspectTextureRegion> regions;

    /* renamed from: w */
    public ParallelArray.FloatChannel f4674w;

    /* loaded from: classes.dex */
    public static class Animated extends RegionInfluencer {

        /* renamed from: x */
        public ParallelArray.FloatChannel f4675x;

        public Animated() {
        }

        public Animated(Animated animated) {
            super(animated);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Animated copy() {
            return new Animated(this);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void update() {
            int i = this.f4525a.particles.size * this.f4674w.strideSize;
            int i2 = 2;
            int i3 = 0;
            while (i3 < i) {
                Array<AspectTextureRegion> array = this.regions;
                AspectTextureRegion aspectTextureRegion = array.get((int) (this.f4675x.data[i2] * (array.size - 1)));
                ParallelArray.FloatChannel floatChannel = this.f4674w;
                float[] fArr = floatChannel.data;
                fArr[i3 + 0] = aspectTextureRegion.f4676u;
                fArr[i3 + 1] = aspectTextureRegion.f4678v;
                fArr[i3 + 2] = aspectTextureRegion.f4677u2;
                fArr[i3 + 3] = aspectTextureRegion.f4679v2;
                fArr[i3 + 4] = 0.5f;
                fArr[i3 + 5] = aspectTextureRegion.halfInvAspectRatio;
                i3 += floatChannel.strideSize;
                i2 += this.f4675x.strideSize;
            }
        }

        public Animated(TextureRegion textureRegion) {
            super(textureRegion);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.influencers.RegionInfluencer, com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void allocateChannels() {
            super.allocateChannels();
            this.f4675x = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Life);
        }

        public Animated(Texture texture) {
            super(texture);
        }
    }

    /* loaded from: classes.dex */
    public static class AspectTextureRegion {
        public float halfInvAspectRatio;
        public String imageName;

        /* renamed from: u */
        public float f4676u;

        /* renamed from: u2 */
        public float f4677u2;

        /* renamed from: v */
        public float f4678v;

        /* renamed from: v2 */
        public float f4679v2;

        public AspectTextureRegion() {
        }

        public void set(TextureRegion textureRegion) {
            this.f4676u = textureRegion.getU();
            this.f4678v = textureRegion.getV();
            this.f4677u2 = textureRegion.getU2();
            this.f4679v2 = textureRegion.getV2();
            this.halfInvAspectRatio = (textureRegion.getRegionHeight() / textureRegion.getRegionWidth()) * 0.5f;
            if (textureRegion instanceof TextureAtlas.AtlasRegion) {
                this.imageName = ((TextureAtlas.AtlasRegion) textureRegion).name;
            }
        }

        public AspectTextureRegion(AspectTextureRegion aspectTextureRegion) {
            set(aspectTextureRegion);
        }

        public void updateUV(TextureAtlas textureAtlas) {
            String str = this.imageName;
            if (str == null) {
                return;
            }
            TextureAtlas.AtlasRegion findRegion = textureAtlas.findRegion(str);
            this.f4676u = findRegion.getU();
            this.f4678v = findRegion.getV();
            this.f4677u2 = findRegion.getU2();
            this.f4679v2 = findRegion.getV2();
            this.halfInvAspectRatio = (findRegion.getRegionHeight() / findRegion.getRegionWidth()) * 0.5f;
        }

        public AspectTextureRegion(TextureRegion textureRegion) {
            set(textureRegion);
        }

        public void set(AspectTextureRegion aspectTextureRegion) {
            this.f4676u = aspectTextureRegion.f4676u;
            this.f4678v = aspectTextureRegion.f4678v;
            this.f4677u2 = aspectTextureRegion.f4677u2;
            this.f4679v2 = aspectTextureRegion.f4679v2;
            this.halfInvAspectRatio = aspectTextureRegion.halfInvAspectRatio;
            this.imageName = aspectTextureRegion.imageName;
        }
    }

    /* loaded from: classes.dex */
    public static class Random extends RegionInfluencer {
        public Random() {
        }

        public Random(Random random) {
            super(random);
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public void activateParticles(int i, int i2) {
            int i3 = this.f4674w.strideSize;
            int i4 = i * i3;
            int i5 = (i2 * i3) + i4;
            while (i4 < i5) {
                AspectTextureRegion random = this.regions.random();
                ParallelArray.FloatChannel floatChannel = this.f4674w;
                float[] fArr = floatChannel.data;
                fArr[i4 + 0] = random.f4676u;
                fArr[i4 + 1] = random.f4678v;
                fArr[i4 + 2] = random.f4677u2;
                fArr[i4 + 3] = random.f4679v2;
                fArr[i4 + 4] = 0.5f;
                fArr[i4 + 5] = random.halfInvAspectRatio;
                i4 += floatChannel.strideSize;
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
        public Random copy() {
            return new Random(this);
        }

        public Random(TextureRegion textureRegion) {
            super(textureRegion);
        }

        public Random(Texture texture) {
            super(texture);
        }
    }

    /* loaded from: classes.dex */
    public static class Single extends RegionInfluencer {
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
            int i = 0;
            AspectTextureRegion aspectTextureRegion = this.regions.items[0];
            int i2 = this.f4525a.emitter.maxParticleCount * this.f4674w.strideSize;
            while (i < i2) {
                ParallelArray.FloatChannel floatChannel = this.f4674w;
                float[] fArr = floatChannel.data;
                fArr[i + 0] = aspectTextureRegion.f4676u;
                fArr[i + 1] = aspectTextureRegion.f4678v;
                fArr[i + 2] = aspectTextureRegion.f4677u2;
                fArr[i + 3] = aspectTextureRegion.f4679v2;
                fArr[i + 4] = 0.5f;
                fArr[i + 5] = aspectTextureRegion.halfInvAspectRatio;
                i += floatChannel.strideSize;
            }
        }

        public Single(TextureRegion textureRegion) {
            super(textureRegion);
        }

        public Single(Texture texture) {
            super(texture);
        }
    }

    public RegionInfluencer(int i) {
        this.regions = new Array<>(false, i, AspectTextureRegion.class);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4674w = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.TextureRegion);
    }

    public void clear() {
        this.atlasName = null;
        this.regions.clear();
    }

    public void setAtlasName(String str) {
        this.atlasName = str;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        json.writeValue("regions", this.regions, Array.class, AspectTextureRegion.class);
    }

    public void add(TextureRegion... textureRegionArr) {
        this.regions.ensureCapacity(textureRegionArr.length);
        for (TextureRegion textureRegion : textureRegionArr) {
            this.regions.add(new AspectTextureRegion(textureRegion));
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        this.regions.clear();
        this.regions.addAll((Array) json.readValue("regions", (Class<Object>) Array.class, AspectTextureRegion.class, jsonValue));
    }

    public RegionInfluencer() {
        this(1);
        AspectTextureRegion aspectTextureRegion = new AspectTextureRegion();
        aspectTextureRegion.f4678v = 0.0f;
        aspectTextureRegion.f4676u = 0.0f;
        aspectTextureRegion.f4679v2 = 1.0f;
        aspectTextureRegion.f4677u2 = 1.0f;
        aspectTextureRegion.halfInvAspectRatio = 0.5f;
        this.regions.add(aspectTextureRegion);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        super.load(assetManager, resourceData);
        ResourceData.SaveData saveData = resourceData.getSaveData("atlasAssetData");
        if (saveData == null) {
            return;
        }
        TextureAtlas textureAtlas = (TextureAtlas) assetManager.get(saveData.loadAsset());
        Array.ArrayIterator<AspectTextureRegion> it = this.regions.iterator();
        while (it.hasNext()) {
            it.next().updateUV(textureAtlas);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        super.save(assetManager, resourceData);
        if (this.atlasName != null) {
            ResourceData.SaveData saveData = resourceData.getSaveData("atlasAssetData");
            if (saveData == null) {
                saveData = resourceData.createSaveData("atlasAssetData");
            }
            saveData.saveAsset(this.atlasName, TextureAtlas.class);
        }
    }

    public RegionInfluencer(TextureRegion... textureRegionArr) {
        setAtlasName(null);
        this.regions = new Array<>(false, textureRegionArr.length, AspectTextureRegion.class);
        add(textureRegionArr);
    }

    public RegionInfluencer(Texture texture) {
        this(new TextureRegion(texture));
    }

    public RegionInfluencer(RegionInfluencer regionInfluencer) {
        this(regionInfluencer.regions.size);
        this.regions.ensureCapacity(regionInfluencer.regions.size);
        int i = 0;
        while (true) {
            Array<AspectTextureRegion> array = regionInfluencer.regions;
            if (i >= array.size) {
                return;
            }
            this.regions.add(new AspectTextureRegion(array.get(i)));
            i++;
        }
    }
}
