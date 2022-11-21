package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public final class LineSpawnShapeValue extends PrimitiveSpawnShapeValue {
    public LineSpawnShapeValue(LineSpawnShapeValue lineSpawnShapeValue) {
        super(lineSpawnShapeValue);
        load(lineSpawnShapeValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public SpawnShapeValue copy() {
        return new LineSpawnShapeValue(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void spawnAux(Vector3 vector3, float f) {
        float scale = this.f4708a + (this.f4709b * this.spawnWidthValue.getScale(f));
        float scale2 = this.f4710d + (this.f4711k * this.spawnHeightValue.getScale(f));
        float random = MathUtils.random();
        vector3.f5533x = scale * random;
        vector3.f5534y = scale2 * random;
        vector3.f5535z = random * (this.f4712p + (this.f4713q * this.spawnDepthValue.getScale(f)));
    }

    public LineSpawnShapeValue() {
    }
}
