package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.glutils.IndexArray;
import com.badlogic.gdx.graphics.glutils.IndexBufferObject;
import com.badlogic.gdx.graphics.glutils.IndexBufferObjectSubData;
import com.badlogic.gdx.graphics.glutils.IndexData;
import com.badlogic.gdx.graphics.glutils.InstanceBufferObject;
import com.badlogic.gdx.graphics.glutils.InstanceData;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.graphics.glutils.VertexArray;
import com.badlogic.gdx.graphics.glutils.VertexBufferObject;
import com.badlogic.gdx.graphics.glutils.VertexBufferObjectSubData;
import com.badlogic.gdx.graphics.glutils.VertexBufferObjectWithVAO;
import com.badlogic.gdx.graphics.glutils.VertexData;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class Mesh implements Disposable {

    /* renamed from: s */
    public static final Map<Application, Array<Mesh>> f3910s = new HashMap();

    /* renamed from: a */
    public final VertexData f3911a;

    /* renamed from: b */
    public final IndexData f3912b;

    /* renamed from: d */
    public boolean f3913d;

    /* renamed from: k */
    public final boolean f3914k;

    /* renamed from: p */
    public InstanceData f3915p;

    /* renamed from: q */
    public boolean f3916q;

    /* renamed from: r */
    public final Vector3 f3917r;

    /* renamed from: com.badlogic.gdx.graphics.Mesh$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11921 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3918a;

        static {
            int[] iArr = new int[VertexDataType.values().length];
            f3918a = iArr;
            try {
                iArr[VertexDataType.VertexBufferObject.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3918a[VertexDataType.VertexBufferObjectSubData.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3918a[VertexDataType.VertexBufferObjectWithVAO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3918a[VertexDataType.VertexArray.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum VertexDataType {
        VertexArray,
        VertexBufferObject,
        VertexBufferObjectSubData,
        VertexBufferObjectWithVAO
    }

    public Mesh(boolean z, int i, int i2, VertexAttribute... vertexAttributeArr) {
        this.f3913d = true;
        this.f3916q = false;
        this.f3917r = new Vector3();
        this.f3911a = m24257b(z, i, new VertexAttributes(vertexAttributeArr));
        this.f3912b = new IndexBufferObject(z, i2);
        this.f3914k = false;
        m24258a(Gdx.app, this);
    }

    public static void clearAllMeshes(Application application) {
        f3910s.remove(application);
    }

    public void bind(ShaderProgram shaderProgram) {
        bind(shaderProgram, null);
    }

    public BoundingBox calculateBoundingBox() {
        BoundingBox boundingBox = new BoundingBox();
        calculateBoundingBox(boundingBox);
        return boundingBox;
    }

    public float calculateRadius(float f, float f2, float f3, int i, int i2, Matrix4 matrix4) {
        return (float) Math.sqrt(calculateRadiusSquared(f, f2, f3, i, i2, matrix4));
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.badlogic.gdx.graphics.Mesh copy(boolean r19, boolean r20, int[] r21) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.Mesh.copy(boolean, boolean, int[]):com.badlogic.gdx.graphics.Mesh");
    }

    public BoundingBox extendBoundingBox(BoundingBox boundingBox, int i, int i2) {
        return extendBoundingBox(boundingBox, i, i2, null);
    }

    public void getIndices(short[] sArr) {
        getIndices(sArr, 0);
    }

    public ShortBuffer getIndicesBuffer() {
        return this.f3912b.getBuffer();
    }

    public int getMaxIndices() {
        return this.f3912b.getNumMaxIndices();
    }

    public int getMaxVertices() {
        return this.f3911a.getNumMaxVertices();
    }

    public int getNumIndices() {
        return this.f3912b.getNumIndices();
    }

    public int getNumVertices() {
        return this.f3911a.getNumVertices();
    }

    public VertexAttributes getVertexAttributes() {
        return this.f3911a.getAttributes();
    }

    public int getVertexSize() {
        return this.f3911a.getAttributes().vertexSize;
    }

    public float[] getVertices(float[] fArr) {
        return getVertices(0, -1, fArr);
    }

    public FloatBuffer getVerticesBuffer() {
        return this.f3911a.getBuffer();
    }

    public boolean isInstanced() {
        return this.f3916q;
    }

    public void render(ShaderProgram shaderProgram, int i) {
        render(shaderProgram, i, 0, this.f3912b.getNumMaxIndices() > 0 ? getNumIndices() : getNumVertices(), this.f3913d);
    }

    public void scale(float f, float f2, float f3) {
        VertexAttribute vertexAttribute = getVertexAttribute(1);
        int i = vertexAttribute.offset / 4;
        int i2 = vertexAttribute.numComponents;
        int numVertices = getNumVertices();
        int vertexSize = getVertexSize() / 4;
        float[] fArr = new float[numVertices * vertexSize];
        getVertices(fArr);
        int i3 = 0;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    while (i3 < numVertices) {
                        fArr[i] = fArr[i] * f;
                        int i4 = i + 1;
                        fArr[i4] = fArr[i4] * f2;
                        int i5 = i + 2;
                        fArr[i5] = fArr[i5] * f3;
                        i += vertexSize;
                        i3++;
                    }
                }
            } else {
                while (i3 < numVertices) {
                    fArr[i] = fArr[i] * f;
                    int i6 = i + 1;
                    fArr[i6] = fArr[i6] * f2;
                    i += vertexSize;
                    i3++;
                }
            }
        } else {
            while (i3 < numVertices) {
                fArr[i] = fArr[i] * f;
                i += vertexSize;
                i3++;
            }
        }
        setVertices(fArr);
    }

    public void setAutoBind(boolean z) {
        this.f3913d = z;
    }

    public Mesh setIndices(short[] sArr) {
        this.f3912b.setIndices(sArr, 0, sArr.length);
        return this;
    }

    public Mesh setInstanceData(float[] fArr, int i, int i2) {
        InstanceData instanceData = this.f3915p;
        if (instanceData != null) {
            instanceData.setInstanceData(fArr, i, i2);
            return this;
        }
        throw new GdxRuntimeException("An InstanceBufferObject must be set before setting instance data!");
    }

    public Mesh setVertices(float[] fArr) {
        this.f3911a.setVertices(fArr, 0, fArr.length);
        return this;
    }

    public void transform(Matrix4 matrix4) {
        transform(matrix4, 0, getNumVertices());
    }

    public void transformUV(Matrix3 matrix3) {
        m24256c(matrix3, 0, getNumVertices());
    }

    public void unbind(ShaderProgram shaderProgram) {
        unbind(shaderProgram, null);
    }

    public Mesh updateInstanceData(int i, float[] fArr) {
        return updateInstanceData(i, fArr, 0, fArr.length);
    }

    public Mesh updateVertices(int i, float[] fArr) {
        return updateVertices(i, fArr, 0, fArr.length);
    }

    /* renamed from: a */
    public static void m24258a(Application application, Mesh mesh) {
        Map<Application, Array<Mesh>> map = f3910s;
        Array<Mesh> array = map.get(application);
        if (array == null) {
            array = new Array<>();
        }
        array.add(mesh);
        map.put(application, array);
    }

    public static String getManagedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append("Managed meshes/app: { ");
        for (Application application : f3910s.keySet()) {
            sb.append(f3910s.get(application).size);
            sb.append(" ");
        }
        sb.append("}");
        return sb.toString();
    }

    public static void invalidateAllMeshes(Application application) {
        Array<Mesh> array = f3910s.get(application);
        if (array == null) {
            return;
        }
        for (int i = 0; i < array.size; i++) {
            array.get(i).f3911a.invalidate();
            array.get(i).f3912b.invalidate();
        }
    }

    public static void transformUV(Matrix3 matrix3, float[] fArr, int i, int i2, int i3, int i4) {
        if (i3 >= 0 && i4 >= 1 && (i3 + i4) * i <= fArr.length) {
            Vector2 vector2 = new Vector2();
            int i5 = i2 + (i3 * i);
            for (int i6 = 0; i6 < i4; i6++) {
                int i7 = i5 + 1;
                vector2.set(fArr[i5], fArr[i7]).mul(matrix3);
                fArr[i5] = vector2.f5527x;
                fArr[i7] = vector2.f5528y;
                i5 += i;
            }
            return;
        }
        throw new IndexOutOfBoundsException("start = " + i3 + ", count = " + i4 + ", vertexSize = " + i + ", length = " + fArr.length);
    }

    /* renamed from: b */
    public final VertexData m24257b(boolean z, int i, VertexAttributes vertexAttributes) {
        if (Gdx.gl30 != null) {
            return new VertexBufferObjectWithVAO(z, i, vertexAttributes);
        }
        return new VertexBufferObject(z, i, vertexAttributes);
    }

    public void bind(ShaderProgram shaderProgram, int[] iArr) {
        this.f3911a.bind(shaderProgram, iArr);
        InstanceData instanceData = this.f3915p;
        if (instanceData != null && instanceData.getNumInstances() > 0) {
            this.f3915p.bind(shaderProgram, iArr);
        }
        if (this.f3912b.getNumIndices() > 0) {
            this.f3912b.bind();
        }
    }

    /* renamed from: c */
    public void m24256c(Matrix3 matrix3, int i, int i2) {
        int i3 = getVertexAttribute(16).offset / 4;
        int vertexSize = getVertexSize() / 4;
        int numVertices = getNumVertices() * vertexSize;
        float[] fArr = new float[numVertices];
        getVertices(0, numVertices, fArr);
        transformUV(matrix3, fArr, vertexSize, i3, i, i2);
        setVertices(fArr, 0, numVertices);
    }

    public float calculateRadius(Vector3 vector3, int i, int i2, Matrix4 matrix4) {
        return calculateRadius(vector3.f5533x, vector3.f5534y, vector3.f5535z, i, i2, matrix4);
    }

    public float calculateRadiusSquared(float f, float f2, float f3, int i, int i2, Matrix4 matrix4) {
        int i3;
        int numIndices = getNumIndices();
        if (i >= 0 && i2 >= 1 && (i3 = i + i2) <= numIndices) {
            FloatBuffer buffer = this.f3911a.getBuffer();
            ShortBuffer buffer2 = this.f3912b.getBuffer();
            VertexAttribute vertexAttribute = getVertexAttribute(1);
            int i4 = vertexAttribute.offset / 4;
            int i5 = this.f3911a.getAttributes().vertexSize / 4;
            int i6 = vertexAttribute.numComponents;
            short s = 65535;
            float f4 = 0.0f;
            if (i6 != 1) {
                if (i6 != 2) {
                    if (i6 != 3) {
                        return 0.0f;
                    }
                    int i7 = i;
                    while (i7 < i3) {
                        int i8 = ((buffer2.get(i7) & s) * i5) + i4;
                        int i9 = i4;
                        this.f3917r.set(buffer.get(i8), buffer.get(i8 + 1), buffer.get(i8 + 2));
                        if (matrix4 != null) {
                            this.f3917r.mul(matrix4);
                        }
                        float len2 = this.f3917r.sub(f, f2, f3).len2();
                        if (len2 > f4) {
                            f4 = len2;
                        }
                        i7++;
                        i4 = i9;
                        s = 65535;
                    }
                    return f4;
                }
                float f5 = 0.0f;
                for (int i10 = i; i10 < i3; i10++) {
                    int i11 = ((buffer2.get(i10) & 65535) * i5) + i4;
                    this.f3917r.set(buffer.get(i11), buffer.get(i11 + 1), 0.0f);
                    if (matrix4 != null) {
                        this.f3917r.mul(matrix4);
                    }
                    float len22 = this.f3917r.sub(f, f2, f3).len2();
                    if (len22 > f5) {
                        f5 = len22;
                    }
                }
                return f5;
            }
            float f6 = 0.0f;
            for (int i12 = i; i12 < i3; i12++) {
                this.f3917r.set(buffer.get(((buffer2.get(i12) & 65535) * i5) + i4), 0.0f, 0.0f);
                if (matrix4 != null) {
                    this.f3917r.mul(matrix4);
                }
                float len23 = this.f3917r.sub(f, f2, f3).len2();
                if (len23 > f6) {
                    f6 = len23;
                }
            }
            return f6;
        }
        throw new GdxRuntimeException("Not enough indices");
    }

    public Mesh disableInstancedRendering() {
        if (this.f3916q) {
            this.f3916q = false;
            this.f3915p.dispose();
            this.f3915p = null;
        }
        return this;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Map<Application, Array<Mesh>> map = f3910s;
        if (map.get(Gdx.app) != null) {
            map.get(Gdx.app).removeValue(this, true);
        }
        this.f3911a.dispose();
        InstanceData instanceData = this.f3915p;
        if (instanceData != null) {
            instanceData.dispose();
        }
        this.f3912b.dispose();
    }

    public Mesh enableInstancedRendering(boolean z, int i, VertexAttribute... vertexAttributeArr) {
        if (!this.f3916q) {
            this.f3916q = true;
            this.f3915p = new InstanceBufferObject(z, i, vertexAttributeArr);
            return this;
        }
        throw new GdxRuntimeException("Trying to enable InstancedRendering on same Mesh instance twice. Use disableInstancedRendering to clean up old InstanceData first");
    }

    public BoundingBox extendBoundingBox(BoundingBox boundingBox, int i, int i2, Matrix4 matrix4) {
        int i3;
        int numIndices = getNumIndices();
        int numVertices = getNumVertices();
        if (numIndices != 0) {
            numVertices = numIndices;
        }
        if (i >= 0 && i2 >= 1 && (i3 = i + i2) <= numVertices) {
            FloatBuffer buffer = this.f3911a.getBuffer();
            ShortBuffer buffer2 = this.f3912b.getBuffer();
            VertexAttribute vertexAttribute = getVertexAttribute(1);
            int i4 = vertexAttribute.offset / 4;
            int i5 = this.f3911a.getAttributes().vertexSize / 4;
            int i6 = vertexAttribute.numComponents;
            if (i6 != 1) {
                if (i6 != 2) {
                    if (i6 == 3) {
                        if (numIndices > 0) {
                            while (i < i3) {
                                int i7 = ((buffer2.get(i) & 65535) * i5) + i4;
                                this.f3917r.set(buffer.get(i7), buffer.get(i7 + 1), buffer.get(i7 + 2));
                                if (matrix4 != null) {
                                    this.f3917r.mul(matrix4);
                                }
                                boundingBox.ext(this.f3917r);
                                i++;
                            }
                        } else {
                            while (i < i3) {
                                int i8 = (i * i5) + i4;
                                this.f3917r.set(buffer.get(i8), buffer.get(i8 + 1), buffer.get(i8 + 2));
                                if (matrix4 != null) {
                                    this.f3917r.mul(matrix4);
                                }
                                boundingBox.ext(this.f3917r);
                                i++;
                            }
                        }
                    }
                } else if (numIndices > 0) {
                    while (i < i3) {
                        int i9 = ((buffer2.get(i) & 65535) * i5) + i4;
                        this.f3917r.set(buffer.get(i9), buffer.get(i9 + 1), 0.0f);
                        if (matrix4 != null) {
                            this.f3917r.mul(matrix4);
                        }
                        boundingBox.ext(this.f3917r);
                        i++;
                    }
                } else {
                    while (i < i3) {
                        int i10 = (i * i5) + i4;
                        this.f3917r.set(buffer.get(i10), buffer.get(i10 + 1), 0.0f);
                        if (matrix4 != null) {
                            this.f3917r.mul(matrix4);
                        }
                        boundingBox.ext(this.f3917r);
                        i++;
                    }
                }
            } else if (numIndices > 0) {
                while (i < i3) {
                    this.f3917r.set(buffer.get(((buffer2.get(i) & 65535) * i5) + i4), 0.0f, 0.0f);
                    if (matrix4 != null) {
                        this.f3917r.mul(matrix4);
                    }
                    boundingBox.ext(this.f3917r);
                    i++;
                }
            } else {
                while (i < i3) {
                    this.f3917r.set(buffer.get((i * i5) + i4), 0.0f, 0.0f);
                    if (matrix4 != null) {
                        this.f3917r.mul(matrix4);
                    }
                    boundingBox.ext(this.f3917r);
                    i++;
                }
            }
            return boundingBox;
        }
        throw new GdxRuntimeException("Invalid part specified ( offset=" + i + ", count=" + i2 + ", max=" + numVertices + " )");
    }

    public void getIndices(short[] sArr, int i) {
        getIndices(0, sArr, i);
    }

    public VertexAttribute getVertexAttribute(int i) {
        VertexAttributes attributes = this.f3911a.getAttributes();
        int size = attributes.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (attributes.get(i2).usage == i) {
                return attributes.get(i2);
            }
        }
        return null;
    }

    public float[] getVertices(int i, float[] fArr) {
        return getVertices(i, -1, fArr);
    }

    public void render(ShaderProgram shaderProgram, int i, int i2, int i3) {
        render(shaderProgram, i, i2, i3, this.f3913d);
    }

    public Mesh setIndices(short[] sArr, int i, int i2) {
        this.f3912b.setIndices(sArr, i, i2);
        return this;
    }

    public Mesh setVertices(float[] fArr, int i, int i2) {
        this.f3911a.setVertices(fArr, i, i2);
        return this;
    }

    public void transform(Matrix4 matrix4, int i, int i2) {
        VertexAttribute vertexAttribute = getVertexAttribute(1);
        int i3 = vertexAttribute.offset / 4;
        int vertexSize = getVertexSize() / 4;
        int i4 = vertexAttribute.numComponents;
        getNumVertices();
        int i5 = i2 * vertexSize;
        float[] fArr = new float[i5];
        int i6 = i * vertexSize;
        getVertices(i6, i5, fArr);
        transform(matrix4, fArr, vertexSize, i3, i4, 0, i2);
        updateVertices(i6, fArr);
    }

    public void unbind(ShaderProgram shaderProgram, int[] iArr) {
        this.f3911a.unbind(shaderProgram, iArr);
        InstanceData instanceData = this.f3915p;
        if (instanceData != null && instanceData.getNumInstances() > 0) {
            this.f3915p.unbind(shaderProgram, iArr);
        }
        if (this.f3912b.getNumIndices() > 0) {
            this.f3912b.unbind();
        }
    }

    public Mesh updateInstanceData(int i, float[] fArr, int i2, int i3) {
        this.f3915p.updateInstanceData(i, fArr, i2, i3);
        return this;
    }

    public Mesh updateVertices(int i, float[] fArr, int i2, int i3) {
        this.f3911a.updateVertices(i, fArr, i2, i3);
        return this;
    }

    public void calculateBoundingBox(BoundingBox boundingBox) {
        int numVertices = getNumVertices();
        if (numVertices != 0) {
            FloatBuffer buffer = this.f3911a.getBuffer();
            boundingBox.inf();
            VertexAttribute vertexAttribute = getVertexAttribute(1);
            int i = vertexAttribute.offset / 4;
            int i2 = this.f3911a.getAttributes().vertexSize / 4;
            int i3 = vertexAttribute.numComponents;
            int i4 = 0;
            if (i3 == 1) {
                while (i4 < numVertices) {
                    boundingBox.ext(buffer.get(i), 0.0f, 0.0f);
                    i += i2;
                    i4++;
                }
                return;
            } else if (i3 == 2) {
                while (i4 < numVertices) {
                    boundingBox.ext(buffer.get(i), buffer.get(i + 1), 0.0f);
                    i += i2;
                    i4++;
                }
                return;
            } else if (i3 != 3) {
                return;
            } else {
                while (i4 < numVertices) {
                    boundingBox.ext(buffer.get(i), buffer.get(i + 1), buffer.get(i + 2));
                    i += i2;
                    i4++;
                }
                return;
            }
        }
        throw new GdxRuntimeException("No vertices defined");
    }

    public float calculateRadius(float f, float f2, float f3, int i, int i2) {
        return calculateRadius(f, f2, f3, i, i2, null);
    }

    public void getIndices(int i, short[] sArr, int i2) {
        getIndices(i, -1, sArr, i2);
    }

    public float[] getVertices(int i, int i2, float[] fArr) {
        return getVertices(i, i2, fArr, 0);
    }

    public void render(ShaderProgram shaderProgram, int i, int i2, int i3, boolean z) {
        if (i3 == 0) {
            return;
        }
        if (z) {
            bind(shaderProgram);
        }
        if (this.f3914k) {
            if (this.f3912b.getNumIndices() > 0) {
                ShortBuffer buffer = this.f3912b.getBuffer();
                int position = buffer.position();
                buffer.limit();
                buffer.position(i2);
                Gdx.gl20.glDrawElements(i, i3, GL20.GL_UNSIGNED_SHORT, buffer);
                buffer.position(position);
            } else {
                Gdx.gl20.glDrawArrays(i, i2, i3);
            }
        } else {
            int numInstances = this.f3916q ? this.f3915p.getNumInstances() : 0;
            if (this.f3912b.getNumIndices() > 0) {
                if (i3 + i2 <= this.f3912b.getNumMaxIndices()) {
                    if (this.f3916q && numInstances > 0) {
                        Gdx.gl30.glDrawElementsInstanced(i, i3, GL20.GL_UNSIGNED_SHORT, i2 * 2, numInstances);
                    } else {
                        Gdx.gl20.glDrawElements(i, i3, GL20.GL_UNSIGNED_SHORT, i2 * 2);
                    }
                } else {
                    throw new GdxRuntimeException("Mesh attempting to access memory outside of the index buffer (count: " + i3 + ", offset: " + i2 + ", max: " + this.f3912b.getNumMaxIndices() + ")");
                }
            } else if (this.f3916q && numInstances > 0) {
                Gdx.gl30.glDrawArraysInstanced(i, i2, i3, numInstances);
            } else {
                Gdx.gl20.glDrawArrays(i, i2, i3);
            }
        }
        if (z) {
            unbind(shaderProgram);
        }
    }

    public Mesh updateInstanceData(int i, FloatBuffer floatBuffer) {
        return updateInstanceData(i, floatBuffer, 0, floatBuffer.limit());
    }

    public float calculateRadius(Vector3 vector3, int i, int i2) {
        return calculateRadius(vector3.f5533x, vector3.f5534y, vector3.f5535z, i, i2, null);
    }

    public void getIndices(int i, int i2, short[] sArr, int i3) {
        int numIndices = getNumIndices();
        if (i2 < 0) {
            i2 = numIndices - i;
        }
        if (i >= 0 && i < numIndices && i + i2 <= numIndices) {
            if (sArr.length - i3 >= i2) {
                int position = getIndicesBuffer().position();
                getIndicesBuffer().position(i);
                getIndicesBuffer().get(sArr, i3, i2);
                getIndicesBuffer().position(position);
                return;
            }
            throw new IllegalArgumentException("not enough room in indices array, has " + sArr.length + " shorts, needs " + i2);
        }
        throw new IllegalArgumentException("Invalid range specified, offset: " + i + ", count: " + i2 + ", max: " + numIndices);
    }

    public float[] getVertices(int i, int i2, float[] fArr, int i3) {
        int numVertices = (getNumVertices() * getVertexSize()) / 4;
        if (i2 == -1 && (i2 = numVertices - i) > fArr.length - i3) {
            i2 = fArr.length - i3;
        }
        if (i >= 0 && i2 > 0 && i + i2 <= numVertices && i3 >= 0 && i3 < fArr.length) {
            if (fArr.length - i3 >= i2) {
                int position = getVerticesBuffer().position();
                getVerticesBuffer().position(i);
                getVerticesBuffer().get(fArr, i3, i2);
                getVerticesBuffer().position(position);
                return fArr;
            }
            throw new IllegalArgumentException("not enough room in vertices array, has " + fArr.length + " floats, needs " + i2);
        }
        throw new IndexOutOfBoundsException();
    }

    public Mesh setInstanceData(float[] fArr) {
        InstanceData instanceData = this.f3915p;
        if (instanceData != null) {
            instanceData.setInstanceData(fArr, 0, fArr.length);
            return this;
        }
        throw new GdxRuntimeException("An InstanceBufferObject must be set before setting instance data!");
    }

    public Mesh updateInstanceData(int i, FloatBuffer floatBuffer, int i2, int i3) {
        this.f3915p.updateInstanceData(i, floatBuffer, i2, i3);
        return this;
    }

    public float calculateRadius(float f, float f2, float f3) {
        return calculateRadius(f, f2, f3, 0, getNumIndices(), null);
    }

    public float calculateRadius(Vector3 vector3) {
        return calculateRadius(vector3.f5533x, vector3.f5534y, vector3.f5535z, 0, getNumIndices(), null);
    }

    public Mesh setInstanceData(FloatBuffer floatBuffer, int i) {
        InstanceData instanceData = this.f3915p;
        if (instanceData != null) {
            instanceData.setInstanceData(floatBuffer, i);
            return this;
        }
        throw new GdxRuntimeException("An InstanceBufferObject must be set before setting instance data!");
    }

    public Mesh(boolean z, int i, int i2, VertexAttributes vertexAttributes) {
        this.f3913d = true;
        this.f3916q = false;
        this.f3917r = new Vector3();
        this.f3911a = m24257b(z, i, vertexAttributes);
        this.f3912b = new IndexBufferObject(z, i2);
        this.f3914k = false;
        m24258a(Gdx.app, this);
    }

    public Mesh setInstanceData(FloatBuffer floatBuffer) {
        InstanceData instanceData = this.f3915p;
        if (instanceData != null) {
            instanceData.setInstanceData(floatBuffer, floatBuffer.limit());
            return this;
        }
        throw new GdxRuntimeException("An InstanceBufferObject must be set before setting instance data!");
    }

    public static void transform(Matrix4 matrix4, float[] fArr, int i, int i2, int i3, int i4, int i5) {
        if (i2 >= 0 && i3 >= 1 && i2 + i3 <= i) {
            if (i4 >= 0 && i5 >= 1 && (i4 + i5) * i <= fArr.length) {
                Vector3 vector3 = new Vector3();
                int i6 = i2 + (i4 * i);
                int i7 = 0;
                if (i3 == 1) {
                    while (i7 < i5) {
                        vector3.set(fArr[i6], 0.0f, 0.0f).mul(matrix4);
                        fArr[i6] = vector3.f5533x;
                        i6 += i;
                        i7++;
                    }
                    return;
                } else if (i3 == 2) {
                    while (i7 < i5) {
                        int i8 = i6 + 1;
                        vector3.set(fArr[i6], fArr[i8], 0.0f).mul(matrix4);
                        fArr[i6] = vector3.f5533x;
                        fArr[i8] = vector3.f5534y;
                        i6 += i;
                        i7++;
                    }
                    return;
                } else if (i3 != 3) {
                    return;
                } else {
                    while (i7 < i5) {
                        int i9 = i6 + 1;
                        int i10 = i6 + 2;
                        vector3.set(fArr[i6], fArr[i9], fArr[i10]).mul(matrix4);
                        fArr[i6] = vector3.f5533x;
                        fArr[i9] = vector3.f5534y;
                        fArr[i10] = vector3.f5535z;
                        i6 += i;
                        i7++;
                    }
                    return;
                }
            }
            throw new IndexOutOfBoundsException("start = " + i4 + ", count = " + i5 + ", vertexSize = " + i + ", length = " + fArr.length);
        }
        throw new IndexOutOfBoundsException();
    }

    public BoundingBox calculateBoundingBox(BoundingBox boundingBox, int i, int i2) {
        return extendBoundingBox(boundingBox.inf(), i, i2);
    }

    public BoundingBox calculateBoundingBox(BoundingBox boundingBox, int i, int i2, Matrix4 matrix4) {
        return extendBoundingBox(boundingBox.inf(), i, i2, matrix4);
    }

    public Mesh(boolean z, boolean z2, int i, int i2, VertexAttributes vertexAttributes) {
        this.f3913d = true;
        this.f3916q = false;
        this.f3917r = new Vector3();
        this.f3911a = m24257b(z, i, vertexAttributes);
        this.f3912b = new IndexBufferObject(z2, i2);
        this.f3914k = false;
        m24258a(Gdx.app, this);
    }

    public Mesh(VertexDataType vertexDataType, boolean z, int i, int i2, VertexAttribute... vertexAttributeArr) {
        this(vertexDataType, z, i, i2, new VertexAttributes(vertexAttributeArr));
    }

    public Mesh(VertexDataType vertexDataType, boolean z, int i, int i2, VertexAttributes vertexAttributes) {
        this.f3913d = true;
        this.f3916q = false;
        this.f3917r = new Vector3();
        int i3 = C11921.f3918a[vertexDataType.ordinal()];
        if (i3 == 1) {
            this.f3911a = new VertexBufferObject(z, i, vertexAttributes);
            this.f3912b = new IndexBufferObject(z, i2);
            this.f3914k = false;
        } else if (i3 == 2) {
            this.f3911a = new VertexBufferObjectSubData(z, i, vertexAttributes);
            this.f3912b = new IndexBufferObjectSubData(z, i2);
            this.f3914k = false;
        } else if (i3 != 3) {
            this.f3911a = new VertexArray(i, vertexAttributes);
            this.f3912b = new IndexArray(i2);
            this.f3914k = true;
        } else {
            this.f3911a = new VertexBufferObjectWithVAO(z, i, vertexAttributes);
            this.f3912b = new IndexBufferObjectSubData(z, i2);
            this.f3914k = false;
        }
        m24258a(Gdx.app, this);
    }

    public Mesh copy(boolean z) {
        return copy(z, false, null);
    }
}
