package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.IntArray;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
/* loaded from: classes.dex */
public class VertexBufferObjectWithVAO implements VertexData {

    /* renamed from: w */
    public static final IntBuffer f5147w = BufferUtils.newIntBuffer(1);

    /* renamed from: a */
    public final VertexAttributes f5148a;

    /* renamed from: b */
    public final FloatBuffer f5149b;

    /* renamed from: d */
    public final ByteBuffer f5150d;

    /* renamed from: k */
    public final boolean f5151k;

    /* renamed from: p */
    public int f5152p;

    /* renamed from: q */
    public final boolean f5153q;

    /* renamed from: r */
    public final int f5154r;

    /* renamed from: s */
    public boolean f5155s;

    /* renamed from: t */
    public boolean f5156t;

    /* renamed from: u */
    public int f5157u;

    /* renamed from: v */
    public IntArray f5158v;

    public VertexBufferObjectWithVAO(boolean z, int i, VertexAttribute... vertexAttributeArr) {
        this(z, i, new VertexAttributes(vertexAttributeArr));
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void bind(ShaderProgram shaderProgram) {
        bind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public VertexAttributes getAttributes() {
        return this.f5148a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public FloatBuffer getBuffer() {
        this.f5155s = true;
        return this.f5149b;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public int getNumMaxVertices() {
        return this.f5150d.capacity() / this.f5148a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public int getNumVertices() {
        return (this.f5149b.limit() * 4) / this.f5148a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void setVertices(float[] fArr, int i, int i2) {
        this.f5155s = true;
        BufferUtils.copy(fArr, this.f5150d, i2, i);
        this.f5149b.position(0);
        this.f5149b.limit(i2);
        m23987c();
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void unbind(ShaderProgram shaderProgram) {
        unbind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void updateVertices(int i, float[] fArr, int i2, int i3) {
        this.f5155s = true;
        int position = this.f5150d.position();
        this.f5150d.position(i * 4);
        BufferUtils.copy(fArr, i2, i3, (Buffer) this.f5150d);
        this.f5150d.position(position);
        this.f5149b.position(0);
        m23987c();
    }

    public VertexBufferObjectWithVAO(boolean z, int i, VertexAttributes vertexAttributes) {
        this.f5155s = false;
        this.f5156t = false;
        this.f5157u = -1;
        this.f5158v = new IntArray();
        this.f5153q = z;
        this.f5148a = vertexAttributes;
        ByteBuffer newUnsafeByteBuffer = BufferUtils.newUnsafeByteBuffer(vertexAttributes.vertexSize * i);
        this.f5150d = newUnsafeByteBuffer;
        FloatBuffer asFloatBuffer = newUnsafeByteBuffer.asFloatBuffer();
        this.f5149b = asFloatBuffer;
        this.f5151k = true;
        asFloatBuffer.flip();
        newUnsafeByteBuffer.flip();
        this.f5152p = Gdx.gl20.glGenBuffer();
        this.f5154r = z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW;
        m23986d();
    }

    /* renamed from: a */
    public final void m23989a(ShaderProgram shaderProgram, int[] iArr) {
        boolean z;
        if (this.f5158v.size != 0) {
            z = true;
        } else {
            z = false;
        }
        int size = this.f5148a.size();
        if (z) {
            if (iArr == null) {
                for (int i = 0; z && i < size; i++) {
                    if (shaderProgram.getAttributeLocation(this.f5148a.get(i).alias) == this.f5158v.get(i)) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
            } else {
                if (iArr.length == this.f5158v.size) {
                    z = true;
                } else {
                    z = false;
                }
                for (int i2 = 0; z && i2 < size; i2++) {
                    if (iArr[i2] == this.f5158v.get(i2)) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
            }
        }
        if (!z) {
            Gdx.f3119gl.glBindBuffer(GL20.GL_ARRAY_BUFFER, this.f5152p);
            m23984f(shaderProgram);
            this.f5158v.clear();
            for (int i3 = 0; i3 < size; i3++) {
                VertexAttribute vertexAttribute = this.f5148a.get(i3);
                if (iArr == null) {
                    this.f5158v.add(shaderProgram.getAttributeLocation(vertexAttribute.alias));
                } else {
                    this.f5158v.add(iArr[i3]);
                }
                int i4 = this.f5158v.get(i3);
                if (i4 >= 0) {
                    shaderProgram.enableVertexAttribute(i4);
                    shaderProgram.setVertexAttribute(i4, vertexAttribute.numComponents, vertexAttribute.type, vertexAttribute.normalized, this.f5148a.vertexSize, vertexAttribute.offset);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m23988b(GL20 gl20) {
        if (this.f5155s) {
            gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, this.f5152p);
            this.f5150d.limit(this.f5149b.limit() * 4);
            gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5150d.limit(), this.f5150d, this.f5154r);
            this.f5155s = false;
        }
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void bind(ShaderProgram shaderProgram, int[] iArr) {
        GL30 gl30 = Gdx.gl30;
        gl30.glBindVertexArray(this.f5157u);
        m23989a(shaderProgram, iArr);
        m23988b(gl30);
        this.f5156t = true;
    }

    /* renamed from: c */
    public final void m23987c() {
        if (this.f5156t) {
            Gdx.gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, this.f5152p);
            Gdx.gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5150d.limit(), this.f5150d, this.f5154r);
            this.f5155s = false;
        }
    }

    /* renamed from: d */
    public final void m23986d() {
        IntBuffer intBuffer = f5147w;
        intBuffer.clear();
        Gdx.gl30.glGenVertexArrays(1, intBuffer);
        this.f5157u = intBuffer.get();
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GL30 gl30 = Gdx.gl30;
        gl30.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        gl30.glDeleteBuffer(this.f5152p);
        this.f5152p = 0;
        if (this.f5151k) {
            BufferUtils.disposeUnsafeByteBuffer(this.f5150d);
        }
        m23985e();
    }

    /* renamed from: e */
    public final void m23985e() {
        if (this.f5157u != -1) {
            IntBuffer intBuffer = f5147w;
            intBuffer.clear();
            intBuffer.put(this.f5157u);
            intBuffer.flip();
            Gdx.gl30.glDeleteVertexArrays(1, intBuffer);
            this.f5157u = -1;
        }
    }

    /* renamed from: f */
    public final void m23984f(ShaderProgram shaderProgram) {
        if (this.f5158v.size == 0) {
            return;
        }
        int size = this.f5148a.size();
        for (int i = 0; i < size; i++) {
            int i2 = this.f5158v.get(i);
            if (i2 >= 0) {
                shaderProgram.disableVertexAttribute(i2);
            }
        }
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void invalidate() {
        this.f5152p = Gdx.gl30.glGenBuffer();
        m23986d();
        this.f5155s = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void unbind(ShaderProgram shaderProgram, int[] iArr) {
        Gdx.gl30.glBindVertexArray(0);
        this.f5156t = false;
    }

    public VertexBufferObjectWithVAO(boolean z, ByteBuffer byteBuffer, VertexAttributes vertexAttributes) {
        this.f5155s = false;
        this.f5156t = false;
        this.f5157u = -1;
        this.f5158v = new IntArray();
        this.f5153q = z;
        this.f5148a = vertexAttributes;
        this.f5150d = byteBuffer;
        this.f5151k = false;
        FloatBuffer asFloatBuffer = byteBuffer.asFloatBuffer();
        this.f5149b = asFloatBuffer;
        asFloatBuffer.flip();
        byteBuffer.flip();
        this.f5152p = Gdx.gl20.glGenBuffer();
        this.f5154r = z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW;
        m23986d();
    }
}
