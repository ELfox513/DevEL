package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class EllipseShapeBuilder extends BaseShapeBuilder {
    public static void build(MeshPartBuilder meshPartBuilder, float f, int i, float f2, float f3, float f4, float f5, float f6, float f7) {
        build(meshPartBuilder, f, i, f2, f3, f4, f5, f6, f7, 0.0f, 360.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, int i, Vector3 vector3, Vector3 vector32) {
        build(meshPartBuilder, f, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, int i, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        build(meshPartBuilder, f, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, vector33.f5533x, vector33.f5534y, vector33.f5535z, vector34.f5533x, vector34.f5534y, vector34.f5535z);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, int i, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13) {
        build(meshPartBuilder, f, i, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, 0.0f, 360.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, int i, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10 = f * 2.0f;
        build(meshPartBuilder, f10, f10, i, f2, f3, f4, f5, f6, f7, f8, f9);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, int i, Vector3 vector3, Vector3 vector32, float f2, float f3) {
        build(meshPartBuilder, f, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, f2, f3);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, int i, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, float f2, float f3) {
        build(meshPartBuilder, f, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, vector33.f5533x, vector33.f5534y, vector33.f5535z, vector34.f5533x, vector34.f5534y, vector34.f5535z, f2, f3);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, int i, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15) {
        float f16 = f * 2.0f;
        build(meshPartBuilder, f16, f16, 0.0f, 0.0f, i, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float f8) {
        build(meshPartBuilder, f, f2, i, f3, f4, f5, f6, f7, f8, 0.0f, 360.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i, Vector3 vector3, Vector3 vector32) {
        build(meshPartBuilder, f, f2, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        build(meshPartBuilder, f, f2, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, vector33.f5533x, vector33.f5534y, vector33.f5535z, vector34.f5533x, vector34.f5534y, vector34.f5535z);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14) {
        build(meshPartBuilder, f, f2, i, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, 0.0f, 360.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        build(meshPartBuilder, f, f2, 0.0f, 0.0f, i, f3, f4, f5, f6, f7, f8, f9, f10);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i, Vector3 vector3, Vector3 vector32, float f3, float f4) {
        build(meshPartBuilder, f, f2, 0.0f, 0.0f, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, f3, f4);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, float f3, float f4) {
        build(meshPartBuilder, f, f2, 0.0f, 0.0f, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, vector33.f5533x, vector33.f5534y, vector33.f5535z, vector34.f5533x, vector34.f5534y, vector34.f5535z, f3, f4);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        build(meshPartBuilder, f, f2, 0.0f, 0.0f, i, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, float f4, int i, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12) {
        Vector3 vector3 = BaseShapeBuilder.f4919g;
        vector3.set(f8, f9, f10).crs(0.0f, 0.0f, 1.0f);
        Vector3 vector32 = BaseShapeBuilder.f4920h;
        vector32.set(f8, f9, f10).crs(0.0f, 1.0f, 0.0f);
        if (vector32.len2() > vector3.len2()) {
            vector3.set(vector32);
        }
        vector32.set(vector3.nor()).crs(f8, f9, f10).nor();
        build(meshPartBuilder, f, f2, f3, f4, i, f5, f6, f7, f8, f9, f10, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, f11, f12);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, float f4, int i, float f5, float f6, float f7, float f8, float f9, float f10) {
        build(meshPartBuilder, f, f2, f3, f4, i, f5, f6, f7, f8, f9, f10, 0.0f, 360.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, float f4, int i, Vector3 vector3, Vector3 vector32) {
        build(meshPartBuilder, f, f2, f3, f4, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, 0.0f, 360.0f);
    }

    public static void build(MeshPartBuilder meshPartBuilder, float f, float f2, float f3, float f4, int i, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        short s;
        Vector3 vector3;
        Vector3 vector32;
        short s2;
        short s3;
        if (f3 <= 0.0f || f4 <= 0.0f) {
            meshPartBuilder.ensureVertices(i + 2);
            meshPartBuilder.ensureTriangleIndices(i);
        } else if (f3 == f && f4 == f2) {
            int i2 = i + 1;
            meshPartBuilder.ensureVertices(i2);
            meshPartBuilder.ensureIndices(i2);
            if (meshPartBuilder.getPrimitiveType() != 1) {
                throw new GdxRuntimeException("Incorrect primitive type : expect GL_LINES because innerWidth == width && innerHeight == height");
            }
        } else {
            int i3 = i + 1;
            meshPartBuilder.ensureVertices(i3 * 2);
            meshPartBuilder.ensureRectangleIndices(i3);
        }
        float f19 = f17 * 0.017453292f;
        float f20 = ((f18 - f17) * 0.017453292f) / i;
        Vector3 scl = BaseShapeBuilder.f4919g.set(f11, f12, f13).scl(f * 0.5f);
        Vector3 scl2 = BaseShapeBuilder.f4920h.set(f14, f15, f16).scl(f2 * 0.5f);
        Vector3 scl3 = BaseShapeBuilder.f4921i.set(f11, f12, f13).scl(f3 * 0.5f);
        Vector3 scl4 = BaseShapeBuilder.f4922j.set(f14, f15, f16).scl(f4 * 0.5f);
        MeshPartBuilder.VertexInfo vertexInfo = BaseShapeBuilder.f4929q.set(null, null, null, null);
        vertexInfo.hasNormal = true;
        vertexInfo.hasPosition = true;
        vertexInfo.hasUV = true;
        vertexInfo.f4890uv.set(0.5f, 0.5f);
        vertexInfo.position.set(f5, f6, f7);
        vertexInfo.normal.set(f8, f9, f10);
        MeshPartBuilder.VertexInfo vertexInfo2 = BaseShapeBuilder.f4930r.set(null, null, null, null);
        vertexInfo2.hasNormal = true;
        vertexInfo2.hasPosition = true;
        vertexInfo2.hasUV = true;
        vertexInfo2.f4890uv.set(0.5f, 0.5f);
        vertexInfo2.position.set(f5, f6, f7);
        vertexInfo2.normal.set(f8, f9, f10);
        short vertex = meshPartBuilder.vertex(vertexInfo2);
        float f21 = (f3 / f) * 0.5f;
        float f22 = (f4 / f2) * 0.5f;
        int i4 = 0;
        int i5 = i;
        short s4 = 0;
        short s5 = 0;
        short s6 = 0;
        while (i4 <= i5) {
            float f23 = f19 + (i4 * f20);
            float cos = MathUtils.cos(f23);
            float sin = MathUtils.sin(f23);
            short s7 = vertex;
            float f24 = f22;
            short s8 = s5;
            float f25 = f21;
            Vector3 vector33 = scl4;
            vertexInfo2.position.set(f5, f6, f7).add((scl.f5533x * cos) + (scl2.f5533x * sin), (scl.f5534y * cos) + (scl2.f5534y * sin), (scl.f5535z * cos) + (scl2.f5535z * sin));
            vertexInfo2.f4890uv.set((cos * 0.5f) + 0.5f, (sin * 0.5f) + 0.5f);
            short vertex2 = meshPartBuilder.vertex(vertexInfo2);
            if (f3 <= 0.0f || f4 <= 0.0f) {
                s = s8;
                vector3 = vector33;
                vector32 = scl2;
                s2 = s6;
                s3 = s7;
                if (i4 != 0) {
                    meshPartBuilder.triangle(vertex2, s4, s3);
                }
            } else if (f3 == f && f4 == f2) {
                if (i4 != 0) {
                    meshPartBuilder.line(vertex2, s4);
                }
                s = s8;
                vector3 = vector33;
                vector32 = scl2;
                s2 = s6;
                s3 = s7;
            } else {
                vector3 = vector33;
                vector32 = scl2;
                vertexInfo.position.set(f5, f6, f7).add((scl3.f5533x * cos) + (vector3.f5533x * sin), (scl3.f5534y * cos) + (vector3.f5534y * sin), (scl3.f5535z * cos) + (vector3.f5535z * sin));
                vertexInfo.f4890uv.set((f25 * cos) + 0.5f, (f24 * sin) + 0.5f);
                short vertex3 = meshPartBuilder.vertex(vertexInfo);
                if (i4 != 0) {
                    meshPartBuilder.rect(vertex3, vertex2, s6, s8);
                }
                s = vertex3;
                s6 = vertex2;
                s3 = s7;
                i4++;
                i5 = i;
                f22 = f24;
                s4 = vertex2;
                scl4 = vector3;
                vertex = s3;
                s5 = s;
                scl2 = vector32;
                f21 = f25;
            }
            s6 = s2;
            i4++;
            i5 = i;
            f22 = f24;
            s4 = vertex2;
            scl4 = vector3;
            vertex = s3;
            s5 = s;
            scl2 = vector32;
            f21 = f25;
        }
    }
}
