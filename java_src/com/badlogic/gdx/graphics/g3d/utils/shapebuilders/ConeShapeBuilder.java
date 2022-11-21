package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.MathUtils;
/* loaded from: classes.dex */
public class ConeShapeBuilder extends BaseShapeBuilder {
    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, int i) {
        build(meshPartBuilder, f, f2, f3, i, 0.0f, 360.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, int i, float f4, float f5) {
        build(meshPartBuilder, f, f2, f3, i, f4, f5, true);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, int i, float f4, float f5, boolean z) {
        meshPartBuilder.ensureVertices(i + 2);
        meshPartBuilder.ensureTriangleIndices(i);
        float f6 = f * 0.5f;
        float f7 = f2 * 0.5f;
        float f8 = f3 * 0.5f;
        float f9 = f4 * 0.017453292f;
        float f10 = i;
        float f11 = ((f5 - f4) * 0.017453292f) / f10;
        float f12 = 1.0f;
        float f13 = 1.0f / f10;
        MeshPartBuilder.VertexInfo vertexInfo = BaseShapeBuilder.f4929q.set(null, null, null, null);
        vertexInfo.hasNormal = true;
        vertexInfo.hasPosition = true;
        vertexInfo.hasUV = true;
        short vertex = meshPartBuilder.vertex(BaseShapeBuilder.f4930r.set(null, null, null, null).setPos(0.0f, f7, 0.0f).setNor(0.0f, 1.0f, 0.0f).setUV(0.5f, 0.0f));
        int i2 = 0;
        short s = 0;
        while (i2 <= i) {
            float f14 = i2;
            float f15 = (f11 * f14) + f9;
            float f16 = f6;
            vertexInfo.position.set(MathUtils.cos(f15) * f6, 0.0f, MathUtils.sin(f15) * f8);
            vertexInfo.normal.set(vertexInfo.position).nor();
            vertexInfo.position.f5534y = -f7;
            vertexInfo.f4890uv.set(f12 - (f14 * f13), 1.0f);
            short vertex2 = meshPartBuilder.vertex(vertexInfo);
            if (i2 != 0) {
                meshPartBuilder.triangle(vertex, vertex2, s);
            }
            i2++;
            s = vertex2;
            f6 = f16;
            f12 = 1.0f;
        }
        if (z) {
            EllipseShapeBuilder.build(meshPartBuilder, f, f3, 0.0f, 0.0f, i, 0.0f, -f7, 0.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 180.0f - f5, 180.0f - f4);
        }
    }
}
