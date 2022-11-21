package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public abstract class SpawnShapeValue extends ParticleValue implements ResourceData.Configurable {
    public RangedNumericValue xOffsetValue;
    public RangedNumericValue yOffsetValue;
    public RangedNumericValue zOffsetValue;

    public SpawnShapeValue() {
        this.xOffsetValue = new RangedNumericValue();
        this.yOffsetValue = new RangedNumericValue();
        this.zOffsetValue = new RangedNumericValue();
    }

    public abstract SpawnShapeValue copy();

    public void init() {
    }

    public void load(AssetManager assetManager, ResourceData resourceData) {
    }

    public void save(AssetManager assetManager, ResourceData resourceData) {
    }

    public abstract void spawnAux(Vector3 vector3, float f);

    public void start() {
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        this.xOffsetValue = (RangedNumericValue) json.readValue("xOffsetValue", RangedNumericValue.class, jsonValue);
        this.yOffsetValue = (RangedNumericValue) json.readValue("yOffsetValue", RangedNumericValue.class, jsonValue);
        this.zOffsetValue = (RangedNumericValue) json.readValue("zOffsetValue", RangedNumericValue.class, jsonValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue
    public void load(ParticleValue particleValue) {
        super.load(particleValue);
        SpawnShapeValue spawnShapeValue = (SpawnShapeValue) particleValue;
        this.xOffsetValue.load(spawnShapeValue.xOffsetValue);
        this.yOffsetValue.load(spawnShapeValue.yOffsetValue);
        this.zOffsetValue.load(spawnShapeValue.zOffsetValue);
    }

    public final Vector3 spawn(Vector3 vector3, float f) {
        spawnAux(vector3, f);
        RangedNumericValue rangedNumericValue = this.xOffsetValue;
        if (rangedNumericValue.active) {
            vector3.f5533x += rangedNumericValue.newLowValue();
        }
        RangedNumericValue rangedNumericValue2 = this.yOffsetValue;
        if (rangedNumericValue2.active) {
            vector3.f5534y += rangedNumericValue2.newLowValue();
        }
        RangedNumericValue rangedNumericValue3 = this.zOffsetValue;
        if (rangedNumericValue3.active) {
            vector3.f5535z += rangedNumericValue3.newLowValue();
        }
        return vector3;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("xOffsetValue", this.xOffsetValue);
        json.writeValue("yOffsetValue", this.yOffsetValue);
        json.writeValue("zOffsetValue", this.zOffsetValue);
    }

    public SpawnShapeValue(SpawnShapeValue spawnShapeValue) {
        this();
    }
}
