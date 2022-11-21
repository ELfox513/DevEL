package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public final class PointSpawnShapeValue extends PrimitiveSpawnShapeValue {
    public PointSpawnShapeValue(PointSpawnShapeValue pointSpawnShapeValue) {
        super(pointSpawnShapeValue);
        load(pointSpawnShapeValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public SpawnShapeValue copy() {
        return new PointSpawnShapeValue(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void spawnAux(Vector3 vector3, float f) {
        vector3.f5533x = this.f4708a + (this.f4709b * this.spawnWidthValue.getScale(f));
        vector3.f5534y = this.f4710d + (this.f4711k * this.spawnHeightValue.getScale(f));
        vector3.f5535z = this.f4712p + (this.f4713q * this.spawnDepthValue.getScale(f));
    }

    public PointSpawnShapeValue() {
    }
}
