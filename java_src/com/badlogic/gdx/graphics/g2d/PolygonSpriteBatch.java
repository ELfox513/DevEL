package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Affine2;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
/* loaded from: classes.dex */
public class PolygonSpriteBatch implements PolygonBatch {

    /* renamed from: A */
    public int f4231A;

    /* renamed from: B */
    public int f4232B;

    /* renamed from: C */
    public final ShaderProgram f4233C;

    /* renamed from: D */
    public ShaderProgram f4234D;

    /* renamed from: E */
    public boolean f4235E;

    /* renamed from: F */
    public final Color f4236F;

    /* renamed from: G */
    public float f4237G;

    /* renamed from: a */
    public Mesh f4238a;

    /* renamed from: b */
    public final float[] f4239b;

    /* renamed from: d */
    public final short[] f4240d;

    /* renamed from: k */
    public int f4241k;
    public int maxTrianglesInBatch;

    /* renamed from: p */
    public int f4242p;

    /* renamed from: q */
    public Texture f4243q;

    /* renamed from: r */
    public float f4244r;
    public int renderCalls;

    /* renamed from: s */
    public float f4245s;

    /* renamed from: t */
    public boolean f4246t;
    public int totalRenderCalls;

    /* renamed from: u */
    public final Matrix4 f4247u;

    /* renamed from: v */
    public final Matrix4 f4248v;

    /* renamed from: w */
    public final Matrix4 f4249w;

    /* renamed from: x */
    public boolean f4250x;

    /* renamed from: y */
    public int f4251y;

    /* renamed from: z */
    public int f4252z;

    public PolygonSpriteBatch() {
        this(2000, null);
    }

    @Override // com.badlogic.gdx.graphics.g2d.PolygonBatch
    public void draw(PolygonRegion polygonRegion, float f, float f2) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            short[] sArr2 = polygonRegion.f4213c;
            int length = sArr2.length;
            float[] fArr = polygonRegion.f4212b;
            int length2 = fArr.length;
            Texture texture = polygonRegion.f4214d.f4354a;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + length > sArr.length || this.f4241k + ((length2 * 5) / 2) > this.f4239b.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k;
            int i3 = i2 / 5;
            int i4 = 0;
            int i5 = 0;
            while (i5 < length) {
                sArr[i] = (short) (sArr2[i5] + i3);
                i5++;
                i++;
            }
            this.f4242p = i;
            float[] fArr2 = this.f4239b;
            float f3 = this.f4237G;
            float[] fArr3 = polygonRegion.f4211a;
            while (i4 < length2) {
                int i6 = i2 + 1;
                fArr2[i2] = fArr[i4] + f;
                int i7 = i6 + 1;
                int i8 = i4 + 1;
                fArr2[i6] = fArr[i8] + f2;
                int i9 = i7 + 1;
                fArr2[i7] = f3;
                int i10 = i9 + 1;
                fArr2[i9] = fArr3[i4];
                fArr2[i10] = fArr3[i8];
                i4 += 2;
                i2 = i10 + 1;
            }
            this.f4241k = i2;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public int getBlendDstFunc() {
        return this.f4252z;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public int getBlendDstFuncAlpha() {
        return this.f4232B;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public int getBlendSrcFunc() {
        return this.f4251y;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public int getBlendSrcFuncAlpha() {
        return this.f4231A;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public Color getColor() {
        return this.f4236F;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public float getPackedColor() {
        return this.f4237G;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public Matrix4 getProjectionMatrix() {
        return this.f4248v;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public Matrix4 getTransformMatrix() {
        return this.f4247u;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public boolean isBlendingEnabled() {
        return !this.f4250x;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public boolean isDrawing() {
        return this.f4246t;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setBlendFunction(int i, int i2) {
        setBlendFunctionSeparate(i, i2, i, i2);
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setColor(Color color) {
        this.f4236F.set(color);
        this.f4237G = color.toFloatBits();
    }

    public PolygonSpriteBatch(int i) {
        this(i, i * 2, null);
    }

    /* renamed from: a */
    public void m24191a() {
        this.f4249w.set(this.f4248v).mul(this.f4247u);
        ShaderProgram shaderProgram = this.f4234D;
        if (shaderProgram != null) {
            shaderProgram.setUniformMatrix("u_projTrans", this.f4249w);
            this.f4234D.setUniformi("u_texture", 0);
            return;
        }
        this.f4233C.setUniformMatrix("u_projTrans", this.f4249w);
        this.f4233C.setUniformi("u_texture", 0);
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void begin() {
        if (!this.f4246t) {
            this.renderCalls = 0;
            Gdx.f3119gl.glDepthMask(false);
            ShaderProgram shaderProgram = this.f4234D;
            if (shaderProgram != null) {
                shaderProgram.bind();
            } else {
                this.f4233C.bind();
            }
            m24191a();
            this.f4246t = true;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.end must be called before begin.");
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        ShaderProgram shaderProgram;
        this.f4238a.dispose();
        if (this.f4235E && (shaderProgram = this.f4233C) != null) {
            shaderProgram.dispose();
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void end() {
        if (this.f4246t) {
            if (this.f4241k > 0) {
                flush();
            }
            this.f4243q = null;
            this.f4246t = false;
            GL20 gl20 = Gdx.f3119gl;
            gl20.glDepthMask(true);
            if (isBlendingEnabled()) {
                gl20.glDisable(GL20.GL_BLEND);
                return;
            }
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before end.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void flush() {
        if (this.f4241k == 0) {
            return;
        }
        this.renderCalls++;
        this.totalRenderCalls++;
        int i = this.f4242p;
        if (i > this.maxTrianglesInBatch) {
            this.maxTrianglesInBatch = i;
        }
        this.f4243q.bind();
        Mesh mesh = this.f4238a;
        mesh.setVertices(this.f4239b, 0, this.f4241k);
        mesh.setIndices(this.f4240d, 0, i);
        if (this.f4250x) {
            Gdx.f3119gl.glDisable(GL20.GL_BLEND);
        } else {
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            int i2 = this.f4251y;
            if (i2 != -1) {
                Gdx.f3119gl.glBlendFuncSeparate(i2, this.f4252z, this.f4231A, this.f4232B);
            }
        }
        ShaderProgram shaderProgram = this.f4234D;
        if (shaderProgram == null) {
            shaderProgram = this.f4233C;
        }
        mesh.render(shaderProgram, 4, 0, i);
        this.f4241k = 0;
        this.f4242p = 0;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public ShaderProgram getShader() {
        ShaderProgram shaderProgram = this.f4234D;
        if (shaderProgram == null) {
            return this.f4233C;
        }
        return shaderProgram;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setBlendFunctionSeparate(int i, int i2, int i3, int i4) {
        if (this.f4251y == i && this.f4252z == i2 && this.f4231A == i3 && this.f4232B == i4) {
            return;
        }
        flush();
        this.f4251y = i;
        this.f4252z = i2;
        this.f4231A = i3;
        this.f4232B = i4;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setPackedColor(float f) {
        Color.abgr8888ToColor(this.f4236F, f);
        this.f4237G = f;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setProjectionMatrix(Matrix4 matrix4) {
        if (this.f4246t) {
            flush();
        }
        this.f4248v.set(matrix4);
        if (this.f4246t) {
            m24191a();
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setShader(ShaderProgram shaderProgram) {
        if (this.f4246t) {
            flush();
        }
        this.f4234D = shaderProgram;
        if (this.f4246t) {
            if (shaderProgram != null) {
                shaderProgram.bind();
            } else {
                this.f4233C.bind();
            }
            m24191a();
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setTransformMatrix(Matrix4 matrix4) {
        if (this.f4246t) {
            flush();
        }
        this.f4247u.set(matrix4);
        if (this.f4246t) {
            m24191a();
        }
    }

    public PolygonSpriteBatch(int i, ShaderProgram shaderProgram) {
        this(i, i * 2, shaderProgram);
    }

    /* renamed from: b */
    public final void m24190b(Texture texture) {
        flush();
        this.f4243q = texture;
        this.f4244r = 1.0f / texture.getWidth();
        this.f4245s = 1.0f / texture.getHeight();
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void disableBlending() {
        flush();
        this.f4250x = true;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void enableBlending() {
        flush();
        this.f4250x = false;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setColor(float f, float f2, float f3, float f4) {
        this.f4236F.set(f, f2, f3, f4);
        this.f4237G = this.f4236F.toFloatBits();
    }

    public PolygonSpriteBatch(int i, int i2, ShaderProgram shaderProgram) {
        this.f4244r = 0.0f;
        this.f4245s = 0.0f;
        this.f4247u = new Matrix4();
        Matrix4 matrix4 = new Matrix4();
        this.f4248v = matrix4;
        this.f4249w = new Matrix4();
        this.f4251y = GL20.GL_SRC_ALPHA;
        this.f4252z = GL20.GL_ONE_MINUS_SRC_ALPHA;
        this.f4231A = GL20.GL_SRC_ALPHA;
        this.f4232B = GL20.GL_ONE_MINUS_SRC_ALPHA;
        this.f4236F = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4237G = Color.WHITE_FLOAT_BITS;
        this.renderCalls = 0;
        this.totalRenderCalls = 0;
        this.maxTrianglesInBatch = 0;
        if (i <= 32767) {
            int i3 = i2 * 3;
            this.f4238a = new Mesh(Gdx.gl30 != null ? Mesh.VertexDataType.VertexBufferObjectWithVAO : Mesh.VertexDataType.VertexArray, false, i, i3, new VertexAttribute(1, 2, ShaderProgram.POSITION_ATTRIBUTE), new VertexAttribute(4, 4, ShaderProgram.COLOR_ATTRIBUTE), new VertexAttribute(16, 2, "a_texCoord0"));
            this.f4239b = new float[i * 5];
            this.f4240d = new short[i3];
            if (shaderProgram == null) {
                this.f4233C = SpriteBatch.createDefaultShader();
                this.f4235E = true;
            } else {
                this.f4233C = shaderProgram;
            }
            matrix4.setToOrtho2D(0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
            return;
        }
        throw new IllegalArgumentException("Can't have more than 32767 vertices per batch: " + i);
    }

    @Override // com.badlogic.gdx.graphics.g2d.PolygonBatch
    public void draw(PolygonRegion polygonRegion, float f, float f2, float f3, float f4) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            short[] sArr2 = polygonRegion.f4213c;
            int length = sArr2.length;
            float[] fArr = polygonRegion.f4212b;
            int length2 = fArr.length;
            TextureRegion textureRegion = polygonRegion.f4214d;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + length > sArr.length || this.f4241k + ((length2 * 5) / 2) > this.f4239b.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k;
            int i3 = i2 / 5;
            int length3 = sArr2.length;
            int i4 = 0;
            int i5 = 0;
            while (i5 < length3) {
                sArr[i] = (short) (sArr2[i5] + i3);
                i5++;
                i++;
            }
            this.f4242p = i;
            float[] fArr2 = this.f4239b;
            float f5 = this.f4237G;
            float[] fArr3 = polygonRegion.f4211a;
            float f6 = f3 / textureRegion.f4359f;
            float f7 = f4 / textureRegion.f4360g;
            while (i4 < length2) {
                int i6 = i2 + 1;
                fArr2[i2] = (fArr[i4] * f6) + f;
                int i7 = i6 + 1;
                int i8 = i4 + 1;
                fArr2[i6] = (fArr[i8] * f7) + f2;
                int i9 = i7 + 1;
                fArr2[i7] = f5;
                int i10 = i9 + 1;
                fArr2[i9] = fArr3[i4];
                fArr2[i10] = fArr3[i8];
                i4 += 2;
                i2 = i10 + 1;
            }
            this.f4241k = i2;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.PolygonBatch
    public void draw(PolygonRegion polygonRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            short[] sArr2 = polygonRegion.f4213c;
            int length = sArr2.length;
            float[] fArr = polygonRegion.f4212b;
            int length2 = fArr.length;
            TextureRegion textureRegion = polygonRegion.f4214d;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + length > sArr.length || this.f4241k + ((length2 * 5) / 2) > this.f4239b.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k;
            int i3 = i2 / 5;
            int i4 = 0;
            int i5 = 0;
            while (i5 < length) {
                sArr[i] = (short) (sArr2[i5] + i3);
                i5++;
                i++;
            }
            this.f4242p = i;
            float[] fArr2 = this.f4239b;
            float f10 = this.f4237G;
            float[] fArr3 = polygonRegion.f4211a;
            float f11 = f + f3;
            float f12 = f2 + f4;
            float f13 = f5 / textureRegion.f4359f;
            float f14 = f6 / textureRegion.f4360g;
            float cosDeg = MathUtils.cosDeg(f9);
            float sinDeg = MathUtils.sinDeg(f9);
            while (i4 < length2) {
                float f15 = ((fArr[i4] * f13) - f3) * f7;
                int i6 = i4 + 1;
                float f16 = ((fArr[i6] * f14) - f4) * f8;
                int i7 = i2 + 1;
                fArr2[i2] = ((cosDeg * f15) - (sinDeg * f16)) + f11;
                int i8 = i7 + 1;
                fArr2[i7] = (f15 * sinDeg) + (f16 * cosDeg) + f12;
                int i9 = i8 + 1;
                fArr2[i8] = f10;
                int i10 = i9 + 1;
                fArr2[i9] = fArr3[i4];
                fArr2[i10] = fArr3[i6];
                i4 += 2;
                i2 = i10 + 1;
            }
            this.f4241k = i2;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.PolygonBatch
    public void draw(Texture texture, float[] fArr, int i, int i2, short[] sArr, int i3, int i4) {
        if (this.f4246t) {
            short[] sArr2 = this.f4240d;
            float[] fArr2 = this.f4239b;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + i4 > sArr2.length || this.f4241k + i2 > fArr2.length) {
                flush();
            }
            int i5 = this.f4242p;
            int i6 = this.f4241k;
            int i7 = i6 / 5;
            int i8 = i4 + i3;
            while (i3 < i8) {
                sArr2[i5] = (short) (sArr[i3] + i7);
                i3++;
                i5++;
            }
            this.f4242p = i5;
            System.arraycopy(fArr, i, fArr2, i6, i2);
            this.f4241k += i2;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i5 = this.f4242p;
            int i6 = this.f4241k / 5;
            int i7 = i5 + 1;
            short s = (short) i6;
            sArr[i5] = s;
            int i8 = i7 + 1;
            sArr[i7] = (short) (i6 + 1);
            int i9 = i8 + 1;
            short s2 = (short) (i6 + 2);
            sArr[i8] = s2;
            int i10 = i9 + 1;
            sArr[i9] = s2;
            int i11 = i10 + 1;
            sArr[i10] = (short) (i6 + 3);
            sArr[i11] = s;
            this.f4242p = i11 + 1;
            float f17 = f + f3;
            float f18 = f2 + f4;
            float f19 = -f3;
            float f20 = -f4;
            float f21 = f5 - f3;
            float f22 = f6 - f4;
            if (f7 != 1.0f || f8 != 1.0f) {
                f19 *= f7;
                f20 *= f8;
                f21 *= f7;
                f22 *= f8;
            }
            if (f9 != 0.0f) {
                float cosDeg = MathUtils.cosDeg(f9);
                float sinDeg = MathUtils.sinDeg(f9);
                float f23 = cosDeg * f19;
                f11 = f23 - (sinDeg * f20);
                float f24 = f19 * sinDeg;
                float f25 = (f20 * cosDeg) + f24;
                float f26 = sinDeg * f22;
                f10 = f23 - f26;
                float f27 = f22 * cosDeg;
                f14 = f24 + f27;
                float f28 = (cosDeg * f21) - f26;
                float f29 = f27 + (sinDeg * f21);
                f13 = f29 - (f14 - f25);
                f16 = (f28 - f10) + f11;
                f21 = f28;
                f12 = f25;
                f15 = f29;
            } else {
                f10 = f19;
                f11 = f10;
                f12 = f20;
                f13 = f12;
                f14 = f22;
                f15 = f14;
                f16 = f21;
            }
            float f30 = f11 + f17;
            float f31 = f12 + f18;
            float f32 = f10 + f17;
            float f33 = f14 + f18;
            float f34 = f21 + f17;
            float f35 = f15 + f18;
            float f36 = f16 + f17;
            float f37 = f13 + f18;
            float f38 = this.f4244r;
            float f39 = i * f38;
            float f40 = this.f4245s;
            float f41 = (i2 + i4) * f40;
            float f42 = (i + i3) * f38;
            float f43 = i2 * f40;
            if (z) {
                f39 = f42;
                f42 = f39;
            }
            if (z2) {
                f41 = f43;
                f43 = f41;
            }
            float f44 = this.f4237G;
            int i12 = this.f4241k;
            int i13 = i12 + 1;
            fArr[i12] = f30;
            int i14 = i13 + 1;
            fArr[i13] = f31;
            int i15 = i14 + 1;
            fArr[i14] = f44;
            int i16 = i15 + 1;
            fArr[i15] = f39;
            int i17 = i16 + 1;
            fArr[i16] = f41;
            int i18 = i17 + 1;
            fArr[i17] = f32;
            int i19 = i18 + 1;
            fArr[i18] = f33;
            int i20 = i19 + 1;
            fArr[i19] = f44;
            int i21 = i20 + 1;
            fArr[i20] = f39;
            int i22 = i21 + 1;
            fArr[i21] = f43;
            int i23 = i22 + 1;
            fArr[i22] = f34;
            int i24 = i23 + 1;
            fArr[i23] = f35;
            int i25 = i24 + 1;
            fArr[i24] = f44;
            int i26 = i25 + 1;
            fArr[i25] = f42;
            int i27 = i26 + 1;
            fArr[i26] = f43;
            int i28 = i27 + 1;
            fArr[i27] = f36;
            int i29 = i28 + 1;
            fArr[i28] = f37;
            int i30 = i29 + 1;
            fArr[i29] = f44;
            int i31 = i30 + 1;
            fArr[i30] = f42;
            fArr[i31] = f41;
            this.f4241k = i31 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i5 = this.f4242p;
            int i6 = this.f4241k;
            int i7 = i6 / 5;
            int i8 = i5 + 1;
            short s = (short) i7;
            sArr[i5] = s;
            int i9 = i8 + 1;
            sArr[i8] = (short) (i7 + 1);
            int i10 = i9 + 1;
            short s2 = (short) (i7 + 2);
            sArr[i9] = s2;
            int i11 = i10 + 1;
            sArr[i10] = s2;
            int i12 = i11 + 1;
            sArr[i11] = (short) (i7 + 3);
            sArr[i12] = s;
            this.f4242p = i12 + 1;
            float f5 = this.f4244r;
            float f6 = i * f5;
            float f7 = this.f4245s;
            float f8 = (i2 + i4) * f7;
            float f9 = (i + i3) * f5;
            float f10 = i2 * f7;
            float f11 = f + f3;
            float f12 = f2 + f4;
            if (z) {
                f6 = f9;
                f9 = f6;
            }
            if (z2) {
                f8 = f10;
                f10 = f8;
            }
            float f13 = this.f4237G;
            int i13 = i6 + 1;
            fArr[i6] = f;
            int i14 = i13 + 1;
            fArr[i13] = f2;
            int i15 = i14 + 1;
            fArr[i14] = f13;
            int i16 = i15 + 1;
            fArr[i15] = f6;
            int i17 = i16 + 1;
            fArr[i16] = f8;
            int i18 = i17 + 1;
            fArr[i17] = f;
            int i19 = i18 + 1;
            fArr[i18] = f12;
            int i20 = i19 + 1;
            fArr[i19] = f13;
            int i21 = i20 + 1;
            fArr[i20] = f6;
            int i22 = i21 + 1;
            fArr[i21] = f10;
            int i23 = i22 + 1;
            fArr[i22] = f11;
            int i24 = i23 + 1;
            fArr[i23] = f12;
            int i25 = i24 + 1;
            fArr[i24] = f13;
            int i26 = i25 + 1;
            fArr[i25] = f9;
            int i27 = i26 + 1;
            fArr[i26] = f10;
            int i28 = i27 + 1;
            fArr[i27] = f11;
            int i29 = i28 + 1;
            fArr[i28] = f2;
            int i30 = i29 + 1;
            fArr[i29] = f13;
            int i31 = i30 + 1;
            fArr[i30] = f9;
            fArr[i31] = f8;
            this.f4241k = i31 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, int i, int i2, int i3, int i4) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i5 = this.f4242p;
            int i6 = this.f4241k;
            int i7 = i6 / 5;
            int i8 = i5 + 1;
            short s = (short) i7;
            sArr[i5] = s;
            int i9 = i8 + 1;
            sArr[i8] = (short) (i7 + 1);
            int i10 = i9 + 1;
            short s2 = (short) (i7 + 2);
            sArr[i9] = s2;
            int i11 = i10 + 1;
            sArr[i10] = s2;
            int i12 = i11 + 1;
            sArr[i11] = (short) (i7 + 3);
            sArr[i12] = s;
            this.f4242p = i12 + 1;
            float f3 = this.f4244r;
            float f4 = i * f3;
            float f5 = this.f4245s;
            float f6 = (i2 + i4) * f5;
            float f7 = (i + i3) * f3;
            float f8 = i2 * f5;
            float f9 = i3 + f;
            float f10 = i4 + f2;
            float f11 = this.f4237G;
            int i13 = i6 + 1;
            fArr[i6] = f;
            int i14 = i13 + 1;
            fArr[i13] = f2;
            int i15 = i14 + 1;
            fArr[i14] = f11;
            int i16 = i15 + 1;
            fArr[i15] = f4;
            int i17 = i16 + 1;
            fArr[i16] = f6;
            int i18 = i17 + 1;
            fArr[i17] = f;
            int i19 = i18 + 1;
            fArr[i18] = f10;
            int i20 = i19 + 1;
            fArr[i19] = f11;
            int i21 = i20 + 1;
            fArr[i20] = f4;
            int i22 = i21 + 1;
            fArr[i21] = f8;
            int i23 = i22 + 1;
            fArr[i22] = f9;
            int i24 = i23 + 1;
            fArr[i23] = f10;
            int i25 = i24 + 1;
            fArr[i24] = f11;
            int i26 = i25 + 1;
            fArr[i25] = f7;
            int i27 = i26 + 1;
            fArr[i26] = f8;
            int i28 = i27 + 1;
            fArr[i27] = f9;
            int i29 = i28 + 1;
            fArr[i28] = f2;
            int i30 = i29 + 1;
            fArr[i29] = f11;
            int i31 = i30 + 1;
            fArr[i30] = f7;
            fArr[i31] = f6;
            this.f4241k = i31 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k;
            int i3 = i2 / 5;
            int i4 = i + 1;
            short s = (short) i3;
            sArr[i] = s;
            int i5 = i4 + 1;
            sArr[i4] = (short) (i3 + 1);
            int i6 = i5 + 1;
            short s2 = (short) (i3 + 2);
            sArr[i5] = s2;
            int i7 = i6 + 1;
            sArr[i6] = s2;
            int i8 = i7 + 1;
            sArr[i7] = (short) (i3 + 3);
            sArr[i8] = s;
            this.f4242p = i8 + 1;
            float f9 = f + f3;
            float f10 = f2 + f4;
            float f11 = this.f4237G;
            int i9 = i2 + 1;
            fArr[i2] = f;
            int i10 = i9 + 1;
            fArr[i9] = f2;
            int i11 = i10 + 1;
            fArr[i10] = f11;
            int i12 = i11 + 1;
            fArr[i11] = f5;
            int i13 = i12 + 1;
            fArr[i12] = f6;
            int i14 = i13 + 1;
            fArr[i13] = f;
            int i15 = i14 + 1;
            fArr[i14] = f10;
            int i16 = i15 + 1;
            fArr[i15] = f11;
            int i17 = i16 + 1;
            fArr[i16] = f5;
            int i18 = i17 + 1;
            fArr[i17] = f8;
            int i19 = i18 + 1;
            fArr[i18] = f9;
            int i20 = i19 + 1;
            fArr[i19] = f10;
            int i21 = i20 + 1;
            fArr[i20] = f11;
            int i22 = i21 + 1;
            fArr[i21] = f7;
            int i23 = i22 + 1;
            fArr[i22] = f8;
            int i24 = i23 + 1;
            fArr[i23] = f9;
            int i25 = i24 + 1;
            fArr[i24] = f2;
            int i26 = i25 + 1;
            fArr[i25] = f11;
            int i27 = i26 + 1;
            fArr[i26] = f7;
            fArr[i27] = f6;
            this.f4241k = i27 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2) {
        draw(texture, f, f2, texture.getWidth(), texture.getHeight());
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k;
            int i3 = i2 / 5;
            int i4 = i + 1;
            short s = (short) i3;
            sArr[i] = s;
            int i5 = i4 + 1;
            sArr[i4] = (short) (i3 + 1);
            int i6 = i5 + 1;
            short s2 = (short) (i3 + 2);
            sArr[i5] = s2;
            int i7 = i6 + 1;
            sArr[i6] = s2;
            int i8 = i7 + 1;
            sArr[i7] = (short) (i3 + 3);
            sArr[i8] = s;
            this.f4242p = i8 + 1;
            float f5 = f3 + f;
            float f6 = f4 + f2;
            float f7 = this.f4237G;
            int i9 = i2 + 1;
            fArr[i2] = f;
            int i10 = i9 + 1;
            fArr[i9] = f2;
            int i11 = i10 + 1;
            fArr[i10] = f7;
            int i12 = i11 + 1;
            fArr[i11] = 0.0f;
            int i13 = i12 + 1;
            fArr[i12] = 1.0f;
            int i14 = i13 + 1;
            fArr[i13] = f;
            int i15 = i14 + 1;
            fArr[i14] = f6;
            int i16 = i15 + 1;
            fArr[i15] = f7;
            int i17 = i16 + 1;
            fArr[i16] = 0.0f;
            int i18 = i17 + 1;
            fArr[i17] = 0.0f;
            int i19 = i18 + 1;
            fArr[i18] = f5;
            int i20 = i19 + 1;
            fArr[i19] = f6;
            int i21 = i20 + 1;
            fArr[i20] = f7;
            int i22 = i21 + 1;
            fArr[i21] = 1.0f;
            int i23 = i22 + 1;
            fArr[i22] = 0.0f;
            int i24 = i23 + 1;
            fArr[i23] = f5;
            int i25 = i24 + 1;
            fArr[i24] = f2;
            int i26 = i25 + 1;
            fArr[i25] = f7;
            int i27 = i26 + 1;
            fArr[i26] = 1.0f;
            fArr[i27] = 1.0f;
            this.f4241k = i27 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b A[LOOP:0: B:16:0x0059->B:17:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b A[SYNTHETIC] */
    @Override // com.badlogic.gdx.graphics.g2d.Batch
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(com.badlogic.gdx.graphics.Texture r9, float[] r10, int r11, int r12) {
        /*
            r8 = this;
            boolean r0 = r8.f4246t
            if (r0 == 0) goto La1
            short[] r0 = r8.f4240d
            float[] r1 = r8.f4239b
            int r2 = r12 / 20
            int r2 = r2 * 6
            com.badlogic.gdx.graphics.Texture r3 = r8.f4243q
            if (r9 == r3) goto L2a
            r8.m24190b(r9)
            int r9 = r1.length
            int r2 = r1.length
            int r2 = r2 % 20
            int r9 = r9 - r2
            int r9 = java.lang.Math.min(r12, r9)
            int r2 = r0.length
            int r2 = r2 / 6
            int r2 = r2 * 20
            int r9 = java.lang.Math.min(r9, r2)
            int r2 = r9 / 20
        L27:
            int r2 = r2 * 6
            goto L51
        L2a:
            int r9 = r8.f4242p
            int r9 = r9 + r2
            int r3 = r0.length
            if (r9 > r3) goto L39
            int r9 = r8.f4241k
            int r9 = r9 + r12
            int r3 = r1.length
            if (r9 <= r3) goto L37
            goto L39
        L37:
            r9 = r12
            goto L51
        L39:
            r8.flush()
            int r9 = r1.length
            int r2 = r1.length
            int r2 = r2 % 20
            int r9 = r9 - r2
            int r9 = java.lang.Math.min(r12, r9)
            int r2 = r0.length
            int r2 = r2 / 6
            int r2 = r2 * 20
            int r9 = java.lang.Math.min(r9, r2)
            int r2 = r9 / 20
            goto L27
        L51:
            int r3 = r8.f4241k
            int r4 = r3 / 5
            short r4 = (short) r4
            int r5 = r8.f4242p
            int r2 = r2 + r5
        L59:
            if (r5 >= r2) goto L80
            r0[r5] = r4
            int r6 = r5 + 1
            int r7 = r4 + 1
            short r7 = (short) r7
            r0[r6] = r7
            int r6 = r5 + 2
            int r7 = r4 + 2
            short r7 = (short) r7
            r0[r6] = r7
            int r6 = r5 + 3
            r0[r6] = r7
            int r6 = r5 + 4
            int r7 = r4 + 3
            short r7 = (short) r7
            r0[r6] = r7
            int r6 = r5 + 5
            r0[r6] = r4
            int r5 = r5 + 6
            int r4 = r4 + 4
            short r4 = (short) r4
            goto L59
        L80:
            java.lang.System.arraycopy(r10, r11, r1, r3, r9)
            int r3 = r3 + r9
            r8.f4241k = r3
            r8.f4242p = r5
            int r12 = r12 - r9
            if (r12 != 0) goto L8c
            return
        L8c:
            int r11 = r11 + r9
            r8.flush()
            r3 = 0
            if (r9 <= r12) goto L80
            int r9 = r0.length
            int r9 = r9 / 6
            int r9 = r9 * 20
            int r9 = java.lang.Math.min(r12, r9)
            int r2 = r9 / 20
            int r5 = r2 * 6
            goto L80
        La1:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "PolygonSpriteBatch.begin must be called before draw."
            r9.<init>(r10)
            goto Laa
        La9:
            throw r9
        Laa:
            goto La9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.PolygonSpriteBatch.draw(com.badlogic.gdx.graphics.Texture, float[], int, int):void");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2) {
        draw(textureRegion, f, f2, textureRegion.getRegionWidth(), textureRegion.getRegionHeight());
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k;
            int i3 = i2 / 5;
            int i4 = i + 1;
            short s = (short) i3;
            sArr[i] = s;
            int i5 = i4 + 1;
            sArr[i4] = (short) (i3 + 1);
            int i6 = i5 + 1;
            short s2 = (short) (i3 + 2);
            sArr[i5] = s2;
            int i7 = i6 + 1;
            sArr[i6] = s2;
            int i8 = i7 + 1;
            sArr[i7] = (short) (i3 + 3);
            sArr[i8] = s;
            this.f4242p = i8 + 1;
            float f5 = f3 + f;
            float f6 = f4 + f2;
            float f7 = textureRegion.f4355b;
            float f8 = textureRegion.f4358e;
            float f9 = textureRegion.f4357d;
            float f10 = textureRegion.f4356c;
            float f11 = this.f4237G;
            int i9 = i2 + 1;
            fArr[i2] = f;
            int i10 = i9 + 1;
            fArr[i9] = f2;
            int i11 = i10 + 1;
            fArr[i10] = f11;
            int i12 = i11 + 1;
            fArr[i11] = f7;
            int i13 = i12 + 1;
            fArr[i12] = f8;
            int i14 = i13 + 1;
            fArr[i13] = f;
            int i15 = i14 + 1;
            fArr[i14] = f6;
            int i16 = i15 + 1;
            fArr[i15] = f11;
            int i17 = i16 + 1;
            fArr[i16] = f7;
            int i18 = i17 + 1;
            fArr[i17] = f10;
            int i19 = i18 + 1;
            fArr[i18] = f5;
            int i20 = i19 + 1;
            fArr[i19] = f6;
            int i21 = i20 + 1;
            fArr[i20] = f11;
            int i22 = i21 + 1;
            fArr[i21] = f9;
            int i23 = i22 + 1;
            fArr[i22] = f10;
            int i24 = i23 + 1;
            fArr[i23] = f5;
            int i25 = i24 + 1;
            fArr[i24] = f2;
            int i26 = i25 + 1;
            fArr[i25] = f11;
            int i27 = i26 + 1;
            fArr[i26] = f9;
            fArr[i27] = f8;
            this.f4241k = i27 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k / 5;
            int i3 = i + 1;
            short s = (short) i2;
            sArr[i] = s;
            int i4 = i3 + 1;
            sArr[i3] = (short) (i2 + 1);
            int i5 = i4 + 1;
            short s2 = (short) (i2 + 2);
            sArr[i4] = s2;
            int i6 = i5 + 1;
            sArr[i5] = s2;
            int i7 = i6 + 1;
            sArr[i6] = (short) (i2 + 3);
            sArr[i7] = s;
            this.f4242p = i7 + 1;
            float f17 = f + f3;
            float f18 = f2 + f4;
            float f19 = -f3;
            float f20 = -f4;
            float f21 = f5 - f3;
            float f22 = f6 - f4;
            if (f7 != 1.0f || f8 != 1.0f) {
                f19 *= f7;
                f20 *= f8;
                f21 *= f7;
                f22 *= f8;
            }
            if (f9 != 0.0f) {
                float cosDeg = MathUtils.cosDeg(f9);
                float sinDeg = MathUtils.sinDeg(f9);
                float f23 = cosDeg * f19;
                f11 = f23 - (sinDeg * f20);
                float f24 = f19 * sinDeg;
                float f25 = (f20 * cosDeg) + f24;
                float f26 = sinDeg * f22;
                f10 = f23 - f26;
                float f27 = f22 * cosDeg;
                f14 = f24 + f27;
                float f28 = (cosDeg * f21) - f26;
                float f29 = f27 + (sinDeg * f21);
                f13 = f29 - (f14 - f25);
                f16 = (f28 - f10) + f11;
                f21 = f28;
                f12 = f25;
                f15 = f29;
            } else {
                f10 = f19;
                f11 = f10;
                f12 = f20;
                f13 = f12;
                f14 = f22;
                f15 = f14;
                f16 = f21;
            }
            float f30 = f11 + f17;
            float f31 = f12 + f18;
            float f32 = f10 + f17;
            float f33 = f14 + f18;
            float f34 = f21 + f17;
            float f35 = f15 + f18;
            float f36 = f16 + f17;
            float f37 = f13 + f18;
            float f38 = textureRegion.f4355b;
            float f39 = textureRegion.f4358e;
            float f40 = textureRegion.f4357d;
            float f41 = textureRegion.f4356c;
            float f42 = this.f4237G;
            int i8 = this.f4241k;
            int i9 = i8 + 1;
            fArr[i8] = f30;
            int i10 = i9 + 1;
            fArr[i9] = f31;
            int i11 = i10 + 1;
            fArr[i10] = f42;
            int i12 = i11 + 1;
            fArr[i11] = f38;
            int i13 = i12 + 1;
            fArr[i12] = f39;
            int i14 = i13 + 1;
            fArr[i13] = f32;
            int i15 = i14 + 1;
            fArr[i14] = f33;
            int i16 = i15 + 1;
            fArr[i15] = f42;
            int i17 = i16 + 1;
            fArr[i16] = f38;
            int i18 = i17 + 1;
            fArr[i17] = f41;
            int i19 = i18 + 1;
            fArr[i18] = f34;
            int i20 = i19 + 1;
            fArr[i19] = f35;
            int i21 = i20 + 1;
            fArr[i20] = f42;
            int i22 = i21 + 1;
            fArr[i21] = f40;
            int i23 = i22 + 1;
            fArr[i22] = f41;
            int i24 = i23 + 1;
            fArr[i23] = f36;
            int i25 = i24 + 1;
            fArr[i24] = f37;
            int i26 = i25 + 1;
            fArr[i25] = f42;
            int i27 = i26 + 1;
            fArr[i26] = f40;
            fArr[i27] = f39;
            this.f4241k = i27 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, boolean z) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k / 5;
            int i3 = i + 1;
            short s = (short) i2;
            sArr[i] = s;
            int i4 = i3 + 1;
            sArr[i3] = (short) (i2 + 1);
            int i5 = i4 + 1;
            short s2 = (short) (i2 + 2);
            sArr[i4] = s2;
            int i6 = i5 + 1;
            sArr[i5] = s2;
            int i7 = i6 + 1;
            sArr[i6] = (short) (i2 + 3);
            sArr[i7] = s;
            this.f4242p = i7 + 1;
            float f21 = f + f3;
            float f22 = f2 + f4;
            float f23 = -f3;
            float f24 = -f4;
            float f25 = f5 - f3;
            float f26 = f6 - f4;
            if (f7 != 1.0f || f8 != 1.0f) {
                f23 *= f7;
                f24 *= f8;
                f25 *= f7;
                f26 *= f8;
            }
            if (f9 != 0.0f) {
                float cosDeg = MathUtils.cosDeg(f9);
                float sinDeg = MathUtils.sinDeg(f9);
                float f27 = cosDeg * f23;
                f11 = f27 - (sinDeg * f24);
                float f28 = f23 * sinDeg;
                float f29 = (f24 * cosDeg) + f28;
                float f30 = sinDeg * f26;
                f10 = f27 - f30;
                float f31 = f26 * cosDeg;
                f14 = f28 + f31;
                float f32 = (cosDeg * f25) - f30;
                float f33 = f31 + (sinDeg * f25);
                f13 = f33 - (f14 - f29);
                f16 = (f32 - f10) + f11;
                f25 = f32;
                f12 = f29;
                f15 = f33;
            } else {
                f10 = f23;
                f11 = f10;
                f12 = f24;
                f13 = f12;
                f14 = f26;
                f15 = f14;
                f16 = f25;
            }
            float f34 = f11 + f21;
            float f35 = f12 + f22;
            float f36 = f10 + f21;
            float f37 = f14 + f22;
            float f38 = f25 + f21;
            float f39 = f15 + f22;
            float f40 = f16 + f21;
            float f41 = f13 + f22;
            if (z) {
                f17 = textureRegion.f4357d;
                f18 = textureRegion.f4358e;
                f19 = textureRegion.f4355b;
                f20 = textureRegion.f4356c;
            } else {
                f17 = textureRegion.f4355b;
                f18 = textureRegion.f4356c;
                f19 = textureRegion.f4357d;
                f20 = textureRegion.f4358e;
            }
            float f42 = f20;
            float f43 = f18;
            float f44 = f19;
            float f45 = f17;
            float f46 = this.f4237G;
            int i8 = this.f4241k;
            int i9 = i8 + 1;
            fArr[i8] = f34;
            int i10 = i9 + 1;
            fArr[i9] = f35;
            int i11 = i10 + 1;
            fArr[i10] = f46;
            int i12 = i11 + 1;
            fArr[i11] = f45;
            int i13 = i12 + 1;
            fArr[i12] = f43;
            int i14 = i13 + 1;
            fArr[i13] = f36;
            int i15 = i14 + 1;
            fArr[i14] = f37;
            int i16 = i15 + 1;
            fArr[i15] = f46;
            int i17 = i16 + 1;
            fArr[i16] = f44;
            int i18 = i17 + 1;
            fArr[i17] = f43;
            int i19 = i18 + 1;
            fArr[i18] = f38;
            int i20 = i19 + 1;
            fArr[i19] = f39;
            int i21 = i20 + 1;
            fArr[i20] = f46;
            int i22 = i21 + 1;
            fArr[i21] = f44;
            int i23 = i22 + 1;
            fArr[i22] = f20;
            int i24 = i23 + 1;
            fArr[i23] = f40;
            int i25 = i24 + 1;
            fArr[i24] = f41;
            int i26 = i25 + 1;
            fArr[i25] = f46;
            int i27 = i26 + 1;
            fArr[i26] = f45;
            fArr[i27] = f42;
            this.f4241k = i27 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, Affine2 affine2) {
        if (this.f4246t) {
            short[] sArr = this.f4240d;
            float[] fArr = this.f4239b;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4243q) {
                m24190b(texture);
            } else if (this.f4242p + 6 > sArr.length || this.f4241k + 20 > fArr.length) {
                flush();
            }
            int i = this.f4242p;
            int i2 = this.f4241k;
            int i3 = i2 / 5;
            int i4 = i + 1;
            short s = (short) i3;
            sArr[i] = s;
            int i5 = i4 + 1;
            sArr[i4] = (short) (i3 + 1);
            int i6 = i5 + 1;
            short s2 = (short) (i3 + 2);
            sArr[i5] = s2;
            int i7 = i6 + 1;
            sArr[i6] = s2;
            int i8 = i7 + 1;
            sArr[i7] = (short) (i3 + 3);
            sArr[i8] = s;
            this.f4242p = i8 + 1;
            float f3 = affine2.m02;
            float f4 = affine2.m12;
            float f5 = affine2.m01;
            float f6 = (f5 * f2) + f3;
            float f7 = affine2.m11;
            float f8 = (f7 * f2) + f4;
            float f9 = affine2.m00;
            float f10 = (f9 * f) + (f5 * f2) + f3;
            float f11 = affine2.m10;
            float f12 = (f11 * f) + (f7 * f2) + f4;
            float f13 = (f9 * f) + f3;
            float f14 = (f11 * f) + f4;
            float f15 = textureRegion.f4355b;
            float f16 = textureRegion.f4358e;
            float f17 = textureRegion.f4357d;
            float f18 = textureRegion.f4356c;
            float f19 = this.f4237G;
            int i9 = i2 + 1;
            fArr[i2] = f3;
            int i10 = i9 + 1;
            fArr[i9] = f4;
            int i11 = i10 + 1;
            fArr[i10] = f19;
            int i12 = i11 + 1;
            fArr[i11] = f15;
            int i13 = i12 + 1;
            fArr[i12] = f16;
            int i14 = i13 + 1;
            fArr[i13] = f6;
            int i15 = i14 + 1;
            fArr[i14] = f8;
            int i16 = i15 + 1;
            fArr[i15] = f19;
            int i17 = i16 + 1;
            fArr[i16] = f15;
            int i18 = i17 + 1;
            fArr[i17] = f18;
            int i19 = i18 + 1;
            fArr[i18] = f10;
            int i20 = i19 + 1;
            fArr[i19] = f12;
            int i21 = i20 + 1;
            fArr[i20] = f19;
            int i22 = i21 + 1;
            fArr[i21] = f17;
            int i23 = i22 + 1;
            fArr[i22] = f18;
            int i24 = i23 + 1;
            fArr[i23] = f13;
            int i25 = i24 + 1;
            fArr[i24] = f14;
            int i26 = i25 + 1;
            fArr[i25] = f19;
            int i27 = i26 + 1;
            fArr[i26] = f17;
            fArr[i27] = f16;
            this.f4241k = i27 + 1;
            return;
        }
        throw new IllegalStateException("PolygonSpriteBatch.begin must be called before draw.");
    }
}
