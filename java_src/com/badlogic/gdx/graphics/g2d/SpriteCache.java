package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.IntArray;
import com.prineside.tdi2.tiles.CoreTile;
import java.nio.FloatBuffer;
/* loaded from: classes.dex */
public class SpriteCache implements Disposable {

    /* renamed from: y */
    public static final float[] f4299y = new float[30];

    /* renamed from: a */
    public final Mesh f4300a;

    /* renamed from: b */
    public boolean f4301b;

    /* renamed from: d */
    public final Matrix4 f4302d;

    /* renamed from: k */
    public final Matrix4 f4303k;

    /* renamed from: p */
    public Array<Cache> f4304p;

    /* renamed from: q */
    public final Matrix4 f4305q;

    /* renamed from: r */
    public final ShaderProgram f4306r;
    public int renderCalls;

    /* renamed from: s */
    public Cache f4307s;

    /* renamed from: t */
    public final Array<Texture> f4308t;
    public int totalRenderCalls;

    /* renamed from: u */
    public final IntArray f4309u;

    /* renamed from: v */
    public final Color f4310v;

    /* renamed from: w */
    public float f4311w;

    /* renamed from: x */
    public ShaderProgram f4312x;

    public SpriteCache() {
        this(CoreTile.FIXED_LEVEL_XP_REQUIREMENT, false);
    }

    public void add(Texture texture, float[] fArr, int i, int i2) {
        if (this.f4307s != null) {
            int i3 = (i2 / ((this.f4300a.getNumIndices() > 0 ? 4 : 6) * 5)) * 6;
            Array<Texture> array = this.f4308t;
            int i4 = array.size - 1;
            if (i4 >= 0 && array.get(i4) == texture) {
                this.f4309u.incr(i4, i3);
            } else {
                this.f4308t.add(texture);
                this.f4309u.add(i3);
            }
            this.f4300a.getVerticesBuffer().put(fArr, i, i2);
            return;
        }
        throw new IllegalStateException("beginCache must be called before add.");
    }

    public void beginCache() {
        if (!this.f4301b) {
            if (this.f4307s == null) {
                this.f4300a.getNumIndices();
                Cache cache = new Cache(this.f4304p.size, this.f4300a.getVerticesBuffer().limit());
                this.f4307s = cache;
                this.f4304p.add(cache);
                this.f4300a.getVerticesBuffer().compact();
                return;
            }
            throw new IllegalStateException("endCache must be called before begin.");
        }
        throw new IllegalStateException("end must be called before beginCache");
    }

    public void draw(int i) {
        if (this.f4301b) {
            Cache cache = this.f4304p.get(i);
            int i2 = (cache.f4314b / ((this.f4300a.getNumIndices() > 0 ? 4 : 6) * 5)) * 6;
            Texture[] textureArr = cache.f4317e;
            int[] iArr = cache.f4318f;
            int i3 = cache.f4316d;
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = iArr[i4];
                textureArr[i4].bind();
                ShaderProgram shaderProgram = this.f4312x;
                if (shaderProgram != null) {
                    this.f4300a.render(shaderProgram, 4, i2, i5);
                } else {
                    this.f4300a.render(this.f4306r, 4, i2, i5);
                }
                i2 += i5;
            }
            this.renderCalls += i3;
            this.totalRenderCalls += i3;
            return;
        }
        throw new IllegalStateException("SpriteCache.begin must be called before draw.");
    }

    public Color getColor() {
        return this.f4310v;
    }

    public ShaderProgram getCustomShader() {
        return this.f4312x;
    }

    public float getPackedColor() {
        return this.f4311w;
    }

    public Matrix4 getProjectionMatrix() {
        return this.f4303k;
    }

    public Matrix4 getTransformMatrix() {
        return this.f4302d;
    }

    public boolean isDrawing() {
        return this.f4301b;
    }

    public void setColor(Color color) {
        this.f4310v.set(color);
        this.f4311w = color.toFloatBits();
    }

    public void setShader(ShaderProgram shaderProgram) {
        this.f4312x = shaderProgram;
    }

    /* loaded from: classes.dex */
    public static class Cache {

        /* renamed from: a */
        public final int f4313a;

        /* renamed from: b */
        public final int f4314b;

        /* renamed from: c */
        public int f4315c;

        /* renamed from: d */
        public int f4316d;

        /* renamed from: e */
        public Texture[] f4317e;

        /* renamed from: f */
        public int[] f4318f;

        public Cache(int i, int i2) {
            this.f4313a = i;
            this.f4314b = i2;
        }
    }

    public SpriteCache(int i, boolean z) {
        this(i, m24184a(), z);
    }

    /* renamed from: a */
    public static ShaderProgram m24184a() {
        ShaderProgram shaderProgram = new ShaderProgram("attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n", "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}");
        if (shaderProgram.isCompiled()) {
            return shaderProgram;
        }
        throw new IllegalArgumentException("Error compiling shader: " + shaderProgram.getLog());
    }

    public void begin() {
        if (!this.f4301b) {
            if (this.f4307s == null) {
                this.renderCalls = 0;
                this.f4305q.set(this.f4303k).mul(this.f4302d);
                Gdx.gl20.glDepthMask(false);
                ShaderProgram shaderProgram = this.f4312x;
                if (shaderProgram != null) {
                    shaderProgram.bind();
                    this.f4312x.setUniformMatrix("u_proj", this.f4303k);
                    this.f4312x.setUniformMatrix("u_trans", this.f4302d);
                    this.f4312x.setUniformMatrix("u_projTrans", this.f4305q);
                    this.f4312x.setUniformi("u_texture", 0);
                    this.f4300a.bind(this.f4312x);
                } else {
                    this.f4306r.bind();
                    this.f4306r.setUniformMatrix("u_projectionViewMatrix", this.f4305q);
                    this.f4306r.setUniformi("u_texture", 0);
                    this.f4300a.bind(this.f4306r);
                }
                this.f4301b = true;
                return;
            }
            throw new IllegalStateException("endCache must be called before begin");
        }
        throw new IllegalStateException("end must be called before begin.");
    }

    public void clear() {
        this.f4304p.clear();
        this.f4300a.getVerticesBuffer().clear().flip();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f4300a.dispose();
        ShaderProgram shaderProgram = this.f4306r;
        if (shaderProgram != null) {
            shaderProgram.dispose();
        }
    }

    public void end() {
        if (this.f4301b) {
            this.f4301b = false;
            Gdx.gl20.glDepthMask(true);
            ShaderProgram shaderProgram = this.f4312x;
            if (shaderProgram != null) {
                this.f4300a.unbind(shaderProgram);
                return;
            } else {
                this.f4300a.unbind(this.f4306r);
                return;
            }
        }
        throw new IllegalStateException("begin must be called before end.");
    }

    public int endCache() {
        Cache cache = this.f4307s;
        if (cache != null) {
            int position = this.f4300a.getVerticesBuffer().position() - cache.f4314b;
            Texture[] textureArr = cache.f4317e;
            if (textureArr == null) {
                cache.f4315c = position;
                Array<Texture> array = this.f4308t;
                cache.f4316d = array.size;
                cache.f4317e = (Texture[]) array.toArray(Texture.class);
                cache.f4318f = new int[cache.f4316d];
                int i = this.f4309u.size;
                for (int i2 = 0; i2 < i; i2++) {
                    cache.f4318f[i2] = this.f4309u.get(i2);
                }
                this.f4300a.getVerticesBuffer().flip();
            } else if (position <= cache.f4315c) {
                int i3 = this.f4308t.size;
                cache.f4316d = i3;
                if (textureArr.length < i3) {
                    cache.f4317e = new Texture[i3];
                }
                for (int i4 = 0; i4 < i3; i4++) {
                    cache.f4317e[i4] = this.f4308t.get(i4);
                }
                int length = cache.f4318f.length;
                int i5 = cache.f4316d;
                if (length < i5) {
                    cache.f4318f = new int[i5];
                }
                for (int i6 = 0; i6 < i5; i6++) {
                    cache.f4318f[i6] = this.f4309u.get(i6);
                }
                FloatBuffer verticesBuffer = this.f4300a.getVerticesBuffer();
                verticesBuffer.position(0);
                Array<Cache> array2 = this.f4304p;
                Cache cache2 = array2.get(array2.size - 1);
                verticesBuffer.limit(cache2.f4314b + cache2.f4315c);
            } else {
                throw new GdxRuntimeException("If a cache is not the last created, it cannot be redefined with more entries than when it was first created: " + position + " (" + cache.f4315c + " max)");
            }
            this.f4307s = null;
            this.f4308t.clear();
            this.f4309u.clear();
            return cache.f4313a;
        }
        throw new IllegalStateException("beginCache must be called before endCache.");
    }

    public void setPackedColor(float f) {
        Color.abgr8888ToColor(this.f4310v, f);
        this.f4311w = f;
    }

    public void setProjectionMatrix(Matrix4 matrix4) {
        if (!this.f4301b) {
            this.f4303k.set(matrix4);
            return;
        }
        throw new IllegalStateException("Can't set the matrix within begin/end.");
    }

    public void setTransformMatrix(Matrix4 matrix4) {
        if (!this.f4301b) {
            this.f4302d.set(matrix4);
            return;
        }
        throw new IllegalStateException("Can't set the matrix within begin/end.");
    }

    public SpriteCache(int i, ShaderProgram shaderProgram, boolean z) {
        this.f4302d = new Matrix4();
        this.f4303k = new Matrix4();
        this.f4304p = new Array<>();
        this.f4305q = new Matrix4();
        this.f4308t = new Array<>(8);
        this.f4309u = new IntArray(8);
        this.f4310v = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f4311w = Color.WHITE_FLOAT_BITS;
        this.f4312x = null;
        int i2 = 0;
        this.renderCalls = 0;
        this.totalRenderCalls = 0;
        this.f4306r = shaderProgram;
        if (z && i > 8191) {
            throw new IllegalArgumentException("Can't have more than 8191 sprites per batch: " + i);
        }
        Mesh mesh = new Mesh(true, (z ? 4 : 6) * i, z ? i * 6 : 0, new VertexAttribute(1, 2, ShaderProgram.POSITION_ATTRIBUTE), new VertexAttribute(4, 4, ShaderProgram.COLOR_ATTRIBUTE), new VertexAttribute(16, 2, "a_texCoord0"));
        this.f4300a = mesh;
        mesh.setAutoBind(false);
        if (z) {
            int i3 = i * 6;
            short[] sArr = new short[i3];
            short s = 0;
            while (i2 < i3) {
                sArr[i2 + 0] = s;
                sArr[i2 + 1] = (short) (s + 1);
                short s2 = (short) (s + 2);
                sArr[i2 + 2] = s2;
                sArr[i2 + 3] = s2;
                sArr[i2 + 4] = (short) (s + 3);
                sArr[i2 + 5] = s;
                i2 += 6;
                s = (short) (s + 4);
            }
            this.f4300a.setIndices(sArr);
        }
        this.f4303k.setToOrtho2D(0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f4310v.set(f, f2, f3, f4);
        this.f4311w = this.f4310v.toFloatBits();
    }

    public void beginCache(int i) {
        if (!this.f4301b) {
            if (this.f4307s == null) {
                Array<Cache> array = this.f4304p;
                if (i == array.size - 1) {
                    this.f4300a.getVerticesBuffer().limit(array.removeIndex(i).f4314b);
                    beginCache();
                    return;
                }
                this.f4307s = array.get(i);
                this.f4300a.getVerticesBuffer().position(this.f4307s.f4314b);
                return;
            }
            throw new IllegalStateException("endCache must be called before begin.");
        }
        throw new IllegalStateException("end must be called before beginCache");
    }

    public void add(Texture texture, float f, float f2) {
        float width = f + texture.getWidth();
        float height = f2 + texture.getHeight();
        float[] fArr = f4299y;
        fArr[0] = f;
        fArr[1] = f2;
        float f3 = this.f4311w;
        fArr[2] = f3;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = f;
        fArr[6] = height;
        fArr[7] = f3;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = width;
        fArr[11] = height;
        fArr[12] = f3;
        fArr[13] = 1.0f;
        fArr[14] = 0.0f;
        if (this.f4300a.getNumIndices() > 0) {
            fArr[15] = width;
            fArr[16] = f2;
            fArr[17] = this.f4311w;
            fArr[18] = 1.0f;
            fArr[19] = 1.0f;
            add(texture, fArr, 0, 20);
            return;
        }
        fArr[15] = width;
        fArr[16] = height;
        float f4 = this.f4311w;
        fArr[17] = f4;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        fArr[20] = width;
        fArr[21] = f2;
        fArr[22] = f4;
        fArr[23] = 1.0f;
        fArr[24] = 1.0f;
        fArr[25] = f;
        fArr[26] = f2;
        fArr[27] = f4;
        fArr[28] = 0.0f;
        fArr[29] = 1.0f;
        add(texture, fArr, 0, 30);
    }

    public void draw(int i, int i2, int i3) {
        int i4;
        int i5;
        if (this.f4301b) {
            Cache cache = this.f4304p.get(i);
            int i6 = ((cache.f4314b / ((this.f4300a.getNumIndices() > 0 ? 4 : 6) * 5)) * 6) + (i2 * 6);
            int i7 = i3 * 6;
            Texture[] textureArr = cache.f4317e;
            int[] iArr = cache.f4318f;
            int i8 = cache.f4316d;
            int i9 = 0;
            while (i9 < i8) {
                textureArr[i9].bind();
                int i10 = iArr[i9];
                if (i10 > i7) {
                    i4 = i7;
                    i5 = i8;
                } else {
                    int i11 = i9;
                    i4 = i7 - i10;
                    i7 = i10;
                    i5 = i11;
                }
                ShaderProgram shaderProgram = this.f4312x;
                if (shaderProgram != null) {
                    this.f4300a.render(shaderProgram, 4, i6, i7);
                } else {
                    this.f4300a.render(this.f4306r, 4, i6, i7);
                }
                i6 += i7;
                int i12 = i4;
                i9 = i5 + 1;
                i7 = i12;
            }
            this.renderCalls += cache.f4316d;
            this.totalRenderCalls += i8;
            return;
        }
        throw new IllegalStateException("SpriteCache.begin must be called before draw.");
    }

    public void add(Texture texture, float f, float f2, int i, int i2, float f3, float f4, float f5, float f6, float f7) {
        float f8 = i + f;
        float f9 = f2 + i2;
        float[] fArr = f4299y;
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f7;
        fArr[3] = f3;
        fArr[4] = f4;
        fArr[5] = f;
        fArr[6] = f9;
        fArr[7] = f7;
        fArr[8] = f3;
        fArr[9] = f6;
        fArr[10] = f8;
        fArr[11] = f9;
        fArr[12] = f7;
        fArr[13] = f5;
        fArr[14] = f6;
        if (this.f4300a.getNumIndices() > 0) {
            fArr[15] = f8;
            fArr[16] = f2;
            fArr[17] = f7;
            fArr[18] = f5;
            fArr[19] = f4;
            add(texture, fArr, 0, 20);
            return;
        }
        fArr[15] = f8;
        fArr[16] = f9;
        fArr[17] = f7;
        fArr[18] = f5;
        fArr[19] = f6;
        fArr[20] = f8;
        fArr[21] = f2;
        fArr[22] = f7;
        fArr[23] = f5;
        fArr[24] = f4;
        fArr[25] = f;
        fArr[26] = f2;
        fArr[27] = f7;
        fArr[28] = f3;
        fArr[29] = f4;
        add(texture, fArr, 0, 30);
    }

    public void add(Texture texture, float f, float f2, int i, int i2, int i3, int i4) {
        float width = 1.0f / texture.getWidth();
        float height = 1.0f / texture.getHeight();
        float f3 = i * width;
        float f4 = (i2 + i4) * height;
        float f5 = (i + i3) * width;
        float f6 = i2 * height;
        float f7 = f + i3;
        float f8 = f2 + i4;
        float[] fArr = f4299y;
        fArr[0] = f;
        fArr[1] = f2;
        float f9 = this.f4311w;
        fArr[2] = f9;
        fArr[3] = f3;
        fArr[4] = f4;
        fArr[5] = f;
        fArr[6] = f8;
        fArr[7] = f9;
        fArr[8] = f3;
        fArr[9] = f6;
        fArr[10] = f7;
        fArr[11] = f8;
        fArr[12] = f9;
        fArr[13] = f5;
        fArr[14] = f6;
        if (this.f4300a.getNumIndices() > 0) {
            fArr[15] = f7;
            fArr[16] = f2;
            fArr[17] = this.f4311w;
            fArr[18] = f5;
            fArr[19] = f4;
            add(texture, fArr, 0, 20);
            return;
        }
        fArr[15] = f7;
        fArr[16] = f8;
        float f10 = this.f4311w;
        fArr[17] = f10;
        fArr[18] = f5;
        fArr[19] = f6;
        fArr[20] = f7;
        fArr[21] = f2;
        fArr[22] = f10;
        fArr[23] = f5;
        fArr[24] = f4;
        fArr[25] = f;
        fArr[26] = f2;
        fArr[27] = f10;
        fArr[28] = f3;
        fArr[29] = f4;
        add(texture, fArr, 0, 30);
    }

    public void add(Texture texture, float f, float f2, float f3, float f4, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        float width = 1.0f / texture.getWidth();
        float height = 1.0f / texture.getHeight();
        float f5 = i * width;
        float f6 = (i2 + i4) * height;
        float f7 = (i + i3) * width;
        float f8 = i2 * height;
        float f9 = f + f3;
        float f10 = f2 + f4;
        if (!z) {
            f5 = f7;
            f7 = f5;
        }
        if (z2) {
            f6 = f8;
            f8 = f6;
        }
        float[] fArr = f4299y;
        fArr[0] = f;
        fArr[1] = f2;
        float f11 = this.f4311w;
        fArr[2] = f11;
        fArr[3] = f7;
        fArr[4] = f6;
        fArr[5] = f;
        fArr[6] = f10;
        fArr[7] = f11;
        fArr[8] = f7;
        fArr[9] = f8;
        fArr[10] = f9;
        fArr[11] = f10;
        fArr[12] = f11;
        fArr[13] = f5;
        fArr[14] = f8;
        if (this.f4300a.getNumIndices() > 0) {
            fArr[15] = f9;
            fArr[16] = f2;
            fArr[17] = this.f4311w;
            fArr[18] = f5;
            fArr[19] = f6;
            add(texture, fArr, 0, 20);
            return;
        }
        fArr[15] = f9;
        fArr[16] = f10;
        float f12 = this.f4311w;
        fArr[17] = f12;
        fArr[18] = f5;
        fArr[19] = f8;
        fArr[20] = f9;
        fArr[21] = f2;
        fArr[22] = f12;
        fArr[23] = f5;
        fArr[24] = f6;
        fArr[25] = f;
        fArr[26] = f2;
        fArr[27] = f12;
        fArr[28] = f7;
        fArr[29] = f6;
        add(texture, fArr, 0, 30);
    }

    public void add(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
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
        float width = 1.0f / texture.getWidth();
        float height = 1.0f / texture.getHeight();
        float f38 = i * width;
        float f39 = (i2 + i4) * height;
        float f40 = (i + i3) * width;
        float f41 = i2 * height;
        if (z) {
            f38 = f40;
            f40 = f38;
        }
        if (z2) {
            f39 = f41;
            f41 = f39;
        }
        float[] fArr = f4299y;
        fArr[0] = f30;
        fArr[1] = f31;
        float f42 = this.f4311w;
        fArr[2] = f42;
        fArr[3] = f38;
        fArr[4] = f39;
        fArr[5] = f32;
        fArr[6] = f33;
        fArr[7] = f42;
        fArr[8] = f38;
        fArr[9] = f41;
        fArr[10] = f34;
        fArr[11] = f35;
        fArr[12] = f42;
        fArr[13] = f40;
        fArr[14] = f41;
        if (this.f4300a.getNumIndices() > 0) {
            fArr[15] = f36;
            fArr[16] = f37;
            fArr[17] = this.f4311w;
            fArr[18] = f40;
            fArr[19] = f39;
            add(texture, fArr, 0, 20);
            return;
        }
        fArr[15] = f34;
        fArr[16] = f35;
        float f43 = this.f4311w;
        fArr[17] = f43;
        fArr[18] = f40;
        fArr[19] = f41;
        fArr[20] = f36;
        fArr[21] = f37;
        fArr[22] = f43;
        fArr[23] = f40;
        fArr[24] = f39;
        fArr[25] = f30;
        fArr[26] = f31;
        fArr[27] = f43;
        fArr[28] = f38;
        fArr[29] = f39;
        add(texture, fArr, 0, 30);
    }

    public void add(TextureRegion textureRegion, float f, float f2) {
        add(textureRegion, f, f2, textureRegion.getRegionWidth(), textureRegion.getRegionHeight());
    }

    public void add(TextureRegion textureRegion, float f, float f2, float f3, float f4) {
        float f5 = f + f3;
        float f6 = f2 + f4;
        float f7 = textureRegion.f4355b;
        float f8 = textureRegion.f4358e;
        float f9 = textureRegion.f4357d;
        float f10 = textureRegion.f4356c;
        float[] fArr = f4299y;
        fArr[0] = f;
        fArr[1] = f2;
        float f11 = this.f4311w;
        fArr[2] = f11;
        fArr[3] = f7;
        fArr[4] = f8;
        fArr[5] = f;
        fArr[6] = f6;
        fArr[7] = f11;
        fArr[8] = f7;
        fArr[9] = f10;
        fArr[10] = f5;
        fArr[11] = f6;
        fArr[12] = f11;
        fArr[13] = f9;
        fArr[14] = f10;
        if (this.f4300a.getNumIndices() > 0) {
            fArr[15] = f5;
            fArr[16] = f2;
            fArr[17] = this.f4311w;
            fArr[18] = f9;
            fArr[19] = f8;
            add(textureRegion.f4354a, fArr, 0, 20);
            return;
        }
        fArr[15] = f5;
        fArr[16] = f6;
        float f12 = this.f4311w;
        fArr[17] = f12;
        fArr[18] = f9;
        fArr[19] = f10;
        fArr[20] = f5;
        fArr[21] = f2;
        fArr[22] = f12;
        fArr[23] = f9;
        fArr[24] = f8;
        fArr[25] = f;
        fArr[26] = f2;
        fArr[27] = f12;
        fArr[28] = f7;
        fArr[29] = f8;
        add(textureRegion.f4354a, fArr, 0, 30);
    }

    public void add(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
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
        float[] fArr = f4299y;
        fArr[0] = f30;
        fArr[1] = f31;
        float f42 = this.f4311w;
        fArr[2] = f42;
        fArr[3] = f38;
        fArr[4] = f39;
        fArr[5] = f32;
        fArr[6] = f33;
        fArr[7] = f42;
        fArr[8] = f38;
        fArr[9] = f41;
        fArr[10] = f34;
        fArr[11] = f35;
        fArr[12] = f42;
        fArr[13] = f40;
        fArr[14] = f41;
        if (this.f4300a.getNumIndices() > 0) {
            fArr[15] = f36;
            fArr[16] = f37;
            fArr[17] = this.f4311w;
            fArr[18] = f40;
            fArr[19] = f39;
            add(textureRegion.f4354a, fArr, 0, 20);
            return;
        }
        fArr[15] = f34;
        fArr[16] = f35;
        float f43 = this.f4311w;
        fArr[17] = f43;
        fArr[18] = f40;
        fArr[19] = f41;
        fArr[20] = f36;
        fArr[21] = f37;
        fArr[22] = f43;
        fArr[23] = f40;
        fArr[24] = f39;
        fArr[25] = f30;
        fArr[26] = f31;
        fArr[27] = f43;
        fArr[28] = f38;
        fArr[29] = f39;
        add(textureRegion.f4354a, fArr, 0, 30);
    }

    public void add(Sprite sprite) {
        if (this.f4300a.getNumIndices() > 0) {
            add(sprite.getTexture(), sprite.getVertices(), 0, 20);
            return;
        }
        float[] vertices = sprite.getVertices();
        float[] fArr = f4299y;
        System.arraycopy(vertices, 0, fArr, 0, 15);
        System.arraycopy(vertices, 10, fArr, 15, 5);
        System.arraycopy(vertices, 15, fArr, 20, 5);
        System.arraycopy(vertices, 0, fArr, 25, 5);
        add(sprite.getTexture(), fArr, 0, 30);
    }
}
