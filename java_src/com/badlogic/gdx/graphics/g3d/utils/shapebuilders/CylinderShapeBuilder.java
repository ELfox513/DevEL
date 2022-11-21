package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.MathUtils;
/* loaded from: classes.dex */
public class CylinderShapeBuilder extends BaseShapeBuilder {
    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, int i) {
        build(meshPartBuilder, f, f2, f3, i, 0.0f, 360.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, int i, float f4, float f5) {
        build(meshPartBuilder, f, f2, f3, i, f4, f5, true);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, int i, float f4, float f5, boolean z) {
        float f6 = f * 0.5f;
        float f7 = f2 * 0.5f;
        float f8 = 0.5f * f3;
        float f9 = f4 * 0.017453292f;
        float f10 = i;
        float f11 = ((f5 - f4) * 0.017453292f) / f10;
        float f12 = 1.0f;
        float f13 = 1.0f / f10;
        MeshPartBuilder.VertexInfo vertexInfo = BaseShapeBuilder.f4929q.set(null, null, null, null);
        vertexInfo.hasNormal = true;
        vertexInfo.hasPosition = true;
        vertexInfo.hasUV = true;
        MeshPartBuilder.VertexInfo vertexInfo2 = BaseShapeBuilder.f4930r.set(null, null, null, null);
        vertexInfo2.hasNormal = true;
        vertexInfo2.hasPosition = true;
        vertexInfo2.hasUV = true;
        meshPartBuilder.ensureVertices((i + 1) * 2);
        meshPartBuilder.ensureRectangleIndices(i);
        int i2 = 0;
        short s = 0;
        short s2 = 0;
        while (i2 <= i) {
            float f14 = i2;
            float f15 = (f11 * f14) + f9;
            float f16 = f12 - (f14 * f13);
            float f17 = f13;
            float f18 = f8;
            vertexInfo.position.set(MathUtils.cos(f15) * f6, 0.0f, MathUtils.sin(f15) * f8);
            vertexInfo.normal.set(vertexInfo.position).nor();
            vertexInfo.position.f5534y = -f7;
            f12 = 1.0f;
            vertexInfo.f4890uv.set(f16, 1.0f);
            vertexInfo2.position.set(vertexInfo.position);
            vertexInfo2.normal.set(vertexInfo.normal);
            vertexInfo2.position.f5534y = f7;
            vertexInfo2.f4890uv.set(f16, 0.0f);
            short vertex = meshPartBuilder.vertex(vertexInfo);
            short vertex2 = meshPartBuilder.vertex(vertexInfo2);
            if (i2 != 0) {
                meshPartBuilder.rect(s, vertex2, vertex, s2);
            }
            i2++;
            s2 = vertex;
            s = vertex2;
            f8 = f18;
            f13 = f17;
        }
        if (z) {
            EllipseShapeBuilder.build(meshPartBuilder, f, f3, 0.0f, 0.0f, i, 0.0f, f7, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, f4, f5);
            EllipseShapeBuilder.build(meshPartBuilder, f, f3, 0.0f, 0.0f, i, 0.0f, -f7, 0.0f, 0.0f, -1.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 180.0f - f5, 180.0f - f4);
        }
    }
}
