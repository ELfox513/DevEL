package com.badlogic.gdx.graphics.g3d.utils.shapebuilders;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.RenderableProvider;
import com.badlogic.gdx.graphics.g3d.model.MeshPart;
import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FlushablePool;
/* loaded from: classes.dex */
public class RenderableShapeBuilder extends BaseShapeBuilder {

    /* renamed from: A */
    public static float[] f4938A;

    /* renamed from: B */
    public static final RenderablePool f4939B = new RenderablePool();

    /* renamed from: C */
    public static final Array<Renderable> f4940C = new Array<>();

    /* renamed from: z */
    public static short[] f4941z;

    /* loaded from: classes.dex */
    public static class RenderablePool extends FlushablePool<Renderable> {
        @Override // com.badlogic.gdx.utils.Pool
        public Renderable newObject() {
            return new Renderable();
        }

        @Override // com.badlogic.gdx.utils.FlushablePool, com.badlogic.gdx.utils.Pool
        public Renderable obtain() {
            Renderable renderable = (Renderable) super.obtain();
            renderable.environment = null;
            renderable.material = null;
            renderable.meshPart.set("", null, 0, 0, 0);
            renderable.shader = null;
            renderable.userData = null;
            return renderable;
        }
    }

    public static void buildNormals(MeshPartBuilder meshPartBuilder, RenderableProvider renderableProvider, float f) {
        buildNormals(meshPartBuilder, renderableProvider, f, BaseShapeBuilder.f4913a.set(0.0f, 0.0f, 1.0f, 1.0f), BaseShapeBuilder.f4914b.set(1.0f, 0.0f, 0.0f, 1.0f), BaseShapeBuilder.f4915c.set(0.0f, 1.0f, 0.0f, 1.0f));
    }

    /* renamed from: d */
    public static void m24041d(int i) {
        short[] sArr = f4941z;
        if (sArr == null || sArr.length < i) {
            f4941z = new short[i];
        }
    }

    /* renamed from: e */
    public static void m24040e(int i) {
        float[] fArr = f4938A;
        if (fArr == null || fArr.length < i) {
            f4938A = new float[i];
        }
    }

    /* renamed from: f */
    public static short m24039f() {
        short s = Short.MIN_VALUE;
        int i = 0;
        while (true) {
            short[] sArr = f4941z;
            if (i < sArr.length) {
                short s2 = sArr[i];
                if (s2 > s) {
                    s = s2;
                }
                i++;
            } else {
                return s;
            }
        }
    }

    /* renamed from: g */
    public static short m24038g() {
        short s = Short.MAX_VALUE;
        int i = 0;
        while (true) {
            short[] sArr = f4941z;
            if (i < sArr.length) {
                short s2 = sArr[i];
                if (s2 < s) {
                    s = s2;
                }
                i++;
            } else {
                return s;
            }
        }
    }

    public static void buildNormals(MeshPartBuilder meshPartBuilder, RenderableProvider renderableProvider, float f, Color color, Color color2, Color color3) {
        Array<Renderable> array = f4940C;
        renderableProvider.getRenderables(array, f4939B);
        Array.ArrayIterator<Renderable> it = array.iterator();
        while (it.hasNext()) {
            buildNormals(meshPartBuilder, it.next(), f, color, color2, color3);
        }
        f4939B.flush();
        f4940C.clear();
    }

    public static void buildNormals(MeshPartBuilder meshPartBuilder, Renderable renderable, float f, Color color, Color color2, Color color3) {
        int i;
        int i2;
        int i3;
        Mesh mesh = renderable.meshPart.mesh;
        int i4 = mesh.getVertexAttribute(1) != null ? mesh.getVertexAttribute(1).offset / 4 : -1;
        int i5 = mesh.getVertexAttribute(8) != null ? mesh.getVertexAttribute(8).offset / 4 : -1;
        int i6 = mesh.getVertexAttribute(128) != null ? mesh.getVertexAttribute(128).offset / 4 : -1;
        int i7 = mesh.getVertexAttribute(256) != null ? mesh.getVertexAttribute(256).offset / 4 : -1;
        int vertexSize = mesh.getVertexSize() / 4;
        if (mesh.getNumIndices() > 0) {
            m24041d(mesh.getNumIndices());
            MeshPart meshPart = renderable.meshPart;
            mesh.getIndices(meshPart.offset, meshPart.size, f4941z, 0);
            i2 = m24038g();
            i = m24039f() - i2;
        } else {
            MeshPart meshPart2 = renderable.meshPart;
            int i8 = meshPart2.offset;
            i = meshPart2.size;
            i2 = i8;
        }
        int i9 = i * vertexSize;
        m24040e(i9);
        mesh.getVertices(i2 * vertexSize, i9, f4938A, 0);
        while (i2 < i) {
            int i10 = i2 * vertexSize;
            Vector3 vector3 = BaseShapeBuilder.f4918f;
            float[] fArr = f4938A;
            int i11 = i10 + i4;
            vector3.set(fArr[i11], fArr[i11 + 1], fArr[i11 + 2]);
            if (i5 != -1) {
                Vector3 vector32 = BaseShapeBuilder.f4919g;
                float[] fArr2 = f4938A;
                int i12 = i10 + i5;
                i3 = i4;
                vector32.set(fArr2[i12], fArr2[i12 + 1], fArr2[i12 + 2]);
                BaseShapeBuilder.f4920h.set(vector3).add(vector32.scl(f));
            } else {
                i3 = i4;
            }
            int i13 = -1;
            if (i6 != -1) {
                Vector3 vector33 = BaseShapeBuilder.f4921i;
                float[] fArr3 = f4938A;
                int i14 = i10 + i6;
                vector33.set(fArr3[i14], fArr3[i14 + 1], fArr3[i14 + 2]);
                BaseShapeBuilder.f4922j.set(vector3).add(vector33.scl(f));
                i13 = -1;
            }
            if (i7 != i13) {
                Vector3 vector34 = BaseShapeBuilder.f4923k;
                float[] fArr4 = f4938A;
                int i15 = i10 + i7;
                vector34.set(fArr4[i15], fArr4[i15 + 1], fArr4[i15 + 2]);
                BaseShapeBuilder.f4924l.set(vector3).add(vector34.scl(f));
            }
            vector3.mul(renderable.worldTransform);
            Vector3 vector35 = BaseShapeBuilder.f4920h;
            vector35.mul(renderable.worldTransform);
            Vector3 vector36 = BaseShapeBuilder.f4922j;
            vector36.mul(renderable.worldTransform);
            Vector3 vector37 = BaseShapeBuilder.f4924l;
            vector37.mul(renderable.worldTransform);
            if (i5 != -1) {
                meshPartBuilder.setColor(color);
                meshPartBuilder.line(vector3, vector35);
            }
            if (i6 != -1) {
                meshPartBuilder.setColor(color2);
                meshPartBuilder.line(vector3, vector36);
            }
            if (i7 != -1) {
                meshPartBuilder.setColor(color3);
                meshPartBuilder.line(vector3, vector37);
            }
            i2++;
            i4 = i3;
        }
    }
}
