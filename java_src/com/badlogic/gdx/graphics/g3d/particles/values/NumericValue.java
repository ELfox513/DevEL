package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public class NumericValue extends ParticleValue {

    /* renamed from: a */
    public float f4706a;

    public float getValue() {
        return this.f4706a;
    }

    public void setValue(float f) {
        this.f4706a = f;
    }

    public void load(NumericValue numericValue) {
        super.load((ParticleValue) numericValue);
        this.f4706a = numericValue.f4706a;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        this.f4706a = ((Float) json.readValue("value", Float.TYPE, jsonValue)).floatValue();
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("value", Float.valueOf(this.f4706a));
    }
}
