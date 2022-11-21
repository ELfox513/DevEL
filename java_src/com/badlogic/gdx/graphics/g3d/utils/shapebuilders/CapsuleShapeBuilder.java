package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class CapsuleShapeBuilder extends BaseShapeBuilder {
    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i) {
        float f3 = 2.0f * f;
        if (f2 >= f3) {
            float f4 = f2 - f3;
            CylinderShapeBuilder.build(meshPartBuilder, f3, f4, f3, i, 0.0f, 360.0f, false);
            Matrix4 matrix4 = BaseShapeBuilder.f4935w;
            SphereShapeBuilder.build(meshPartBuilder, matrix4.setToTranslation(0.0f, 0.5f * f4, 0.0f), f3, f3, f3, i, i, 0.0f, 360.0f, 0.0f, 90.0f);
            SphereShapeBuilder.build(meshPartBuilder, matrix4.setToTranslation(0.0f, f4 * (-0.5f), 0.0f), f3, f3, f3, i, i, 0.0f, 360.0f, 90.0f, 180.0f);
            return;
        }
        throw new GdxRuntimeException("Height must be at least twice the radius");
    }
}
