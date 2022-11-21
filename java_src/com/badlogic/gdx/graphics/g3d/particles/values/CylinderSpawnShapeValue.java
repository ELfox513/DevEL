package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public final class CylinderSpawnShapeValue extends PrimitiveSpawnShapeValue {
    public CylinderSpawnShapeValue(CylinderSpawnShapeValue cylinderSpawnShapeValue) {
        super(cylinderSpawnShapeValue);
        load(cylinderSpawnShapeValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public SpawnShapeValue copy() {
        return new CylinderSpawnShapeValue(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void spawnAux(Vector3 vector3, float f) {
        float random;
        boolean z;
        float scale = this.f4708a + (this.f4709b * this.spawnWidthValue.getScale(f));
        float scale2 = this.f4710d + (this.f4711k * this.spawnHeightValue.getScale(f));
        float scale3 = this.f4712p + (this.f4713q * this.spawnDepthValue.getScale(f));
        float random2 = MathUtils.random(scale2) - (scale2 / 2.0f);
        if (this.f4714r) {
            random = scale / 2.0f;
        } else {
            random = MathUtils.random(scale) / 2.0f;
            scale3 = MathUtils.random(scale3);
        }
        float f2 = scale3 / 2.0f;
        boolean z2 = false;
        float f3 = 0.0f;
        if (random == 0.0f) {
            z = true;
        } else {
            z = false;
        }
        if (f2 == 0.0f) {
            z2 = true;
        }
        if (!z && !z2) {
            f3 = MathUtils.random(360.0f);
        } else if (z) {
            f3 = MathUtils.random(1) == 0 ? -90.0f : 90.0f;
        } else if (z2 && MathUtils.random(1) != 0) {
            f3 = 180.0f;
        }
        vector3.set(random * MathUtils.cosDeg(f3), random2, f2 * MathUtils.sinDeg(f3));
    }

    public CylinderSpawnShapeValue() {
    }
}
