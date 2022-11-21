package com.badlogic.gdx.graphics.g3d.particles.influencers;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleChannels;
import com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.graphics.g3d.particles.values.PointSpawnShapeValue;
import com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public class SpawnInfluencer extends Influencer {
    public SpawnShapeValue spawnShapeValue;

    /* renamed from: w */
    public ParallelArray.FloatChannel f4684w;

    /* renamed from: x */
    public ParallelArray.FloatChannel f4685x;

    public SpawnInfluencer() {
        this.spawnShapeValue = new PointSpawnShapeValue();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void init() {
        this.spawnShapeValue.init();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        this.spawnShapeValue.load(assetManager, resourceData);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        this.spawnShapeValue = (SpawnShapeValue) json.readValue("spawnShape", SpawnShapeValue.class, jsonValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        this.spawnShapeValue.save(assetManager, resourceData);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void start() {
        this.spawnShapeValue.start();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        json.writeValue("spawnShape", this.spawnShapeValue, SpawnShapeValue.class);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void activateParticles(int i, int i2) {
        int i3 = this.f4684w.strideSize;
        int i4 = i * i3;
        int i5 = (i3 * i2) + i4;
        while (i4 < i5) {
            SpawnShapeValue spawnShapeValue = this.spawnShapeValue;
            Vector3 vector3 = ParticleControllerComponent.f4515b;
            spawnShapeValue.spawn(vector3, this.f4525a.emitter.percent);
            vector3.mul(this.f4525a.transform);
            ParallelArray.FloatChannel floatChannel = this.f4684w;
            float[] fArr = floatChannel.data;
            fArr[i4 + 0] = vector3.f5533x;
            fArr[i4 + 1] = vector3.f5534y;
            fArr[i4 + 2] = vector3.f5535z;
            i4 += floatChannel.strideSize;
        }
        int i6 = this.f4685x.strideSize;
        int i7 = i * i6;
        int i8 = (i2 * i6) + i7;
        while (i7 < i8) {
            Matrix4 matrix4 = this.f4525a.transform;
            Quaternion quaternion = ParticleControllerComponent.f4521s;
            matrix4.getRotation(quaternion, true);
            ParallelArray.FloatChannel floatChannel2 = this.f4685x;
            float[] fArr2 = floatChannel2.data;
            fArr2[i7 + 0] = quaternion.f5518x;
            fArr2[i7 + 1] = quaternion.f5519y;
            fArr2[i7 + 2] = quaternion.f5520z;
            fArr2[i7 + 3] = quaternion.f5517w;
            i7 += floatChannel2.strideSize;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public void allocateChannels() {
        this.f4684w = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Position);
        this.f4685x = (ParallelArray.FloatChannel) this.f4525a.particles.addChannel(ParticleChannels.Rotation3D);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleControllerComponent
    public SpawnInfluencer copy() {
        return new SpawnInfluencer(this);
    }

    public SpawnInfluencer(SpawnShapeValue spawnShapeValue) {
        this.spawnShapeValue = spawnShapeValue;
    }

    public SpawnInfluencer(SpawnInfluencer spawnInfluencer) {
        this.spawnShapeValue = spawnInfluencer.spawnShapeValue.copy();
    }
}
