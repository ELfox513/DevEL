package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.graphics.g3d.particles.values.PrimitiveSpawnShapeValue;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public final class EllipseSpawnShapeValue extends PrimitiveSpawnShapeValue {

    /* renamed from: t */
    public PrimitiveSpawnShapeValue.SpawnSide f4692t;

    public EllipseSpawnShapeValue(EllipseSpawnShapeValue ellipseSpawnShapeValue) {
        super(ellipseSpawnShapeValue);
        this.f4692t = PrimitiveSpawnShapeValue.SpawnSide.both;
        load(ellipseSpawnShapeValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public SpawnShapeValue copy() {
        return new EllipseSpawnShapeValue(this);
    }

    public PrimitiveSpawnShapeValue.SpawnSide getSide() {
        return this.f4692t;
    }

    public void setSide(PrimitiveSpawnShapeValue.SpawnSide spawnSide) {
        this.f4692t = spawnSide;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void spawnAux(Vector3 vector3, float f) {
        float f2;
        float random;
        float random2;
        float random3;
        float scale = this.f4708a + (this.f4709b * this.spawnWidthValue.getScale(f));
        float scale2 = this.f4710d + (this.f4711k * this.spawnHeightValue.getScale(f));
        float scale3 = this.f4712p + (this.f4713q * this.spawnDepthValue.getScale(f));
        PrimitiveSpawnShapeValue.SpawnSide spawnSide = this.f4692t;
        if (spawnSide == PrimitiveSpawnShapeValue.SpawnSide.top) {
            f2 = 3.1415927f;
        } else if (spawnSide == PrimitiveSpawnShapeValue.SpawnSide.bottom) {
            f2 = -3.1415927f;
        } else {
            f2 = 6.2831855f;
        }
        float random4 = MathUtils.random(0.0f, f2);
        if (this.f4714r) {
            if (scale == 0.0f) {
                vector3.set(0.0f, (scale2 / 2.0f) * MathUtils.sin(random4), (scale3 / 2.0f) * MathUtils.cos(random4));
                return;
            } else if (scale2 == 0.0f) {
                vector3.set((scale / 2.0f) * MathUtils.cos(random4), 0.0f, (scale3 / 2.0f) * MathUtils.sin(random4));
                return;
            } else if (scale3 == 0.0f) {
                vector3.set((scale / 2.0f) * MathUtils.cos(random4), (scale2 / 2.0f) * MathUtils.sin(random4), 0.0f);
                return;
            } else {
                random = scale / 2.0f;
                random2 = scale2 / 2.0f;
                random3 = scale3 / 2.0f;
            }
        } else {
            random = MathUtils.random(scale / 2.0f);
            random2 = MathUtils.random(scale2 / 2.0f);
            random3 = MathUtils.random(scale3 / 2.0f);
        }
        float random5 = MathUtils.random(-1.0f, 1.0f);
        float sqrt = (float) Math.sqrt(1.0f - (random5 * random5));
        vector3.set(random * sqrt * MathUtils.cos(random4), random2 * sqrt * MathUtils.sin(random4), random3 * random5);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.PrimitiveSpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue
    public void load(ParticleValue particleValue) {
        super.load(particleValue);
        this.f4692t = ((EllipseSpawnShapeValue) particleValue).f4692t;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.PrimitiveSpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void read(Json json, JsonValue jsonValue) {
        super.read(json, jsonValue);
        this.f4692t = (PrimitiveSpawnShapeValue.SpawnSide) json.readValue("side", PrimitiveSpawnShapeValue.SpawnSide.class, jsonValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.PrimitiveSpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue, com.badlogic.gdx.graphics.g3d.particles.values.ParticleValue, com.badlogic.gdx.utils.Json.Serializable
    public void write(Json json) {
        super.write(json);
        json.writeValue("side", this.f4692t);
    }

    public EllipseSpawnShapeValue() {
        this.f4692t = PrimitiveSpawnShapeValue.SpawnSide.both;
    }
}
