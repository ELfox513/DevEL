package com.badlogic.gdx.graphics.g3d.particles.batches;

import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Renderable;
import com.badlogic.gdx.graphics.g3d.Shader;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.DepthTestAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.TextureAttribute;
import com.badlogic.gdx.graphics.g3d.model.MeshPart;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.ParticleShader;
import com.badlogic.gdx.graphics.g3d.particles.ResourceData;
import com.badlogic.gdx.graphics.g3d.particles.renderers.BillboardControllerRenderData;
import com.badlogic.gdx.graphics.g3d.shaders.DefaultShader;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class BillboardParticleBatch extends BufferedParticleBatch<BillboardControllerRenderData> {

    /* renamed from: C */
    public static final Vector3 f4565C = new Vector3();

    /* renamed from: D */
    public static final Vector3 f4566D = new Vector3();

    /* renamed from: E */
    public static final Vector3 f4567E = new Vector3();

    /* renamed from: F */
    public static final Vector3 f4568F = new Vector3();

    /* renamed from: G */
    public static final Vector3 f4569G = new Vector3();

    /* renamed from: H */
    public static final Vector3 f4570H = new Vector3();

    /* renamed from: I */
    public static final Matrix3 f4571I = new Matrix3();

    /* renamed from: J */
    public static final VertexAttributes f4572J;

    /* renamed from: K */
    public static final VertexAttributes f4573K;

    /* renamed from: L */
    public static final int f4574L;

    /* renamed from: M */
    public static final int f4575M;

    /* renamed from: N */
    public static final int f4576N;

    /* renamed from: O */
    public static final int f4577O;

    /* renamed from: P */
    public static final int f4578P;

    /* renamed from: Q */
    public static final int f4579Q;

    /* renamed from: R */
    public static final int f4580R;

    /* renamed from: S */
    public static final int f4581S;

    /* renamed from: T */
    public static final int f4582T;

    /* renamed from: A */
    public DepthTestAttribute f4583A;

    /* renamed from: B */
    public Shader f4584B;

    /* renamed from: q */
    public RenderablePool f4585q;

    /* renamed from: r */
    public Array<Renderable> f4586r;

    /* renamed from: s */
    public float[] f4587s;

    /* renamed from: t */
    public short[] f4588t;

    /* renamed from: u */
    public int f4589u;

    /* renamed from: v */
    public VertexAttributes f4590v;

    /* renamed from: w */
    public boolean f4591w;

    /* renamed from: x */
    public ParticleShader.AlignMode f4592x;

    /* renamed from: y */
    public Texture f4593y;

    /* renamed from: z */
    public BlendingAttribute f4594z;

    /* loaded from: classes.dex */
    public static class Config {

        /* renamed from: a */
        public boolean f4595a;

        /* renamed from: b */
        public ParticleShader.AlignMode f4596b;

        public Config() {
        }

        public Config(boolean z, ParticleShader.AlignMode alignMode) {
            this.f4595a = z;
            this.f4596b = alignMode;
        }
    }

    /* loaded from: classes.dex */
    public class RenderablePool extends Pool<Renderable> {
        public RenderablePool() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.badlogic.gdx.utils.Pool
        public Renderable newObject() {
            return BillboardParticleBatch.this.m24112c();
        }
    }

    public BillboardParticleBatch(ParticleShader.AlignMode alignMode, boolean z, int i, BlendingAttribute blendingAttribute, DepthTestAttribute depthTestAttribute) {
        super(BillboardControllerRenderData.class);
        this.f4589u = 0;
        this.f4591w = false;
        this.f4592x = ParticleShader.AlignMode.Screen;
        this.f4586r = new Array<>();
        this.f4585q = new RenderablePool();
        this.f4594z = blendingAttribute;
        this.f4583A = depthTestAttribute;
        if (blendingAttribute == null) {
            this.f4594z = new BlendingAttribute(1, GL20.GL_ONE_MINUS_SRC_ALPHA, 1.0f);
        }
        if (this.f4583A == null) {
            this.f4583A = new DepthTestAttribute(GL20.GL_LEQUAL, false);
        }
        m24113b();
        m24104k();
        ensureCapacity(i);
        setUseGpu(z);
        setAlignMode(alignMode);
    }

    public ParticleShader.AlignMode getAlignMode() {
        return this.f4592x;
    }

    public BlendingAttribute getBlendingAttribute() {
        return this.f4594z;
    }

    public Texture getTexture() {
        return this.f4593y;
    }

    public boolean isUseGPU() {
        return this.f4591w;
    }

    static {
        VertexAttributes vertexAttributes = new VertexAttributes(new VertexAttribute(1, 3, ShaderProgram.POSITION_ATTRIBUTE), new VertexAttribute(16, 2, "a_texCoord0"), new VertexAttribute(2, 4, ShaderProgram.COLOR_ATTRIBUTE), new VertexAttribute(512, 4, "a_sizeAndRotation"));
        f4572J = vertexAttributes;
        VertexAttributes vertexAttributes2 = new VertexAttributes(new VertexAttribute(1, 3, ShaderProgram.POSITION_ATTRIBUTE), new VertexAttribute(16, 2, "a_texCoord0"), new VertexAttribute(2, 4, ShaderProgram.COLOR_ATTRIBUTE));
        f4573K = vertexAttributes2;
        f4574L = (short) (vertexAttributes.findByUsage(1).offset / 4);
        f4575M = (short) (vertexAttributes.findByUsage(16).offset / 4);
        f4576N = (short) (vertexAttributes.findByUsage(512).offset / 4);
        f4577O = (short) (vertexAttributes.findByUsage(2).offset / 4);
        f4578P = vertexAttributes.vertexSize / 4;
        f4579Q = (short) (vertexAttributes2.findByUsage(1).offset / 4);
        f4580R = (short) (vertexAttributes2.findByUsage(16).offset / 4);
        f4581S = (short) (vertexAttributes2.findByUsage(2).offset / 4);
        f4582T = vertexAttributes2.vertexSize / 4;
    }

    /* renamed from: l */
    public static void m24103l(float[] fArr, int i, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13) {
        int i2 = f4574L;
        fArr[i + i2] = f;
        fArr[i + i2 + 1] = f2;
        fArr[i2 + i + 2] = f3;
        int i3 = f4575M;
        fArr[i + i3] = f4;
        fArr[i3 + i + 1] = f5;
        int i4 = f4576N;
        fArr[i + i4] = f6;
        fArr[i + i4 + 1] = f7;
        fArr[i + i4 + 2] = f8;
        fArr[i4 + i + 3] = f9;
        int i5 = f4577O;
        fArr[i + i5] = f10;
        fArr[i + i5 + 1] = f11;
        fArr[i + i5 + 2] = f12;
        fArr[i5 + i + 3] = f13;
    }

    /* renamed from: m */
    public static void m24102m(float[] fArr, int i, Vector3 vector3, float f, float f2, float f3, float f4, float f5, float f6) {
        int i2 = f4579Q;
        fArr[i + i2] = vector3.f5533x;
        fArr[i + i2 + 1] = vector3.f5534y;
        fArr[i2 + i + 2] = vector3.f5535z;
        int i3 = f4580R;
        fArr[i + i3] = f;
        fArr[i3 + i + 1] = f2;
        int i4 = f4581S;
        fArr[i + i4] = f3;
        fArr[i + i4 + 1] = f4;
        fArr[i + i4 + 2] = f5;
        fArr[i + i4 + 3] = f6;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.BufferedParticleBatch
    /* renamed from: a */
    public void mo24101a(int[] iArr) {
        if (this.f4591w) {
            m24108g(iArr);
        } else {
            ParticleShader.AlignMode alignMode = this.f4592x;
            if (alignMode == ParticleShader.AlignMode.Screen) {
                m24107h(iArr);
            } else if (alignMode == ParticleShader.AlignMode.ViewPoint) {
                m24106i(iArr);
            }
        }
        int i = this.f4599b * 4;
        int i2 = 0;
        while (i2 < i) {
            int min = Math.min(i - i2, 32764);
            Renderable obtain = this.f4585q.obtain();
            MeshPart meshPart = obtain.meshPart;
            meshPart.size = (min / 4) * 6;
            Mesh mesh = meshPart.mesh;
            float[] fArr = this.f4587s;
            int i3 = this.f4589u;
            mesh.setVertices(fArr, i3 * i2, i3 * min);
            obtain.meshPart.update();
            this.f4586r.add(obtain);
            i2 += min;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.BufferedParticleBatch
    public void allocParticlesData(int i) {
        this.f4587s = new float[this.f4589u * 4 * i];
        m24111d(i);
    }

    /* renamed from: c */
    public Renderable m24112c() {
        Renderable renderable = new Renderable();
        MeshPart meshPart = renderable.meshPart;
        meshPart.primitiveType = 4;
        meshPart.offset = 0;
        renderable.material = new Material(this.f4594z, this.f4583A, TextureAttribute.createDiffuse(this.f4593y));
        renderable.meshPart.mesh = new Mesh(false, 32764, 49146, this.f4590v);
        renderable.meshPart.mesh.setIndices(this.f4588t);
        renderable.shader = this.f4584B;
        return renderable;
    }

    /* renamed from: d */
    public final void m24111d(int i) {
        int ceil = MathUtils.ceil(i / 8191);
        int free = this.f4585q.getFree();
        if (free < ceil) {
            int i2 = ceil - free;
            for (int i3 = 0; i3 < i2; i3++) {
                RenderablePool renderablePool = this.f4585q;
                renderablePool.free(renderablePool.newObject());
            }
        }
    }

    /* renamed from: f */
    public final void m24109f() {
        this.f4585q.freeAll(this.f4586r);
        int free = this.f4585q.getFree();
        for (int i = 0; i < free; i++) {
            this.f4585q.obtain().meshPart.mesh.dispose();
        }
        this.f4586r.clear();
    }

    /* renamed from: g */
    public final void m24108g(int[] iArr) {
        Array.ArrayIterator it = this.f4598a.iterator();
        int i = 0;
        while (it.hasNext()) {
            BillboardControllerRenderData billboardControllerRenderData = (BillboardControllerRenderData) it.next();
            ParallelArray.FloatChannel floatChannel = billboardControllerRenderData.scaleChannel;
            ParallelArray.FloatChannel floatChannel2 = billboardControllerRenderData.regionChannel;
            ParallelArray.FloatChannel floatChannel3 = billboardControllerRenderData.positionChannel;
            ParallelArray.FloatChannel floatChannel4 = billboardControllerRenderData.colorChannel;
            ParallelArray.FloatChannel floatChannel5 = billboardControllerRenderData.rotationChannel;
            int i2 = billboardControllerRenderData.controller.particles.size;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i] * this.f4589u * 4;
                float f = floatChannel.data[floatChannel.strideSize * i3];
                int i5 = floatChannel2.strideSize * i3;
                int i6 = floatChannel3.strideSize * i3;
                int i7 = floatChannel4.strideSize * i3;
                int i8 = floatChannel5.strideSize * i3;
                Array.ArrayIterator arrayIterator = it;
                float[] fArr = floatChannel3.data;
                float f2 = fArr[i6 + 0];
                float f3 = fArr[i6 + 1];
                float f4 = fArr[i6 + 2];
                float[] fArr2 = floatChannel2.data;
                float f5 = fArr2[i5 + 0];
                float f6 = fArr2[i5 + 1];
                float f7 = fArr2[i5 + 2];
                float f8 = fArr2[i5 + 3];
                int i9 = i2;
                float f9 = fArr2[i5 + 4] * f;
                float f10 = fArr2[i5 + 5] * f;
                float[] fArr3 = floatChannel4.data;
                float f11 = fArr3[i7 + 0];
                float f12 = fArr3[i7 + 1];
                float f13 = fArr3[i7 + 2];
                float f14 = fArr3[i7 + 3];
                float[] fArr4 = floatChannel5.data;
                float f15 = fArr4[i8 + 0];
                float f16 = fArr4[i8 + 1];
                float f17 = -f9;
                float f18 = -f10;
                m24103l(this.f4587s, i4, f2, f3, f4, f5, f8, f17, f18, f15, f16, f11, f12, f13, f14);
                int i10 = i4 + this.f4589u;
                m24103l(this.f4587s, i10, f2, f3, f4, f7, f8, f9, f18, f15, f16, f11, f12, f13, f14);
                int i11 = i10 + this.f4589u;
                m24103l(this.f4587s, i11, f2, f3, f4, f7, f6, f9, f10, f15, f16, f11, f12, f13, f14);
                m24103l(this.f4587s, i11 + this.f4589u, f2, f3, f4, f5, f6, f17, f10, f15, f16, f11, f12, f13, f14);
                i3++;
                i++;
                it = arrayIterator;
                i2 = i9;
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.RenderableProvider
    public void getRenderables(Array<Renderable> array, Pool<Renderable> pool) {
        Array.ArrayIterator<Renderable> it = this.f4586r.iterator();
        while (it.hasNext()) {
            array.add(pool.obtain().set(it.next()));
        }
    }

    /* renamed from: h */
    public final void m24107h(int[] iArr) {
        Vector3 vector3;
        Vector3 vector32;
        Vector3 vector33;
        Vector3 scl = f4567E.set(this.f4602p.direction).scl(-1.0f);
        Vector3 nor = f4568F.set(this.f4602p.f3888up).crs(scl).nor();
        Vector3 vector34 = this.f4602p.f3888up;
        Array.ArrayIterator it = this.f4598a.iterator();
        int i = 0;
        while (it.hasNext()) {
            BillboardControllerRenderData billboardControllerRenderData = (BillboardControllerRenderData) it.next();
            ParallelArray.FloatChannel floatChannel = billboardControllerRenderData.scaleChannel;
            ParallelArray.FloatChannel floatChannel2 = billboardControllerRenderData.regionChannel;
            ParallelArray.FloatChannel floatChannel3 = billboardControllerRenderData.positionChannel;
            ParallelArray.FloatChannel floatChannel4 = billboardControllerRenderData.colorChannel;
            ParallelArray.FloatChannel floatChannel5 = billboardControllerRenderData.rotationChannel;
            int i2 = billboardControllerRenderData.controller.particles.size;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i] * this.f4589u * 4;
                float f = floatChannel.data[floatChannel.strideSize * i3];
                int i5 = floatChannel2.strideSize * i3;
                Array.ArrayIterator arrayIterator = it;
                int i6 = floatChannel3.strideSize * i3;
                int i7 = i2;
                int i8 = floatChannel4.strideSize * i3;
                ParallelArray.FloatChannel floatChannel6 = floatChannel;
                int i9 = floatChannel5.strideSize * i3;
                int i10 = i;
                float[] fArr = floatChannel3.data;
                ParallelArray.FloatChannel floatChannel7 = floatChannel3;
                float f2 = fArr[i6 + 0];
                int i11 = i3;
                float f3 = fArr[i6 + 1];
                float f4 = fArr[i6 + 2];
                float[] fArr2 = floatChannel2.data;
                float f5 = fArr2[i5 + 0];
                float f6 = fArr2[i5 + 1];
                float f7 = fArr2[i5 + 2];
                float f8 = fArr2[i5 + 3];
                ParallelArray.FloatChannel floatChannel8 = floatChannel2;
                float f9 = fArr2[i5 + 4] * f;
                float f10 = fArr2[i5 + 5] * f;
                float[] fArr3 = floatChannel4.data;
                float f11 = fArr3[i8 + 0];
                float f12 = fArr3[i8 + 1];
                float f13 = fArr3[i8 + 2];
                float f14 = fArr3[i8 + 3];
                float[] fArr4 = floatChannel5.data;
                float f15 = fArr4[i9 + 0];
                float f16 = fArr4[i9 + 1];
                Vector3 vector35 = f4565C;
                ParallelArray.FloatChannel floatChannel9 = floatChannel4;
                vector35.set(nor).scl(f9);
                Vector3 vector36 = f4566D;
                vector36.set(vector34).scl(f10);
                if (f15 != 1.0f) {
                    Matrix3 matrix3 = f4571I;
                    matrix3.setToRotation(scl, f15, f16);
                    float[] fArr5 = this.f4587s;
                    Vector3 vector37 = f4570H;
                    vector3 = scl;
                    vector32 = nor;
                    vector33 = vector34;
                    m24102m(fArr5, i4, vector37.set((-vector35.f5533x) - vector36.f5533x, (-vector35.f5534y) - vector36.f5534y, (-vector35.f5535z) - vector36.f5535z).mul(matrix3).add(f2, f3, f4), f5, f8, f11, f12, f13, f14);
                    int i12 = i4 + this.f4589u;
                    m24102m(this.f4587s, i12, vector37.set(vector35.f5533x - vector36.f5533x, vector35.f5534y - vector36.f5534y, vector35.f5535z - vector36.f5535z).mul(matrix3).add(f2, f3, f4), f7, f8, f11, f12, f13, f14);
                    int i13 = i12 + this.f4589u;
                    m24102m(this.f4587s, i13, vector37.set(vector35.f5533x + vector36.f5533x, vector35.f5534y + vector36.f5534y, vector35.f5535z + vector36.f5535z).mul(matrix3).add(f2, f3, f4), f7, f6, f11, f12, f13, f14);
                    m24102m(this.f4587s, i13 + this.f4589u, vector37.set((-vector35.f5533x) + vector36.f5533x, (-vector35.f5534y) + vector36.f5534y, (-vector35.f5535z) + vector36.f5535z).mul(matrix3).add(f2, f3, f4), f5, f6, f11, f12, f13, f14);
                } else {
                    vector3 = scl;
                    vector32 = nor;
                    vector33 = vector34;
                    float[] fArr6 = this.f4587s;
                    Vector3 vector38 = f4570H;
                    m24102m(fArr6, i4, vector38.set(((-vector35.f5533x) - vector36.f5533x) + f2, ((-vector35.f5534y) - vector36.f5534y) + f3, ((-vector35.f5535z) - vector36.f5535z) + f4), f5, f8, f11, f12, f13, f14);
                    int i14 = i4 + this.f4589u;
                    m24102m(this.f4587s, i14, vector38.set((vector35.f5533x - vector36.f5533x) + f2, (vector35.f5534y - vector36.f5534y) + f3, (vector35.f5535z - vector36.f5535z) + f4), f7, f8, f11, f12, f13, f14);
                    int i15 = i14 + this.f4589u;
                    m24102m(this.f4587s, i15, vector38.set(vector35.f5533x + vector36.f5533x + f2, vector35.f5534y + vector36.f5534y + f3, vector35.f5535z + vector36.f5535z + f4), f7, f6, f11, f12, f13, f14);
                    m24102m(this.f4587s, i15 + this.f4589u, vector38.set((-vector35.f5533x) + vector36.f5533x + f2, (-vector35.f5534y) + vector36.f5534y + f3, (-vector35.f5535z) + vector36.f5535z + f4), f5, f6, f11, f12, f13, f14);
                }
                i3 = i11 + 1;
                i = i10 + 1;
                it = arrayIterator;
                i2 = i7;
                floatChannel = floatChannel6;
                floatChannel3 = floatChannel7;
                floatChannel2 = floatChannel8;
                floatChannel4 = floatChannel9;
                scl = vector3;
                nor = vector32;
                vector34 = vector33;
            }
        }
    }

    /* renamed from: i */
    public final void m24106i(int[] iArr) {
        Array.ArrayIterator it = this.f4598a.iterator();
        int i = 0;
        while (it.hasNext()) {
            BillboardControllerRenderData billboardControllerRenderData = (BillboardControllerRenderData) it.next();
            ParallelArray.FloatChannel floatChannel = billboardControllerRenderData.scaleChannel;
            ParallelArray.FloatChannel floatChannel2 = billboardControllerRenderData.regionChannel;
            ParallelArray.FloatChannel floatChannel3 = billboardControllerRenderData.positionChannel;
            ParallelArray.FloatChannel floatChannel4 = billboardControllerRenderData.colorChannel;
            ParallelArray.FloatChannel floatChannel5 = billboardControllerRenderData.rotationChannel;
            int i2 = billboardControllerRenderData.controller.particles.size;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i] * this.f4589u * 4;
                float f = floatChannel.data[floatChannel.strideSize * i3];
                int i5 = floatChannel2.strideSize * i3;
                int i6 = floatChannel3.strideSize * i3;
                int i7 = floatChannel4.strideSize * i3;
                int i8 = floatChannel5.strideSize * i3;
                Array.ArrayIterator arrayIterator = it;
                float[] fArr = floatChannel3.data;
                int i9 = i2;
                float f2 = fArr[i6 + 0];
                ParallelArray.FloatChannel floatChannel6 = floatChannel;
                float f3 = fArr[i6 + 1];
                float f4 = fArr[i6 + 2];
                float[] fArr2 = floatChannel2.data;
                float f5 = fArr2[i5 + 0];
                float f6 = fArr2[i5 + 1];
                float f7 = fArr2[i5 + 2];
                float f8 = fArr2[i5 + 3];
                ParallelArray.FloatChannel floatChannel7 = floatChannel2;
                float f9 = fArr2[i5 + 4] * f;
                float f10 = fArr2[i5 + 5] * f;
                float[] fArr3 = floatChannel4.data;
                float f11 = fArr3[i7 + 0];
                float f12 = fArr3[i7 + 1];
                float f13 = fArr3[i7 + 2];
                float f14 = fArr3[i7 + 3];
                float[] fArr4 = floatChannel5.data;
                float f15 = fArr4[i8 + 0];
                float f16 = fArr4[i8 + 1];
                Vector3 nor = f4567E.set(this.f4602p.position).sub(f2, f3, f4).nor();
                Vector3 vector3 = f4565C;
                ParallelArray.FloatChannel floatChannel8 = floatChannel3;
                Vector3 nor2 = vector3.set(this.f4602p.f3888up).crs(nor).nor();
                ParallelArray.FloatChannel floatChannel9 = floatChannel4;
                Vector3 vector32 = f4566D;
                ParallelArray.FloatChannel floatChannel10 = floatChannel5;
                Vector3 crs = vector32.set(nor).crs(nor2);
                nor2.scl(f9);
                crs.scl(f10);
                if (f15 != 1.0f) {
                    Matrix3 matrix3 = f4571I;
                    matrix3.setToRotation(nor, f15, f16);
                    float[] fArr5 = this.f4587s;
                    Vector3 vector33 = f4570H;
                    m24102m(fArr5, i4, vector33.set((-vector3.f5533x) - vector32.f5533x, (-vector3.f5534y) - vector32.f5534y, (-vector3.f5535z) - vector32.f5535z).mul(matrix3).add(f2, f3, f4), f5, f8, f11, f12, f13, f14);
                    int i10 = i4 + this.f4589u;
                    m24102m(this.f4587s, i10, vector33.set(vector3.f5533x - vector32.f5533x, vector3.f5534y - vector32.f5534y, vector3.f5535z - vector32.f5535z).mul(matrix3).add(f2, f3, f4), f7, f8, f11, f12, f13, f14);
                    int i11 = i10 + this.f4589u;
                    m24102m(this.f4587s, i11, vector33.set(vector3.f5533x + vector32.f5533x, vector3.f5534y + vector32.f5534y, vector3.f5535z + vector32.f5535z).mul(matrix3).add(f2, f3, f4), f7, f6, f11, f12, f13, f14);
                    m24102m(this.f4587s, i11 + this.f4589u, vector33.set((-vector3.f5533x) + vector32.f5533x, (-vector3.f5534y) + vector32.f5534y, (-vector3.f5535z) + vector32.f5535z).mul(matrix3).add(f2, f3, f4), f5, f6, f11, f12, f13, f14);
                } else {
                    float[] fArr6 = this.f4587s;
                    Vector3 vector34 = f4570H;
                    m24102m(fArr6, i4, vector34.set(((-vector3.f5533x) - vector32.f5533x) + f2, ((-vector3.f5534y) - vector32.f5534y) + f3, ((-vector3.f5535z) - vector32.f5535z) + f4), f5, f8, f11, f12, f13, f14);
                    int i12 = i4 + this.f4589u;
                    m24102m(this.f4587s, i12, vector34.set((vector3.f5533x - vector32.f5533x) + f2, (vector3.f5534y - vector32.f5534y) + f3, (vector3.f5535z - vector32.f5535z) + f4), f7, f8, f11, f12, f13, f14);
                    int i13 = i12 + this.f4589u;
                    m24102m(this.f4587s, i13, vector34.set(vector3.f5533x + vector32.f5533x + f2, vector3.f5534y + vector32.f5534y + f3, vector3.f5535z + vector32.f5535z + f4), f7, f6, f11, f12, f13, f14);
                    m24102m(this.f4587s, i13 + this.f4589u, vector34.set((-vector3.f5533x) + vector32.f5533x + f2, (-vector3.f5534y) + vector32.f5534y + f3, (-vector3.f5535z) + vector32.f5535z + f4), f5, f6, f11, f12, f13, f14);
                }
                i3++;
                i++;
                it = arrayIterator;
                i2 = i9;
                floatChannel = floatChannel6;
                floatChannel2 = floatChannel7;
                floatChannel3 = floatChannel8;
                floatChannel4 = floatChannel9;
                floatChannel5 = floatChannel10;
            }
        }
    }

    /* renamed from: j */
    public Shader m24105j(Renderable renderable) {
        Shader defaultShader;
        if (this.f4591w) {
            defaultShader = new ParticleShader(renderable, new ParticleShader.Config(this.f4592x));
        } else {
            defaultShader = new DefaultShader(renderable);
        }
        defaultShader.init();
        return defaultShader;
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void load(AssetManager assetManager, ResourceData resourceData) {
        ResourceData.SaveData saveData = resourceData.getSaveData("billboardBatch");
        if (saveData != null) {
            setTexture((Texture) assetManager.get(saveData.loadAsset()));
            Config config = (Config) saveData.load("cfg");
            setUseGpu(config.f4595a);
            setAlignMode(config.f4596b);
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch, com.badlogic.gdx.graphics.g3d.particles.ResourceData.Configurable
    public void save(AssetManager assetManager, ResourceData resourceData) {
        ResourceData.SaveData createSaveData = resourceData.createSaveData("billboardBatch");
        createSaveData.save("cfg", new Config(this.f4591w, this.f4592x));
        createSaveData.saveAsset(assetManager.getAssetFileName(this.f4593y), Texture.class);
    }

    public void setAlignMode(ParticleShader.AlignMode alignMode) {
        if (alignMode != this.f4592x) {
            this.f4592x = alignMode;
            if (this.f4591w) {
                m24104k();
                m24111d(this.f4599b);
            }
        }
    }

    public void setTexture(Texture texture) {
        this.f4585q.freeAll(this.f4586r);
        this.f4586r.clear();
        int free = this.f4585q.getFree();
        for (int i = 0; i < free; i++) {
            ((TextureAttribute) this.f4585q.obtain().material.get(TextureAttribute.Diffuse)).textureDescription.texture = texture;
        }
        this.f4593y = texture;
    }

    public void setUseGpu(boolean z) {
        if (this.f4591w != z) {
            this.f4591w = z;
            m24104k();
            m24111d(this.f4599b);
        }
    }

    public void setVertexData() {
        if (this.f4591w) {
            this.f4590v = f4572J;
            this.f4589u = f4578P;
            return;
        }
        this.f4590v = f4573K;
        this.f4589u = f4582T;
    }

    /* renamed from: b */
    public final void m24113b() {
        this.f4588t = new short[49146];
        int i = 0;
        int i2 = 0;
        while (i < 49146) {
            short[] sArr = this.f4588t;
            short s = (short) i2;
            sArr[i] = s;
            sArr[i + 1] = (short) (i2 + 1);
            short s2 = (short) (i2 + 2);
            sArr[i + 2] = s2;
            sArr[i + 3] = s2;
            sArr[i + 4] = (short) (i2 + 3);
            sArr[i + 5] = s;
            i += 6;
            i2 += 4;
        }
    }

    @Override // com.badlogic.gdx.graphics.g3d.particles.batches.BufferedParticleBatch, com.badlogic.gdx.graphics.g3d.particles.batches.ParticleBatch
    public void begin() {
        super.begin();
        this.f4585q.freeAll(this.f4586r);
        this.f4586r.clear();
    }

    /* renamed from: e */
    public final void m24110e() {
        Renderable m24112c = m24112c();
        Shader m24105j = m24105j(m24112c);
        m24112c.shader = m24105j;
        this.f4584B = m24105j;
        this.f4585q.free(m24112c);
    }

    /* renamed from: k */
    public final void m24104k() {
        setVertexData();
        m24109f();
        m24110e();
        resetCapacity();
    }

    public BillboardParticleBatch(ParticleShader.AlignMode alignMode, boolean z, int i) {
        this(alignMode, z, i, null, null);
    }

    public BillboardParticleBatch() {
        this(ParticleShader.AlignMode.Screen, false, 100);
    }

    public BillboardParticleBatch(int i) {
        this(ParticleShader.AlignMode.Screen, false, i);
    }
}
