package com.badlogic.gdx.graphics.g3d.particles.values;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
/* loaded from: classes.dex */
public final class RectangleSpawnShapeValue extends PrimitiveSpawnShapeValue {
    public RectangleSpawnShapeValue(RectangleSpawnShapeValue rectangleSpawnShapeValue) {
        super(rectangleSpawnShapeValue);
        load(rectangleSpawnShapeValue);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public SpawnShapeValue copy() {
        return new RectangleSpawnShapeValue(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.values.SpawnShapeValue
    public void spawnAux(Vector3 vector3, float f) {
        float f2;
        float random;
        float random2;
        float f3;
        float f4;
        float f5;
        float random3;
        float random4;
        float scale = this.f4708a + (this.f4709b * this.spawnWidthValue.getScale(f));
        float scale2 = this.f4710d + (this.f4711k * this.spawnHeightValue.getScale(f));
        float scale3 = this.f4712p + (this.f4713q * this.spawnDepthValue.getScale(f));
        if (this.f4714r) {
            int random5 = MathUtils.random(-1, 1);
            if (random5 == -1) {
                if (MathUtils.random(1) == 0) {
                    f4 = (-scale) / 2.0f;
                } else {
                    f4 = scale / 2.0f;
                }
                if (f4 == 0.0f) {
                    if (MathUtils.random(1) == 0) {
                        f3 = (-scale2) / 2.0f;
                    } else {
                        f3 = scale2 / 2.0f;
                    }
                    if (MathUtils.random(1) == 0) {
                        random2 = (-scale3) / 2.0f;
                    } else {
                        random2 = scale3 / 2.0f;
                    }
                } else {
                    f3 = MathUtils.random(scale2) - (scale2 / 2.0f);
                    random2 = MathUtils.random(scale3) - (scale3 / 2.0f);
                }
            } else if (random5 == 0) {
                if (MathUtils.random(1) == 0) {
                    f5 = (-scale3) / 2.0f;
                } else {
                    f5 = scale3 / 2.0f;
                }
                if (f5 == 0.0f) {
                    if (MathUtils.random(1) == 0) {
                        scale2 = -scale2;
                    }
                    random3 = scale2 / 2.0f;
                    if (MathUtils.random(1) == 0) {
                        scale = -scale;
                    }
                    random4 = scale / 2.0f;
                } else {
                    random3 = MathUtils.random(scale2) - (scale2 / 2.0f);
                    random4 = MathUtils.random(scale) - (scale / 2.0f);
                }
                float f6 = random3;
                random2 = f5;
                f4 = random4;
                f3 = f6;
            } else {
                if (MathUtils.random(1) == 0) {
                    f2 = (-scale2) / 2.0f;
                } else {
                    f2 = scale2 / 2.0f;
                }
                if (f2 == 0.0f) {
                    if (MathUtils.random(1) == 0) {
                        scale = -scale;
                    }
                    random = scale / 2.0f;
                    if (MathUtils.random(1) == 0) {
                        random2 = (-scale3) / 2.0f;
                    } else {
                        random2 = scale3 / 2.0f;
                    }
                } else {
                    random = MathUtils.random(scale) - (scale / 2.0f);
                    random2 = MathUtils.random(scale3) - (scale3 / 2.0f);
                }
                float f7 = random;
                f3 = f2;
                f4 = f7;
            }
            vector3.f5533x = f4;
            vector3.f5534y = f3;
            vector3.f5535z = random2;
            return;
        }
        vector3.f5533x = MathUtils.random(scale) - (scale / 2.0f);
        vector3.f5534y = MathUtils.random(scale2) - (scale2 / 2.0f);
        vector3.f5535z = MathUtils.random(scale3) - (scale3 / 2.0f);
    }

    public RectangleSpawnShapeValue() {
    }
}
