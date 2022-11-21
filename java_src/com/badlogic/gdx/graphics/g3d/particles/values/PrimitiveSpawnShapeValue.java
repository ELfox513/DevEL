package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public abstract class PrimitiveSpawnShapeValue extends SpawnShapeValue {

    /* renamed from: s */
    public static final Vector3 f4707s = new Vector3();

    /* renamed from: a */
    public float f4708a;

    /* renamed from: b */
    public float f4709b;

    /* renamed from: d */
    public float f4710d;

    /* renamed from: k */
    public float f4711k;

    /* renamed from: p */
    public float f4712p;

    /* renamed from: q */
    public float f4713q;

    /* renamed from: r */
    public boolean f4714r;
    public ScaledNumericValue spawnDepthValue;
    public ScaledNumericValue spawnHeightValue;
    public ScaledNumericValue spawnWidthValue;

    /* loaded from: classes.dex */
    public enum SpawnSide {
        both,
        top,
        bottom
    }

    public PrimitiveSpawnShapeValue() {
        this.f4714r = false;
        this.spawnWidthValue = new ScaledNumericValue();
        this.spawnHeightValue = new ScaledNumericValue();
        this.spawnDepthValue = new ScaledNumericValue();
    }

    public ScaledNumericValue getSpawnDepth() {
        return this.spawnDepthValue;
    }

    public ScaledNumericValue getSpawnHeight() {
        return this.spawnHeightValue;
    }

    public ScaledNumericValue getSpawnWidth() {
        return this.spawnWidthValue;
    }

    public boolean isEdges() {
        return this.f4714r;
    }

    public void setEdges(boolean z) {
        this.f4714r = z;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        this.spawnWidthValue = (ScaledNumericValue) json.readValue("spawnWidthValue", ScaledNumericValue.class, jsonValue);
        this.spawnHeightValue = (ScaledNumericValue) json.readValue("spawnHeightValue", ScaledNumericValue.class, jsonValue);
        this.spawnDepthValue = (ScaledNumericValue) json.readValue("spawnDepthValue", ScaledNumericValue.class, jsonValue);
        this.f4714r = ((Boolean) json.readValue("edges", Boolean.TYPE, jsonValue)).booleanValue();
    }

    public void setDimensions(float f, float f2, float f3) {
        this.spawnWidthValue.setHigh(f);
        this.spawnHeightValue.setHigh(f2);
        this.spawnDepthValue.setHigh(f3);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void start() {
        this.f4708a = this.spawnWidthValue.newLowValue();
        this.f4709b = this.spawnWidthValue.newHighValue();
        if (!this.spawnWidthValue.isRelative()) {
            this.f4709b -= this.f4708a;
        }
        this.f4710d = this.spawnHeightValue.newLowValue();
        this.f4711k = this.spawnHeightValue.newHighValue();
        if (!this.spawnHeightValue.isRelative()) {
            this.f4711k -= this.f4710d;
        }
        this.f4712p = this.spawnDepthValue.newLowValue();
        this.f4713q = this.spawnDepthValue.newHighValue();
        if (!this.spawnDepthValue.isRelative()) {
            this.f4713q -= this.f4712p;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue
    public void load(ParticleValue particleValue) {
        super.load(particleValue);
        PrimitiveSpawnShapeValue primitiveSpawnShapeValue = (PrimitiveSpawnShapeValue) particleValue;
        this.f4714r = primitiveSpawnShapeValue.f4714r;
        this.spawnWidthValue.load(primitiveSpawnShapeValue.spawnWidthValue);
        this.spawnHeightValue.load(primitiveSpawnShapeValue.spawnHeightValue);
        this.spawnDepthValue.load(primitiveSpawnShapeValue.spawnDepthValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue
    public void setActive(boolean z) {
        super.setActive(z);
        this.spawnWidthValue.setActive(true);
        this.spawnHeightValue.setActive(true);
        this.spawnDepthValue.setActive(true);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("spawnWidthValue", this.spawnWidthValue);
        json.writeValue("spawnHeightValue", this.spawnHeightValue);
        json.writeValue("spawnDepthValue", this.spawnDepthValue);
        json.writeValue("edges", Boolean.valueOf(this.f4714r));
    }

    public PrimitiveSpawnShapeValue(PrimitiveSpawnShapeValue primitiveSpawnShapeValue) {
        super(primitiveSpawnShapeValue);
        this.f4714r = false;
        this.spawnWidthValue = new ScaledNumericValue();
        this.spawnHeightValue = new ScaledNumericValue();
        this.spawnDepthValue = new ScaledNumericValue();
    }
}
