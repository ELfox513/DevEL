package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.ShortArray;
/* loaded from: classes.dex */
public class SphereShapeBuilder extends BaseShapeBuilder {

    /* renamed from: z */
    public static final ShortArray f4943z = new ShortArray();

    /* renamed from: A */
    public static final Matrix3 f4942A = new Matrix3();

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, int i, int i2) {
        build(meshPartBuilder, f, f2, f3, i, i2, 0.0f, 360.0f, 0.0f, 180.0f);
    }

    @Deprecated
    public static void build(MeshPartBuilder meshPartBuilder, Matrix4 matrix4, float f, float f2, float f3, int i, int i2) {
        build(meshPartBuilder, matrix4, f, f2, f3, i, i2, 0.0f, 360.0f, 0.0f, 180.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, int i, int i2, float f4, float f5, float f6, float f7) {
        build(meshPartBuilder, BaseShapeBuilder.f4935w.idt(), f, f2, f3, i, i2, f4, f5, f6, f7);
    }

    @Deprecated
    public static void build(MeshPartBuilder meshPartBuilder, Matrix4 matrix4, float f, float f2, float f3, int i, int i2, float f4, float f5, float f6, float f7) {
        float f8;
        float f9;
        float f10;
        int i3 = i;
        int i4 = i2;
        boolean isEqual = MathUtils.isEqual(f6, 0.0f);
        boolean isEqual2 = MathUtils.isEqual(f7, 180.0f);
        float f11 = f * 0.5f;
        float f12 = f2 * 0.5f;
        float f13 = f3 * 0.5f;
        float f14 = f4 * 0.017453292f;
        float f15 = i3;
        float f16 = ((f5 - f4) * 0.017453292f) / f15;
        float f17 = f6 * 0.017453292f;
        float f18 = i4;
        float f19 = ((f7 - f6) * 0.017453292f) / f18;
        float f20 = 1.0f / f15;
        float f21 = 1.0f / f18;
        MeshPartBuilder.VertexInfo vertexInfo = BaseShapeBuilder.f4929q.set(null, null, null, null);
        vertexInfo.hasNormal = true;
        vertexInfo.hasPosition = true;
        vertexInfo.hasUV = true;
        f4942A.set(matrix4);
        int i5 = i3 + 3;
        ShortArray shortArray = f4943z;
        shortArray.clear();
        shortArray.ensureCapacity(i3 * 2);
        shortArray.size = i5;
        int i6 = i3 + 1;
        meshPartBuilder.ensureVertices((i4 + 1) * i6);
        meshPartBuilder.ensureRectangleIndices(i3);
        int i7 = 0;
        int i8 = 0;
        while (i7 <= i4) {
            int i9 = i6;
            float f22 = i7;
            float f23 = f17 + (f19 * f22);
            float f24 = f22 * f21;
            float sin = MathUtils.sin(f23);
            float f25 = f19;
            float cos = MathUtils.cos(f23) * f12;
            float f26 = f21;
            int i10 = i8;
            float f27 = f12;
            int i11 = 0;
            while (i11 <= i3) {
                float f28 = i11;
                float f29 = f14 + (f16 * f28);
                if ((i7 == 0 && isEqual) || (i7 == i4 && isEqual2)) {
                    f9 = (f28 - 0.5f) * f20;
                    f8 = 1.0f;
                } else {
                    f8 = 1.0f;
                    f9 = f28 * f20;
                }
                float f30 = f14;
                float f31 = f11;
                float f32 = f16;
                vertexInfo.position.set(MathUtils.cos(f29) * f11 * sin, cos, MathUtils.sin(f29) * f13 * sin);
                vertexInfo.normal.set(vertexInfo.position).mul(f4942A).nor();
                vertexInfo.position.mul(matrix4);
                vertexInfo.f4890uv.set(f8 - f9, f24);
                ShortArray shortArray2 = f4943z;
                shortArray2.set(i10, meshPartBuilder.vertex(vertexInfo));
                int i12 = i10 + i5;
                if (i7 <= 0 || i11 <= 0) {
                    f10 = cos;
                } else if (i7 == 1 && isEqual) {
                    f10 = cos;
                    meshPartBuilder.triangle(shortArray2.get(i10), shortArray2.get((i12 - 1) % i5), shortArray2.get((i12 - i9) % i5));
                } else {
                    f10 = cos;
                    if (i7 == i4 && isEqual2) {
                        meshPartBuilder.triangle(shortArray2.get(i10), shortArray2.get((i12 - (i + 2)) % i5), shortArray2.get((i12 - i9) % i5));
                    } else {
                        meshPartBuilder.rect(shortArray2.get(i10), shortArray2.get((i12 - 1) % i5), shortArray2.get((i12 - (i + 2)) % i5), shortArray2.get((i12 - i9) % i5));
                    }
                }
                i10 = (i10 + 1) % shortArray2.size;
                i11++;
                f14 = f30;
                i3 = i;
                i4 = i2;
                f16 = f32;
                f11 = f31;
                cos = f10;
            }
            i7++;
            f14 = f14;
            i3 = i;
            i4 = i2;
            i6 = i9;
            f19 = f25;
            f12 = f27;
            i8 = i10;
            f21 = f26;
        }
    }
}
