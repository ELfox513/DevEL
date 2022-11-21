package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.g3d.model.MeshPart;
import com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder;
import com.badlogic.gdx.graphics.g3d.utils.shapebuilders.ArrowShapeBuilder;
import com.badlogic.gdx.graphics.g3d.utils.shapebuilders.BoxShapeBuilder;
import com.badlogic.gdx.graphics.g3d.utils.shapebuilders.CapsuleShapeBuilder;
import com.badlogic.gdx.graphics.g3d.utils.shapebuilders.ConeShapeBuilder;
import com.badlogic.gdx.graphics.g3d.utils.shapebuilders.CylinderShapeBuilder;
import com.badlogic.gdx.graphics.g3d.utils.shapebuilders.EllipseShapeBuilder;
import com.badlogic.gdx.graphics.g3d.utils.shapebuilders.PatchShapeBuilder;
import com.badlogic.gdx.graphics.g3d.utils.shapebuilders.SphereShapeBuilder;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.ShortArray;
/* loaded from: classes.dex */
public class MeshBuilder implements MeshPartBuilder {
    public static final int MAX_INDEX = 65535;
    public static final int MAX_VERTICES = 65536;

    /* renamed from: E */
    public float[] f4857E;

    /* renamed from: f */
    public VertexAttributes f4869f;

    /* renamed from: i */
    public int f4872i;

    /* renamed from: j */
    public int f4873j;

    /* renamed from: k */
    public int f4874k;

    /* renamed from: l */
    public int f4875l;

    /* renamed from: m */
    public int f4876m;

    /* renamed from: n */
    public int f4877n;

    /* renamed from: o */
    public int f4878o;

    /* renamed from: p */
    public int f4879p;

    /* renamed from: q */
    public int f4880q;

    /* renamed from: r */
    public int f4881r;

    /* renamed from: s */
    public int f4882s;

    /* renamed from: t */
    public int f4883t;

    /* renamed from: u */
    public MeshPart f4884u;

    /* renamed from: y */
    public int f4888y;

    /* renamed from: L */
    public static final ShortArray f4849L = new ShortArray();

    /* renamed from: M */
    public static final FloatArray f4850M = new FloatArray();

    /* renamed from: N */
    public static final Vector3 f4851N = new Vector3();

    /* renamed from: O */
    public static IntIntMap f4852O = null;

    /* renamed from: a */
    public final MeshPartBuilder.VertexInfo f4864a = new MeshPartBuilder.VertexInfo();

    /* renamed from: b */
    public final MeshPartBuilder.VertexInfo f4865b = new MeshPartBuilder.VertexInfo();

    /* renamed from: c */
    public final MeshPartBuilder.VertexInfo f4866c = new MeshPartBuilder.VertexInfo();

    /* renamed from: d */
    public final MeshPartBuilder.VertexInfo f4867d = new MeshPartBuilder.VertexInfo();

    /* renamed from: e */
    public final Color f4868e = new Color();

    /* renamed from: g */
    public FloatArray f4870g = new FloatArray();

    /* renamed from: h */
    public ShortArray f4871h = new ShortArray();

    /* renamed from: v */
    public Array<MeshPart> f4885v = new Array<>();

    /* renamed from: w */
    public final Color f4886w = new Color(Color.WHITE);

    /* renamed from: x */
    public boolean f4887x = false;

    /* renamed from: z */
    public float f4889z = 0.0f;

    /* renamed from: A */
    public float f4853A = 1.0f;

    /* renamed from: B */
    public float f4854B = 0.0f;

    /* renamed from: C */
    public float f4855C = 1.0f;

    /* renamed from: D */
    public boolean f4856D = false;

    /* renamed from: F */
    public boolean f4858F = false;

    /* renamed from: G */
    public final Matrix4 f4859G = new Matrix4();

    /* renamed from: H */
    public final Matrix3 f4860H = new Matrix3();

    /* renamed from: I */
    public final BoundingBox f4861I = new BoundingBox();

    /* renamed from: J */
    public int f4862J = -1;

    /* renamed from: K */
    public final Vector3 f4863K = new Vector3();

    /* renamed from: c */
    public static final void m24054c(float[] fArr, int i, int i2, Matrix3 matrix3) {
        if (i2 > 2) {
            Vector3 vector3 = f4851N;
            int i3 = i + 1;
            int i4 = i + 2;
            vector3.set(fArr[i], fArr[i3], fArr[i4]).mul(matrix3).nor();
            fArr[i] = vector3.f5533x;
            fArr[i3] = vector3.f5534y;
            fArr[i4] = vector3.f5535z;
        } else if (i2 > 1) {
            Vector3 vector32 = f4851N;
            int i5 = i + 1;
            vector32.set(fArr[i], fArr[i5], 0.0f).mul(matrix3).nor();
            fArr[i] = vector32.f5533x;
            fArr[i5] = vector32.f5534y;
        } else {
            fArr[i] = f4851N.set(fArr[i], 0.0f, 0.0f).mul(matrix3).nor().f5533x;
        }
    }

    /* renamed from: d */
    public static final void m24053d(float[] fArr, int i, int i2, Matrix4 matrix4) {
        if (i2 > 2) {
            Vector3 vector3 = f4851N;
            int i3 = i + 1;
            int i4 = i + 2;
            vector3.set(fArr[i], fArr[i3], fArr[i4]).mul(matrix4);
            fArr[i] = vector3.f5533x;
            fArr[i3] = vector3.f5534y;
            fArr[i4] = vector3.f5535z;
        } else if (i2 > 1) {
            Vector3 vector32 = f4851N;
            int i5 = i + 1;
            vector32.set(fArr[i], fArr[i5], 0.0f).mul(matrix4);
            fArr[i] = vector32.f5533x;
            fArr[i5] = vector32.f5534y;
        } else {
            fArr[i] = f4851N.set(fArr[i], 0.0f, 0.0f).mul(matrix4).f5533x;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void addMesh(Mesh mesh) {
        addMesh(mesh, 0, mesh.getNumIndices());
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void arrow(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i) {
        ArrowShapeBuilder.build(this, f, f2, f3, f4, f5, f6, f7, f8, i);
    }

    public void begin(long j) {
        begin(createAttributes(j), -1);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void box(MeshPartBuilder.VertexInfo vertexInfo, MeshPartBuilder.VertexInfo vertexInfo2, MeshPartBuilder.VertexInfo vertexInfo3, MeshPartBuilder.VertexInfo vertexInfo4, MeshPartBuilder.VertexInfo vertexInfo5, MeshPartBuilder.VertexInfo vertexInfo6, MeshPartBuilder.VertexInfo vertexInfo7, MeshPartBuilder.VertexInfo vertexInfo8) {
        BoxShapeBuilder.build(this, vertexInfo, vertexInfo2, vertexInfo3, vertexInfo4, vertexInfo5, vertexInfo6, vertexInfo7, vertexInfo8);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void capsule(float f, float f2, int i) {
        CapsuleShapeBuilder.build(this, f, f2, i);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void circle(float f, int i, float f2, float f3, float f4, float f5, float f6, float f7) {
        EllipseShapeBuilder.build(this, f, i, f2, f3, f4, f5, f6, f7);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void cone(float f, float f2, float f3, int i) {
        cone(f, f2, f3, i, 0.0f, 360.0f);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void cylinder(float f, float f2, float f3, int i) {
        CylinderShapeBuilder.build(this, f, f2, f3, i);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float f8) {
        EllipseShapeBuilder.build(this, f, f2, i, f3, f4, f5, f6, f7, f8);
    }

    public Mesh end(Mesh mesh) {
        m24055b();
        VertexAttributes vertexAttributes = this.f4869f;
        if (vertexAttributes != null) {
            if (vertexAttributes.equals(mesh.getVertexAttributes())) {
                if (mesh.getMaxVertices() * this.f4872i >= this.f4870g.size) {
                    if (mesh.getMaxIndices() >= this.f4871h.size) {
                        FloatArray floatArray = this.f4870g;
                        mesh.setVertices(floatArray.items, 0, floatArray.size);
                        ShortArray shortArray = this.f4871h;
                        mesh.setIndices(shortArray.items, 0, shortArray.size);
                        Array.ArrayIterator<MeshPart> it = this.f4885v.iterator();
                        while (it.hasNext()) {
                            it.next().mesh = mesh;
                        }
                        this.f4885v.clear();
                        this.f4869f = null;
                        this.f4870g.clear();
                        this.f4871h.clear();
                        return mesh;
                    }
                    throw new GdxRuntimeException("Mesh can't hold enough indices: " + mesh.getMaxIndices() + " < " + this.f4871h.size);
                }
                throw new GdxRuntimeException("Mesh can't hold enough vertices: " + mesh.getMaxVertices() + " * " + this.f4872i + " < " + this.f4870g.size);
            }
            throw new GdxRuntimeException("Mesh attributes don't match");
        }
        throw new GdxRuntimeException("Call begin() first");
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void ensureIndices(int i) {
        this.f4871h.ensureCapacity(i);
    }

    @Deprecated
    public void ensureRectangles(int i, int i2) {
        ensureVertices(i);
        ensureRectangleIndices(i2);
    }

    @Deprecated
    public void ensureTriangles(int i, int i2) {
        ensureVertices(i);
        ensureTriangleIndices(i2);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void ensureVertices(int i) {
        this.f4870g.ensureCapacity(this.f4872i * i);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public VertexAttributes getAttributes() {
        return this.f4869f;
    }

    public int getFloatsPerVertex() {
        return this.f4872i;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public MeshPart getMeshPart() {
        return this.f4884u;
    }

    public int getNumIndices() {
        return this.f4871h.size;
    }

    public int getNumVertices() {
        return this.f4870g.size / this.f4872i;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public int getPrimitiveType() {
        return this.f4888y;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public Matrix4 getVertexTransform(Matrix4 matrix4) {
        return matrix4.set(this.f4859G);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void index(short s) {
        this.f4871h.add(s);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public boolean isVertexTransformationEnabled() {
        return this.f4858F;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public short lastIndex() {
        return (short) this.f4862J;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void line(short s, short s2) {
        if (this.f4888y == 1) {
            index(s, s2);
            return;
        }
        throw new GdxRuntimeException("Incorrect primitive type");
    }

    public MeshPart part(String str, int i) {
        return part(str, i, new MeshPart());
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void patch(MeshPartBuilder.VertexInfo vertexInfo, MeshPartBuilder.VertexInfo vertexInfo2, MeshPartBuilder.VertexInfo vertexInfo3, MeshPartBuilder.VertexInfo vertexInfo4, int i, int i2) {
        PatchShapeBuilder.build(this, vertexInfo, vertexInfo2, vertexInfo3, vertexInfo4, i, i2);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void rect(short s, short s2, short s3, short s4) {
        int i = this.f4888y;
        if (i == 4) {
            index(s, s2, s3, s3, s4, s);
        } else if (i == 1) {
            index(s, s2, s2, s3, s3, s4, s4, s);
        } else if (i == 0) {
            index(s, s2, s3, s4);
        } else {
            throw new GdxRuntimeException("Incorrect primitive type");
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void setColor(float f, float f2, float f3, float f4) {
        this.f4886w.set(f, f2, f3, f4);
        this.f4887x = !this.f4886w.equals(Color.WHITE);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void setUVRange(float f, float f2, float f3, float f4) {
        this.f4889z = f;
        this.f4854B = f2;
        this.f4853A = f3 - f;
        this.f4855C = f4 - f2;
        this.f4856D = (MathUtils.isZero(f) && MathUtils.isZero(f2) && MathUtils.isEqual(f3, 1.0f) && MathUtils.isEqual(f4, 1.0f)) ? false : true;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void setVertexTransformationEnabled(boolean z) {
        this.f4858F = z;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void sphere(float f, float f2, float f3, int i, int i2) {
        SphereShapeBuilder.build(this, f, f2, f3, i, i2);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void triangle(short s, short s2, short s3) {
        int i = this.f4888y;
        if (i == 4 || i == 0) {
            index(s, s2, s3);
        } else if (i == 1) {
            index(s, s2, s2, s3, s3, s);
        } else {
            throw new GdxRuntimeException("Incorrect primitive type");
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public short vertex(Vector3 vector3, Vector3 vector32, Color color, Vector2 vector2) {
        int i;
        if (this.f4873j <= 65535) {
            float[] fArr = this.f4857E;
            int i2 = this.f4875l;
            fArr[i2] = vector3.f5533x;
            int i3 = this.f4876m;
            if (i3 > 1) {
                fArr[i2 + 1] = vector3.f5534y;
            }
            if (i3 > 2) {
                fArr[i2 + 2] = vector3.f5535z;
            }
            if (this.f4877n >= 0) {
                if (vector32 == null) {
                    vector32 = this.f4863K.set(vector3).nor();
                }
                float[] fArr2 = this.f4857E;
                int i4 = this.f4877n;
                fArr2[i4] = vector32.f5533x;
                fArr2[i4 + 1] = vector32.f5534y;
                fArr2[i4 + 2] = vector32.f5535z;
            }
            int i5 = this.f4880q;
            if (i5 >= 0) {
                if (color == null) {
                    color = Color.WHITE;
                }
                float[] fArr3 = this.f4857E;
                fArr3[i5] = color.f3892r;
                fArr3[i5 + 1] = color.f3891g;
                fArr3[i5 + 2] = color.f3890b;
                if (this.f4881r > 3) {
                    fArr3[i5 + 3] = color.f3889a;
                }
            } else {
                int i6 = this.f4882s;
                if (i6 > 0) {
                    if (color == null) {
                        color = Color.WHITE;
                    }
                    this.f4857E[i6] = color.toFloatBits();
                }
            }
            if (vector2 != null && (i = this.f4883t) >= 0) {
                float[] fArr4 = this.f4857E;
                fArr4[i] = vector2.f5527x;
                fArr4[i + 1] = vector2.f5528y;
            }
            m24056a(this.f4857E, 0);
            return (short) this.f4862J;
        }
        throw new GdxRuntimeException("Too many vertices used");
    }

    public static VertexAttributes createAttributes(long j) {
        Array array = new Array();
        if ((j & 1) == 1) {
            array.add(new VertexAttribute(1, 3, ShaderProgram.POSITION_ATTRIBUTE));
        }
        if ((j & 2) == 2) {
            array.add(new VertexAttribute(2, 4, ShaderProgram.COLOR_ATTRIBUTE));
        }
        if ((j & 4) == 4) {
            array.add(new VertexAttribute(4, 4, ShaderProgram.COLOR_ATTRIBUTE));
        }
        if ((j & 8) == 8) {
            array.add(new VertexAttribute(8, 3, ShaderProgram.NORMAL_ATTRIBUTE));
        }
        if ((j & 16) == 16) {
            array.add(new VertexAttribute(16, 2, "a_texCoord0"));
        }
        int i = array.size;
        VertexAttribute[] vertexAttributeArr = new VertexAttribute[i];
        for (int i2 = 0; i2 < i; i2++) {
            vertexAttributeArr[i2] = (VertexAttribute) array.get(i2);
        }
        return new VertexAttributes(vertexAttributeArr);
    }

    /* renamed from: a */
    public final void m24056a(float[] fArr, int i) {
        float f;
        int i2;
        FloatArray floatArray = this.f4870g;
        int i3 = floatArray.size;
        floatArray.addAll(fArr, i, this.f4872i);
        int i4 = this.f4873j;
        this.f4873j = i4 + 1;
        this.f4862J = i4;
        if (this.f4858F) {
            m24053d(this.f4870g.items, this.f4875l + i3, this.f4876m, this.f4859G);
            int i5 = this.f4877n;
            if (i5 >= 0) {
                m24054c(this.f4870g.items, i5 + i3, 3, this.f4860H);
            }
            int i6 = this.f4878o;
            if (i6 >= 0) {
                m24054c(this.f4870g.items, i6 + i3, 3, this.f4860H);
            }
            int i7 = this.f4879p;
            if (i7 >= 0) {
                m24054c(this.f4870g.items, i7 + i3, 3, this.f4860H);
            }
        }
        float[] fArr2 = this.f4870g.items;
        int i8 = this.f4875l;
        float f2 = fArr2[i3 + i8];
        int i9 = this.f4876m;
        float f3 = 0.0f;
        if (i9 > 1) {
            f = fArr2[i3 + i8 + 1];
        } else {
            f = 0.0f;
        }
        if (i9 > 2) {
            f3 = fArr2[i8 + i3 + 2];
        }
        this.f4861I.ext(f2, f, f3);
        if (this.f4887x) {
            int i10 = this.f4880q;
            if (i10 >= 0) {
                float[] fArr3 = this.f4870g.items;
                int i11 = i3 + i10;
                float f4 = fArr3[i11];
                Color color = this.f4886w;
                fArr3[i11] = f4 * color.f3892r;
                int i12 = i3 + i10 + 1;
                fArr3[i12] = fArr3[i12] * color.f3891g;
                int i13 = i3 + i10 + 2;
                fArr3[i13] = fArr3[i13] * color.f3890b;
                if (this.f4881r > 3) {
                    int i14 = i10 + i3 + 3;
                    fArr3[i14] = fArr3[i14] * color.f3889a;
                }
            } else {
                int i15 = this.f4882s;
                if (i15 >= 0) {
                    Color.abgr8888ToColor(this.f4868e, this.f4870g.items[i15 + i3]);
                    this.f4870g.items[this.f4882s + i3] = this.f4868e.mul(this.f4886w).toFloatBits();
                }
            }
        }
        if (this.f4856D && (i2 = this.f4883t) >= 0) {
            float[] fArr4 = this.f4870g.items;
            fArr4[i3 + i2] = this.f4889z + (this.f4853A * fArr4[i3 + i2]);
            fArr4[i3 + i2 + 1] = this.f4854B + (this.f4855C * fArr4[i3 + i2 + 1]);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void addMesh(MeshPart meshPart) {
        if (meshPart.primitiveType == this.f4888y) {
            addMesh(meshPart.mesh, meshPart.offset, meshPart.size);
            return;
        }
        throw new GdxRuntimeException("Primitive type doesn't match");
    }

    /* renamed from: b */
    public final void m24055b() {
        MeshPart meshPart = this.f4884u;
        if (meshPart != null) {
            this.f4861I.getCenter(meshPart.center);
            this.f4861I.getDimensions(this.f4884u.halfExtents).scl(0.5f);
            MeshPart meshPart2 = this.f4884u;
            meshPart2.radius = meshPart2.halfExtents.len();
            this.f4861I.inf();
            MeshPart meshPart3 = this.f4884u;
            int i = this.f4874k;
            meshPart3.offset = i;
            int i2 = this.f4871h.size;
            meshPart3.size = i2 - i;
            this.f4874k = i2;
            this.f4884u = null;
        }
    }

    public void begin(VertexAttributes vertexAttributes) {
        begin(vertexAttributes, -1);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void box(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, Vector3 vector35, Vector3 vector36, Vector3 vector37, Vector3 vector38) {
        BoxShapeBuilder.build(this, vector3, vector32, vector33, vector34, vector35, vector36, vector37, vector38);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void circle(float f, int i, Vector3 vector3, Vector3 vector32) {
        EllipseShapeBuilder.build(this, f, i, vector3, vector32);
    }

    public void clear() {
        this.f4870g.clear();
        this.f4871h.clear();
        this.f4885v.clear();
        this.f4873j = 0;
        this.f4862J = -1;
        this.f4874k = 0;
        this.f4884u = null;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void cone(float f, float f2, float f3, int i, float f4, float f5) {
        ConeShapeBuilder.build(this, f, f2, f3, i, f4, f5);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void cylinder(float f, float f2, float f3, int i, float f4, float f5) {
        CylinderShapeBuilder.build(this, f, f2, f3, i, f4, f5);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, int i, Vector3 vector3, Vector3 vector32) {
        EllipseShapeBuilder.build(this, f, f2, i, vector3, vector32);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void ensureRectangleIndices(int i) {
        int i2 = this.f4888y;
        if (i2 == 0) {
            ensureIndices(i * 4);
        } else if (i2 == 1) {
            ensureIndices(i * 8);
        } else {
            ensureIndices(i * 6);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void ensureTriangleIndices(int i) {
        int i2 = this.f4888y;
        if (i2 == 1) {
            ensureIndices(i * 6);
        } else if (i2 != 4 && i2 != 0) {
            throw new GdxRuntimeException("Incorrect primtive type");
        } else {
            ensureIndices(i * 3);
        }
    }

    public void getIndices(short[] sArr, int i) {
        if (this.f4869f != null) {
            if (i >= 0) {
                int length = sArr.length;
                ShortArray shortArray = this.f4871h;
                int i2 = shortArray.size;
                if (i <= length - i2) {
                    System.arraycopy(shortArray.items, 0, sArr, i, i2);
                    return;
                }
            }
            throw new GdxRuntimeException("Array too small or offset out of range");
        }
        throw new GdxRuntimeException("Must be called in between #begin and #end");
    }

    public void getVertices(float[] fArr, int i) {
        if (this.f4869f != null) {
            if (i >= 0) {
                int length = fArr.length;
                FloatArray floatArray = this.f4870g;
                int i2 = floatArray.size;
                if (i <= length - i2) {
                    System.arraycopy(floatArray.items, 0, fArr, i, i2);
                    return;
                }
            }
            throw new GdxRuntimeException("Array too small or offset out of range");
        }
        throw new GdxRuntimeException("Must be called in between #begin and #end");
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void index(short s, short s2) {
        ensureIndices(2);
        this.f4871h.add(s);
        this.f4871h.add(s2);
    }

    public MeshPart part(String str, int i, MeshPart meshPart) {
        if (this.f4869f != null) {
            m24055b();
            this.f4884u = meshPart;
            meshPart.f4487id = str;
            meshPart.primitiveType = i;
            this.f4888y = i;
            this.f4885v.add(meshPart);
            setColor(null);
            setVertexTransform(null);
            setUVRange(null);
            return this.f4884u;
        }
        throw new RuntimeException("Call begin() first");
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void patch(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, Vector3 vector35, int i, int i2) {
        PatchShapeBuilder.build(this, vector3, vector32, vector33, vector34, vector35, i, i2);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void setVertexTransform(Matrix4 matrix4) {
        boolean z;
        if (matrix4 != null) {
            z = true;
        } else {
            z = false;
        }
        this.f4858F = z;
        if (z) {
            this.f4859G.set(matrix4);
            this.f4860H.set(matrix4).inv().transpose();
            return;
        }
        this.f4859G.idt();
        this.f4860H.idt();
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void sphere(Matrix4 matrix4, float f, float f2, float f3, int i, int i2) {
        SphereShapeBuilder.build(this, matrix4, f, f2, f3, i, i2);
    }

    public void begin(long j, int i) {
        begin(createAttributes(j), i);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void box(Matrix4 matrix4) {
        BoxShapeBuilder.build(this, matrix4);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void circle(float f, int i, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        EllipseShapeBuilder.build(this, f, i, vector3, vector32, vector33, vector34);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void cylinder(float f, float f2, float f3, int i, float f4, float f5, boolean z) {
        CylinderShapeBuilder.build(this, f, f2, f3, i, f4, f5, z);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, int i, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        EllipseShapeBuilder.build(this, f, f2, i, vector3, vector32, vector33, vector34);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void ensureCapacity(int i, int i2) {
        ensureVertices(i);
        ensureIndices(i2);
    }

    @Deprecated
    public void ensureRectangles(int i) {
        ensureVertices(i * 4);
        ensureRectangleIndices(i);
    }

    @Deprecated
    public void ensureTriangles(int i) {
        ensureVertices(i * 3);
        ensureTriangleIndices(i);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void patch(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, int i, int i2) {
        PatchShapeBuilder.build(this, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, i, i2);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void setColor(Color color) {
        Color color2 = this.f4886w;
        boolean z = color != null;
        this.f4887x = z;
        if (!z) {
            color = Color.WHITE;
        }
        color2.set(color);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void sphere(float f, float f2, float f3, int i, int i2, float f4, float f5, float f6, float f7) {
        SphereShapeBuilder.build(this, f, f2, f3, i, i2, f4, f5, f6, f7);
    }

    public void begin(VertexAttributes vertexAttributes, int i) {
        if (this.f4869f == null) {
            this.f4869f = vertexAttributes;
            this.f4870g.clear();
            this.f4871h.clear();
            this.f4885v.clear();
            this.f4873j = 0;
            this.f4862J = -1;
            this.f4874k = 0;
            this.f4884u = null;
            int i2 = vertexAttributes.vertexSize / 4;
            this.f4872i = i2;
            float[] fArr = this.f4857E;
            if (fArr == null || fArr.length < i2) {
                this.f4857E = new float[i2];
            }
            VertexAttribute findByUsage = vertexAttributes.findByUsage(1);
            if (findByUsage != null) {
                this.f4875l = findByUsage.offset / 4;
                this.f4876m = findByUsage.numComponents;
                VertexAttribute findByUsage2 = vertexAttributes.findByUsage(8);
                this.f4877n = findByUsage2 == null ? -1 : findByUsage2.offset / 4;
                VertexAttribute findByUsage3 = vertexAttributes.findByUsage(256);
                this.f4878o = findByUsage3 == null ? -1 : findByUsage3.offset / 4;
                VertexAttribute findByUsage4 = vertexAttributes.findByUsage(128);
                this.f4879p = findByUsage4 == null ? -1 : findByUsage4.offset / 4;
                VertexAttribute findByUsage5 = vertexAttributes.findByUsage(2);
                this.f4880q = findByUsage5 == null ? -1 : findByUsage5.offset / 4;
                this.f4881r = findByUsage5 != null ? findByUsage5.numComponents : 0;
                VertexAttribute findByUsage6 = vertexAttributes.findByUsage(4);
                this.f4882s = findByUsage6 == null ? -1 : findByUsage6.offset / 4;
                VertexAttribute findByUsage7 = vertexAttributes.findByUsage(16);
                this.f4883t = findByUsage7 != null ? findByUsage7.offset / 4 : -1;
                setColor(null);
                setVertexTransform(null);
                setUVRange(null);
                this.f4888y = i;
                this.f4861I.inf();
                return;
            }
            throw new GdxRuntimeException("Cannot build mesh without position attribute");
        }
        throw new RuntimeException("Call end() first");
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void box(float f, float f2, float f3) {
        BoxShapeBuilder.build(this, f, f2, f3);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void circle(float f, int i, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13) {
        EllipseShapeBuilder.build(this, f, i, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14) {
        EllipseShapeBuilder.build(this, f, f2, i, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void line(MeshPartBuilder.VertexInfo vertexInfo, MeshPartBuilder.VertexInfo vertexInfo2) {
        ensureVertices(2);
        line(vertex(vertexInfo), vertex(vertexInfo2));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void sphere(Matrix4 matrix4, float f, float f2, float f3, int i, int i2, float f4, float f5, float f6, float f7) {
        SphereShapeBuilder.build(this, matrix4, f, f2, f3, i, i2, f4, f5, f6, f7);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void addMesh(Mesh mesh, int i, int i2) {
        if (!this.f4869f.equals(mesh.getVertexAttributes())) {
            throw new GdxRuntimeException("Vertex attributes do not match");
        }
        if (i2 <= 0) {
            return;
        }
        int numVertices = mesh.getNumVertices() * this.f4872i;
        FloatArray floatArray = f4850M;
        floatArray.clear();
        floatArray.ensureCapacity(numVertices);
        floatArray.size = numVertices;
        mesh.getVertices(floatArray.items);
        ShortArray shortArray = f4849L;
        shortArray.clear();
        shortArray.ensureCapacity(i2);
        shortArray.size = i2;
        mesh.getIndices(i, i2, shortArray.items, 0);
        addMesh(floatArray.items, shortArray.items, 0, i2);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void box(float f, float f2, float f3, float f4, float f5, float f6) {
        BoxShapeBuilder.build(this, f, f2, f3, f4, f5, f6);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void circle(float f, int i, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        EllipseShapeBuilder.build(this, f, i, f2, f3, f4, f5, f6, f7, f8, f9);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        EllipseShapeBuilder.build(this, f, f2, i, f3, f4, f5, f6, f7, f8, f9, f10);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void index(short s, short s2, short s3) {
        ensureIndices(3);
        this.f4871h.add(s);
        this.f4871h.add(s2);
        this.f4871h.add(s3);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void triangle(MeshPartBuilder.VertexInfo vertexInfo, MeshPartBuilder.VertexInfo vertexInfo2, MeshPartBuilder.VertexInfo vertexInfo3) {
        ensureVertices(3);
        triangle(vertex(vertexInfo), vertex(vertexInfo2), vertex(vertexInfo3));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void circle(float f, int i, Vector3 vector3, Vector3 vector32, float f2, float f3) {
        EllipseShapeBuilder.build(this, f, i, vector3, vector32, f2, f3);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, int i, Vector3 vector3, Vector3 vector32, float f3, float f4) {
        EllipseShapeBuilder.build(this, f, f2, i, vector3, vector32, f3, f4);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void line(Vector3 vector3, Vector3 vector32) {
        line(this.f4864a.set(vector3, null, null, null), this.f4865b.set(vector32, null, null, null));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void rect(MeshPartBuilder.VertexInfo vertexInfo, MeshPartBuilder.VertexInfo vertexInfo2, MeshPartBuilder.VertexInfo vertexInfo3, MeshPartBuilder.VertexInfo vertexInfo4) {
        ensureVertices(4);
        rect(vertex(vertexInfo), vertex(vertexInfo2), vertex(vertexInfo3), vertex(vertexInfo4));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void setUVRange(TextureRegion textureRegion) {
        if (textureRegion == null) {
            this.f4856D = false;
            this.f4854B = 0.0f;
            this.f4889z = 0.0f;
            this.f4855C = 1.0f;
            this.f4853A = 1.0f;
            return;
        }
        this.f4856D = true;
        setUVRange(textureRegion.getU(), textureRegion.getV(), textureRegion.getU2(), textureRegion.getV2());
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void circle(float f, int i, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, float f2, float f3) {
        circle(f, i, vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x, vector32.f5534y, vector32.f5535z, vector33.f5533x, vector33.f5534y, vector33.f5535z, vector34.f5533x, vector34.f5534y, vector34.f5535z, f2, f3);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, int i, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, float f3, float f4) {
        EllipseShapeBuilder.build(this, f, f2, i, vector3, vector32, vector33, vector34, f3, f4);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void line(float f, float f2, float f3, float f4, float f5, float f6) {
        line(this.f4864a.set(null, null, null, null).setPos(f, f2, f3), this.f4865b.set(null, null, null, null).setPos(f4, f5, f6));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void triangle(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        triangle(this.f4864a.set(vector3, null, null, null), this.f4865b.set(vector32, null, null, null), this.f4866c.set(vector33, null, null, null));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void circle(float f, int i, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15) {
        EllipseShapeBuilder.build(this, f, i, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, int i, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        EllipseShapeBuilder.build(this, f, f2, i, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void line(Vector3 vector3, Color color, Vector3 vector32, Color color2) {
        line(this.f4864a.set(vector3, null, color, null), this.f4865b.set(vector32, null, color2, null));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void rect(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34, Vector3 vector35) {
        rect(this.f4864a.set(vector3, vector35, null, null).setUV(0.0f, 1.0f), this.f4865b.set(vector32, vector35, null, null).setUV(1.0f, 1.0f), this.f4866c.set(vector33, vector35, null, null).setUV(1.0f, 0.0f), this.f4867d.set(vector34, vector35, null, null).setUV(0.0f, 0.0f));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void triangle(Vector3 vector3, Color color, Vector3 vector32, Color color2, Vector3 vector33, Color color3) {
        triangle(this.f4864a.set(vector3, null, color, null), this.f4865b.set(vector32, null, color2, null), this.f4866c.set(vector33, null, color3, null));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, float f3, float f4, int i, Vector3 vector3, Vector3 vector32) {
        EllipseShapeBuilder.build(this, f, f2, f3, f4, i, vector3, vector32);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void index(short s, short s2, short s3, short s4) {
        ensureIndices(4);
        this.f4871h.add(s);
        this.f4871h.add(s2);
        this.f4871h.add(s3);
        this.f4871h.add(s4);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, float f3, float f4, int i, float f5, float f6, float f7, float f8, float f9, float f10) {
        EllipseShapeBuilder.build(this, f, f2, f3, f4, i, f5, f6, f7, f8, f9, f10);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, float f3, float f4, int i, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12) {
        EllipseShapeBuilder.build(this, f, f2, f3, f4, i, f5, f6, f7, f8, f9, f10, f11, f12);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void rect(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15) {
        rect(this.f4864a.set(null, null, null, null).setPos(f, f2, f3).setNor(f13, f14, f15).setUV(0.0f, 1.0f), this.f4865b.set(null, null, null, null).setPos(f4, f5, f6).setNor(f13, f14, f15).setUV(1.0f, 1.0f), this.f4866c.set(null, null, null, null).setPos(f7, f8, f9).setNor(f13, f14, f15).setUV(1.0f, 0.0f), this.f4867d.set(null, null, null, null).setPos(f10, f11, f12).setNor(f13, f14, f15).setUV(0.0f, 0.0f));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    @Deprecated
    public void ellipse(float f, float f2, float f3, float f4, int i, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        EllipseShapeBuilder.build(this, f, f2, f3, f4, i, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void index(short s, short s2, short s3, short s4, short s5, short s6) {
        ensureIndices(6);
        this.f4871h.add(s);
        this.f4871h.add(s2);
        this.f4871h.add(s3);
        this.f4871h.add(s4);
        this.f4871h.add(s5);
        this.f4871h.add(s6);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void addMesh(float[] fArr, short[] sArr, int i, int i2) {
        IntIntMap intIntMap = f4852O;
        if (intIntMap == null) {
            f4852O = new IntIntMap(i2);
        } else {
            intIntMap.clear();
            f4852O.ensureCapacity(i2);
        }
        ensureIndices(i2);
        int length = fArr.length / this.f4872i;
        if (length >= i2) {
            length = i2;
        }
        ensureVertices(length);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = sArr[i + i3] & 65535;
            int i5 = f4852O.get(i4, -1);
            if (i5 < 0) {
                m24056a(fArr, this.f4872i * i4);
                IntIntMap intIntMap2 = f4852O;
                int i6 = this.f4862J;
                intIntMap2.put(i4, i6);
                i5 = i6;
            }
            index((short) i5);
        }
    }

    public Mesh end() {
        return end(new Mesh(true, Math.min(this.f4870g.size / this.f4872i, 65536), this.f4871h.size, this.f4869f));
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void index(short s, short s2, short s3, short s4, short s5, short s6, short s7, short s8) {
        ensureIndices(8);
        this.f4871h.add(s);
        this.f4871h.add(s2);
        this.f4871h.add(s3);
        this.f4871h.add(s4);
        this.f4871h.add(s5);
        this.f4871h.add(s6);
        this.f4871h.add(s7);
        this.f4871h.add(s8);
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public short vertex(float... fArr) {
        int length = fArr.length - this.f4872i;
        int i = 0;
        while (i <= length) {
            m24056a(fArr, i);
            i += this.f4872i;
        }
        return (short) this.f4862J;
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public void addMesh(float[] fArr, short[] sArr) {
        int i = this.f4862J + 1;
        ensureVertices(fArr.length / this.f4872i);
        int i2 = 0;
        while (i2 < fArr.length) {
            m24056a(fArr, i2);
            i2 += this.f4872i;
        }
        ensureIndices(sArr.length);
        for (short s : sArr) {
            index((short) (s & (MAX_INDEX + i)));
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.utils.MeshPartBuilder
    public short vertex(MeshPartBuilder.VertexInfo vertexInfo) {
        return vertex(vertexInfo.hasPosition ? vertexInfo.position : null, vertexInfo.hasNormal ? vertexInfo.normal : null, vertexInfo.hasColor ? vertexInfo.color : null, vertexInfo.hasUV ? vertexInfo.f4890uv : null);
    }
}
