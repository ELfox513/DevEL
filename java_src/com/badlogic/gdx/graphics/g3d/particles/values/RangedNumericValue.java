package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public class RangedNumericValue extends ParticleValue {

    /* renamed from: a */
    public float f4716a;

    /* renamed from: b */
    public float f4717b;

    public float getLowMax() {
        return this.f4717b;
    }

    public float getLowMin() {
        return this.f4716a;
    }

    public float newLowValue() {
        float f = this.f4716a;
        return f + ((this.f4717b - f) * MathUtils.random());
    }

    public void setLow(float f) {
        this.f4716a = f;
        this.f4717b = f;
    }

    public void setLowMax(float f) {
        this.f4717b = f;
    }

    public void setLowMin(float f) {
        this.f4716a = f;
    }

    public void load(RangedNumericValue rangedNumericValue) {
        super.load((ParticleValue) rangedNumericValue);
        this.f4717b = rangedNumericValue.f4717b;
        this.f4716a = rangedNumericValue.f4716a;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        Class cls = Float.TYPE;
        this.f4716a = ((Float) json.readValue("lowMin", cls, jsonValue)).floatValue();
        this.f4717b = ((Float) json.readValue("lowMax", cls, jsonValue)).floatValue();
    }

    public void setLow(float f, float f2) {
        this.f4716a = f;
        this.f4717b = f2;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("lowMin", Float.valueOf(this.f4716a));
        json.writeValue("lowMax", Float.valueOf(this.f4717b));
    }
}
