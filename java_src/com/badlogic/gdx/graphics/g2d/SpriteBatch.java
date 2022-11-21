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
import com.prineside.tdi2.tiles.CoreTile;
/* loaded from: classes.dex */
public class SpriteBatch implements Batch {
    @Deprecated
    public static Mesh.VertexDataType defaultVertexDataType = Mesh.VertexDataType.VertexArray;

    /* renamed from: A */
    public final ShaderProgram f4279A;

    /* renamed from: B */
    public ShaderProgram f4280B;

    /* renamed from: C */
    public boolean f4281C;

    /* renamed from: D */
    public final Color f4282D;

    /* renamed from: E */
    public float f4283E;

    /* renamed from: a */
    public Mesh f4284a;

    /* renamed from: b */
    public final float[] f4285b;

    /* renamed from: d */
    public int f4286d;

    /* renamed from: k */
    public Texture f4287k;
    public int maxSpritesInBatch;

    /* renamed from: p */
    public float f4288p;

    /* renamed from: q */
    public float f4289q;

    /* renamed from: r */
    public boolean f4290r;
    public int renderCalls;

    /* renamed from: s */
    public final Matrix4 f4291s;

    /* renamed from: t */
    public final Matrix4 f4292t;
    public int totalRenderCalls;

    /* renamed from: u */
    public final Matrix4 f4293u;

    /* renamed from: v */
    public boolean f4294v;

    /* renamed from: w */
    public int f4295w;

    /* renamed from: x */
    public int f4296x;

    /* renamed from: y */
    public int f4297y;

    /* renamed from: z */
    public int f4298z;

    public SpriteBatch() {
        this(CoreTile.FIXED_LEVEL_XP_REQUIREMENT, null);
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
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
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
            float f38 = this.f4288p;
            float f39 = i * f38;
            float f40 = this.f4289q;
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
            float f44 = this.f4283E;
            int i5 = this.f4286d;
            fArr[i5] = f30;
            fArr[i5 + 1] = f31;
            fArr[i5 + 2] = f44;
            fArr[i5 + 3] = f39;
            fArr[i5 + 4] = f41;
            fArr[i5 + 5] = f32;
            fArr[i5 + 6] = f33;
            fArr[i5 + 7] = f44;
            fArr[i5 + 8] = f39;
            fArr[i5 + 9] = f43;
            fArr[i5 + 10] = f34;
            fArr[i5 + 11] = f35;
            fArr[i5 + 12] = f44;
            fArr[i5 + 13] = f42;
            fArr[i5 + 14] = f43;
            fArr[i5 + 15] = f36;
            fArr[i5 + 16] = f37;
            fArr[i5 + 17] = f44;
            fArr[i5 + 18] = f42;
            fArr[i5 + 19] = f41;
            this.f4286d = i5 + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public int getBlendDstFunc() {
        return this.f4296x;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public int getBlendDstFuncAlpha() {
        return this.f4298z;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public int getBlendSrcFunc() {
        return this.f4295w;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public int getBlendSrcFuncAlpha() {
        return this.f4297y;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public Color getColor() {
        return this.f4282D;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public float getPackedColor() {
        return this.f4283E;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public Matrix4 getProjectionMatrix() {
        return this.f4292t;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public Matrix4 getTransformMatrix() {
        return this.f4291s;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public boolean isBlendingEnabled() {
        return !this.f4294v;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public boolean isDrawing() {
        return this.f4290r;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setBlendFunction(int i, int i2) {
        setBlendFunctionSeparate(i, i2, i, i2);
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setColor(Color color) {
        this.f4282D.set(color);
        this.f4283E = color.toFloatBits();
    }

    public SpriteBatch(int i) {
        this(i, null);
    }

    public static ShaderProgram createDefaultShader() {
        ShaderProgram shaderProgram = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n", "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP \n#endif\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}");
        if (shaderProgram.isCompiled()) {
            return shaderProgram;
        }
        throw new IllegalArgumentException("Error compiling shader: " + shaderProgram.getLog());
    }

    /* renamed from: a */
    public void m24186a() {
        this.f4293u.set(this.f4292t).mul(this.f4291s);
        ShaderProgram shaderProgram = this.f4280B;
        if (shaderProgram != null) {
            shaderProgram.setUniformMatrix("u_projTrans", this.f4293u);
            this.f4280B.setUniformi("u_texture", 0);
            return;
        }
        this.f4279A.setUniformMatrix("u_projTrans", this.f4293u);
        this.f4279A.setUniformi("u_texture", 0);
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void begin() {
        if (!this.f4290r) {
            this.renderCalls = 0;
            Gdx.f3119gl.glDepthMask(false);
            ShaderProgram shaderProgram = this.f4280B;
            if (shaderProgram != null) {
                shaderProgram.bind();
            } else {
                this.f4279A.bind();
            }
            m24186a();
            this.f4290r = true;
            return;
        }
        throw new IllegalStateException("SpriteBatch.end must be called before begin.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void disableBlending() {
        if (this.f4294v) {
            return;
        }
        flush();
        this.f4294v = true;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        ShaderProgram shaderProgram;
        this.f4284a.dispose();
        if (this.f4281C && (shaderProgram = this.f4279A) != null) {
            shaderProgram.dispose();
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void enableBlending() {
        if (!this.f4294v) {
            return;
        }
        flush();
        this.f4294v = false;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void end() {
        if (this.f4290r) {
            if (this.f4286d > 0) {
                flush();
            }
            this.f4287k = null;
            this.f4290r = false;
            GL20 gl20 = Gdx.f3119gl;
            gl20.glDepthMask(true);
            if (isBlendingEnabled()) {
                gl20.glDisable(GL20.GL_BLEND);
                return;
            }
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before end.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void flush() {
        int i = this.f4286d;
        if (i == 0) {
            return;
        }
        this.renderCalls++;
        this.totalRenderCalls++;
        int i2 = i / 20;
        if (i2 > this.maxSpritesInBatch) {
            this.maxSpritesInBatch = i2;
        }
        int i3 = i2 * 6;
        this.f4287k.bind();
        Mesh mesh = this.f4284a;
        mesh.setVertices(this.f4285b, 0, this.f4286d);
        mesh.getIndicesBuffer().position(0);
        mesh.getIndicesBuffer().limit(i3);
        if (this.f4294v) {
            Gdx.f3119gl.glDisable(GL20.GL_BLEND);
        } else {
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            int i4 = this.f4295w;
            if (i4 != -1) {
                Gdx.f3119gl.glBlendFuncSeparate(i4, this.f4296x, this.f4297y, this.f4298z);
            }
        }
        ShaderProgram shaderProgram = this.f4280B;
        if (shaderProgram == null) {
            shaderProgram = this.f4279A;
        }
        mesh.render(shaderProgram, 4, 0, i3);
        this.f4286d = 0;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public ShaderProgram getShader() {
        ShaderProgram shaderProgram = this.f4280B;
        if (shaderProgram == null) {
            return this.f4279A;
        }
        return shaderProgram;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setBlendFunctionSeparate(int i, int i2, int i3, int i4) {
        if (this.f4295w == i && this.f4296x == i2 && this.f4297y == i3 && this.f4298z == i4) {
            return;
        }
        flush();
        this.f4295w = i;
        this.f4296x = i2;
        this.f4297y = i3;
        this.f4298z = i4;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setPackedColor(float f) {
        Color.abgr8888ToColor(this.f4282D, f);
        this.f4283E = f;
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setProjectionMatrix(Matrix4 matrix4) {
        if (this.f4290r) {
            flush();
        }
        this.f4292t.set(matrix4);
        if (this.f4290r) {
            m24186a();
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setShader(ShaderProgram shaderProgram) {
        if (this.f4290r) {
            flush();
        }
        this.f4280B = shaderProgram;
        if (this.f4290r) {
            if (shaderProgram != null) {
                shaderProgram.bind();
            } else {
                this.f4279A.bind();
            }
            m24186a();
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setTransformMatrix(Matrix4 matrix4) {
        if (this.f4290r) {
            flush();
        }
        this.f4291s.set(matrix4);
        if (this.f4290r) {
            m24186a();
        }
    }

    public SpriteBatch(int i, ShaderProgram shaderProgram) {
        this.f4286d = 0;
        this.f4287k = null;
        this.f4288p = 0.0f;
        this.f4289q = 0.0f;
        this.f4290r = false;
        this.f4291s = new Matrix4();
        Matrix4 matrix4 = new Matrix4();
        this.f4292t = matrix4;
        this.f4293u = new Matrix4();
        this.f4294v = false;
        this.f4295w = GL20.GL_SRC_ALPHA;
        this.f4296x = GL20.GL_ONE_MINUS_SRC_ALPHA;
        this.f4297y = GL20.GL_SRC_ALPHA;
        this.f4298z = GL20.GL_ONE_MINUS_SRC_ALPHA;
        this.f4280B = null;
        this.f4282D = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4283E = Color.WHITE_FLOAT_BITS;
        this.renderCalls = 0;
        this.totalRenderCalls = 0;
        this.maxSpritesInBatch = 0;
        if (i <= 8191) {
            int i2 = i * 6;
            this.f4284a = new Mesh(Gdx.gl30 != null ? Mesh.VertexDataType.VertexBufferObjectWithVAO : defaultVertexDataType, false, i * 4, i2, new VertexAttribute(1, 2, ShaderProgram.POSITION_ATTRIBUTE), new VertexAttribute(4, 4, ShaderProgram.COLOR_ATTRIBUTE), new VertexAttribute(16, 2, "a_texCoord0"));
            matrix4.setToOrtho2D(0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
            this.f4285b = new float[i * 20];
            short[] sArr = new short[i2];
            int i3 = 0;
            short s = 0;
            while (i3 < i2) {
                sArr[i3] = s;
                sArr[i3 + 1] = (short) (s + 1);
                short s2 = (short) (s + 2);
                sArr[i3 + 2] = s2;
                sArr[i3 + 3] = s2;
                sArr[i3 + 4] = (short) (s + 3);
                sArr[i3 + 5] = s;
                i3 += 6;
                s = (short) (s + 4);
            }
            this.f4284a.setIndices(sArr);
            if (shaderProgram == null) {
                this.f4279A = createDefaultShader();
                this.f4281C = true;
                return;
            }
            this.f4279A = shaderProgram;
            return;
        }
        throw new IllegalArgumentException("Can't have more than 8191 sprites per batch: " + i);
    }

    /* renamed from: b */
    public void m24185b(Texture texture) {
        flush();
        this.f4287k = texture;
        this.f4288p = 1.0f / texture.getWidth();
        this.f4289q = 1.0f / texture.getHeight();
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void setColor(float f, float f2, float f3, float f4) {
        this.f4282D.set(f, f2, f3, f4);
        this.f4283E = this.f4282D.toFloatBits();
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
            float f5 = this.f4288p;
            float f6 = i * f5;
            float f7 = this.f4289q;
            float f8 = (i4 + i2) * f7;
            float f9 = (i + i3) * f5;
            float f10 = i2 * f7;
            float f11 = f3 + f;
            float f12 = f4 + f2;
            if (z) {
                f9 = f6;
                f6 = f9;
            }
            if (z2) {
                f8 = f10;
                f10 = f8;
            }
            float f13 = this.f4283E;
            int i5 = this.f4286d;
            fArr[i5] = f;
            fArr[i5 + 1] = f2;
            fArr[i5 + 2] = f13;
            fArr[i5 + 3] = f6;
            fArr[i5 + 4] = f8;
            fArr[i5 + 5] = f;
            fArr[i5 + 6] = f12;
            fArr[i5 + 7] = f13;
            fArr[i5 + 8] = f6;
            fArr[i5 + 9] = f10;
            fArr[i5 + 10] = f11;
            fArr[i5 + 11] = f12;
            fArr[i5 + 12] = f13;
            fArr[i5 + 13] = f9;
            fArr[i5 + 14] = f10;
            fArr[i5 + 15] = f11;
            fArr[i5 + 16] = f2;
            fArr[i5 + 17] = f13;
            fArr[i5 + 18] = f9;
            fArr[i5 + 19] = f8;
            this.f4286d = i5 + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, int i, int i2, int i3, int i4) {
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
            float f3 = this.f4288p;
            float f4 = i * f3;
            float f5 = this.f4289q;
            float f6 = (i2 + i4) * f5;
            float f7 = (i + i3) * f3;
            float f8 = i2 * f5;
            float f9 = i3 + f;
            float f10 = i4 + f2;
            float f11 = this.f4283E;
            int i5 = this.f4286d;
            fArr[i5] = f;
            fArr[i5 + 1] = f2;
            fArr[i5 + 2] = f11;
            fArr[i5 + 3] = f4;
            fArr[i5 + 4] = f6;
            fArr[i5 + 5] = f;
            fArr[i5 + 6] = f10;
            fArr[i5 + 7] = f11;
            fArr[i5 + 8] = f4;
            fArr[i5 + 9] = f8;
            fArr[i5 + 10] = f9;
            fArr[i5 + 11] = f10;
            fArr[i5 + 12] = f11;
            fArr[i5 + 13] = f7;
            fArr[i5 + 14] = f8;
            fArr[i5 + 15] = f9;
            fArr[i5 + 16] = f2;
            fArr[i5 + 17] = f11;
            fArr[i5 + 18] = f7;
            fArr[i5 + 19] = f6;
            this.f4286d = i5 + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
            float f9 = f3 + f;
            float f10 = f4 + f2;
            float f11 = this.f4283E;
            int i = this.f4286d;
            fArr[i] = f;
            fArr[i + 1] = f2;
            fArr[i + 2] = f11;
            fArr[i + 3] = f5;
            fArr[i + 4] = f6;
            fArr[i + 5] = f;
            fArr[i + 6] = f10;
            fArr[i + 7] = f11;
            fArr[i + 8] = f5;
            fArr[i + 9] = f8;
            fArr[i + 10] = f9;
            fArr[i + 11] = f10;
            fArr[i + 12] = f11;
            fArr[i + 13] = f7;
            fArr[i + 14] = f8;
            fArr[i + 15] = f9;
            fArr[i + 16] = f2;
            fArr[i + 17] = f11;
            fArr[i + 18] = f7;
            fArr[i + 19] = f6;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2) {
        draw(texture, f, f2, texture.getWidth(), texture.getHeight());
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4) {
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
            float f5 = f3 + f;
            float f6 = f4 + f2;
            float f7 = this.f4283E;
            int i = this.f4286d;
            fArr[i] = f;
            fArr[i + 1] = f2;
            fArr[i + 2] = f7;
            fArr[i + 3] = 0.0f;
            fArr[i + 4] = 1.0f;
            fArr[i + 5] = f;
            fArr[i + 6] = f6;
            fArr[i + 7] = f7;
            fArr[i + 8] = 0.0f;
            fArr[i + 9] = 0.0f;
            fArr[i + 10] = f5;
            fArr[i + 11] = f6;
            fArr[i + 12] = f7;
            fArr[i + 13] = 1.0f;
            fArr[i + 14] = 0.0f;
            fArr[i + 15] = f5;
            fArr[i + 16] = f2;
            fArr[i + 17] = f7;
            fArr[i + 18] = 1.0f;
            fArr[i + 19] = 1.0f;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c A[LOOP:0: B:12:0x0029->B:14:0x002c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[SYNTHETIC] */
    @Override // com.badlogic.gdx.graphics.g2d.Batch
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(com.badlogic.gdx.graphics.Texture r4, float[] r5, int r6, int r7) {
        /*
            r3 = this;
            boolean r0 = r3.f4290r
            if (r0 == 0) goto L41
            float[] r0 = r3.f4285b
            int r0 = r0.length
            com.badlogic.gdx.graphics.Texture r1 = r3.f4287k
            if (r4 == r1) goto Lf
            r3.m24185b(r4)
            goto L18
        Lf:
            int r4 = r3.f4286d
            int r4 = r0 - r4
            if (r4 != 0) goto L19
            r3.flush()
        L18:
            r4 = r0
        L19:
            int r4 = java.lang.Math.min(r4, r7)
            float[] r1 = r3.f4285b
            int r2 = r3.f4286d
            java.lang.System.arraycopy(r5, r6, r1, r2, r4)
            int r1 = r3.f4286d
            int r1 = r1 + r4
            r3.f4286d = r1
        L29:
            int r7 = r7 - r4
            if (r7 <= 0) goto L40
            int r6 = r6 + r4
            r3.flush()
            int r4 = java.lang.Math.min(r0, r7)
            float[] r1 = r3.f4285b
            r2 = 0
            java.lang.System.arraycopy(r5, r6, r1, r2, r4)
            int r1 = r3.f4286d
            int r1 = r1 + r4
            r3.f4286d = r1
            goto L29
        L40:
            return
        L41:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "SpriteBatch.begin must be called before draw."
            r4.<init>(r5)
            goto L4a
        L49:
            throw r4
        L4a:
            goto L49
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.SpriteBatch.draw(com.badlogic.gdx.graphics.Texture, float[], int, int):void");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2) {
        draw(textureRegion, f, f2, textureRegion.getRegionWidth(), textureRegion.getRegionHeight());
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4) {
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
            float f5 = f3 + f;
            float f6 = f4 + f2;
            float f7 = textureRegion.f4355b;
            float f8 = textureRegion.f4358e;
            float f9 = textureRegion.f4357d;
            float f10 = textureRegion.f4356c;
            float f11 = this.f4283E;
            int i = this.f4286d;
            fArr[i] = f;
            fArr[i + 1] = f2;
            fArr[i + 2] = f11;
            fArr[i + 3] = f7;
            fArr[i + 4] = f8;
            fArr[i + 5] = f;
            fArr[i + 6] = f6;
            fArr[i + 7] = f11;
            fArr[i + 8] = f7;
            fArr[i + 9] = f10;
            fArr[i + 10] = f5;
            fArr[i + 11] = f6;
            fArr[i + 12] = f11;
            fArr[i + 13] = f9;
            fArr[i + 14] = f10;
            fArr[i + 15] = f5;
            fArr[i + 16] = f2;
            fArr[i + 17] = f11;
            fArr[i + 18] = f9;
            fArr[i + 19] = f8;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
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
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
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
            float f42 = this.f4283E;
            int i = this.f4286d;
            fArr[i] = f30;
            fArr[i + 1] = f31;
            fArr[i + 2] = f42;
            fArr[i + 3] = f38;
            fArr[i + 4] = f39;
            fArr[i + 5] = f32;
            fArr[i + 6] = f33;
            fArr[i + 7] = f42;
            fArr[i + 8] = f38;
            fArr[i + 9] = f41;
            fArr[i + 10] = f34;
            fArr[i + 11] = f35;
            fArr[i + 12] = f42;
            fArr[i + 13] = f40;
            fArr[i + 14] = f41;
            fArr[i + 15] = f36;
            fArr[i + 16] = f37;
            fArr[i + 17] = f42;
            fArr[i + 18] = f40;
            fArr[i + 19] = f39;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
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
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
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
            float f42 = f18;
            float f43 = f19;
            float f44 = f17;
            float f45 = this.f4283E;
            int i = this.f4286d;
            fArr[i] = f34;
            fArr[i + 1] = f35;
            fArr[i + 2] = f45;
            fArr[i + 3] = f44;
            fArr[i + 4] = f42;
            fArr[i + 5] = f36;
            fArr[i + 6] = f37;
            fArr[i + 7] = f45;
            fArr[i + 8] = f43;
            fArr[i + 9] = f42;
            fArr[i + 10] = f38;
            fArr[i + 11] = f39;
            fArr[i + 12] = f45;
            fArr[i + 13] = f43;
            fArr[i + 14] = f20;
            fArr[i + 15] = f40;
            fArr[i + 16] = f41;
            fArr[i + 17] = f45;
            fArr[i + 18] = f44;
            fArr[i + 19] = f20;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, Affine2 affine2) {
        if (this.f4290r) {
            float[] fArr = this.f4285b;
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == fArr.length) {
                flush();
            }
            float f3 = affine2.m02;
            float f4 = affine2.m12;
            float f5 = affine2.m01;
            float f6 = (f5 * f2) + f3;
            float f7 = affine2.m11;
            float f8 = affine2.m00;
            float f9 = (f8 * f) + (f5 * f2) + f3;
            float f10 = affine2.m10;
            float f11 = (f8 * f) + f3;
            float f12 = textureRegion.f4355b;
            float f13 = textureRegion.f4358e;
            float f14 = textureRegion.f4357d;
            float f15 = textureRegion.f4356c;
            float f16 = this.f4283E;
            int i = this.f4286d;
            fArr[i] = f3;
            fArr[i + 1] = f4;
            fArr[i + 2] = f16;
            fArr[i + 3] = f12;
            fArr[i + 4] = f13;
            fArr[i + 5] = f6;
            fArr[i + 6] = (f7 * f2) + f4;
            fArr[i + 7] = f16;
            fArr[i + 8] = f12;
            fArr[i + 9] = f15;
            fArr[i + 10] = f9;
            fArr[i + 11] = (f10 * f) + (f7 * f2) + f4;
            fArr[i + 12] = f16;
            fArr[i + 13] = f14;
            fArr[i + 14] = f15;
            fArr[i + 15] = f11;
            fArr[i + 16] = (f10 * f) + f4;
            fArr[i + 17] = f16;
            fArr[i + 18] = f14;
            fArr[i + 19] = f13;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("SpriteBatch.begin must be called before draw.");
    }
}
