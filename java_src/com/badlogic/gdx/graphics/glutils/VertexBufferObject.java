package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
/* loaded from: classes.dex */
public class VertexBufferObject implements VertexData {

    /* renamed from: a */
    public VertexAttributes f5130a;

    /* renamed from: b */
    public FloatBuffer f5131b;

    /* renamed from: d */
    public ByteBuffer f5132d;

    /* renamed from: k */
    public boolean f5133k;

    /* renamed from: p */
    public int f5134p;

    /* renamed from: q */
    public int f5135q;

    /* renamed from: r */
    public boolean f5136r;

    /* renamed from: s */
    public boolean f5137s;

    public VertexBufferObject(boolean z, int i, VertexAttribute... vertexAttributeArr) {
        this(z, i, new VertexAttributes(vertexAttributeArr));
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void bind(ShaderProgram shaderProgram) {
        bind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public VertexAttributes getAttributes() {
        return this.f5130a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public FloatBuffer getBuffer() {
        this.f5136r = true;
        return this.f5131b;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public int getNumMaxVertices() {
        return this.f5132d.capacity() / this.f5130a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public int getNumVertices() {
        return (this.f5131b.limit() * 4) / this.f5130a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void setVertices(float[] fArr, int i, int i2) {
        this.f5136r = true;
        BufferUtils.copy(fArr, this.f5132d, i2, i);
        this.f5131b.position(0);
        this.f5131b.limit(i2);
        m23994a();
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void unbind(ShaderProgram shaderProgram) {
        unbind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void updateVertices(int i, float[] fArr, int i2, int i3) {
        this.f5136r = true;
        int position = this.f5132d.position();
        this.f5132d.position(i * 4);
        BufferUtils.copy(fArr, i2, i3, (Buffer) this.f5132d);
        this.f5132d.position(position);
        this.f5131b.position(0);
        m23994a();
    }

    public VertexBufferObject(boolean z, int i, VertexAttributes vertexAttributes) {
        this.f5136r = false;
        this.f5137s = false;
        this.f5134p = Gdx.gl20.glGenBuffer();
        ByteBuffer newUnsafeByteBuffer = BufferUtils.newUnsafeByteBuffer(vertexAttributes.vertexSize * i);
        newUnsafeByteBuffer.limit(0);
        m23993b(newUnsafeByteBuffer, true, vertexAttributes);
        m23992c(z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW);
    }

    /* renamed from: a */
    public final void m23994a() {
        if (this.f5137s) {
            Gdx.gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5132d.limit(), this.f5132d, this.f5135q);
            this.f5136r = false;
        }
    }

    /* renamed from: b */
    public void m23993b(Buffer buffer, boolean z, VertexAttributes vertexAttributes) {
        ByteBuffer byteBuffer;
        if (!this.f5137s) {
            if (this.f5133k && (byteBuffer = this.f5132d) != null) {
                BufferUtils.disposeUnsafeByteBuffer(byteBuffer);
            }
            this.f5130a = vertexAttributes;
            if (buffer instanceof ByteBuffer) {
                ByteBuffer byteBuffer2 = (ByteBuffer) buffer;
                this.f5132d = byteBuffer2;
                this.f5133k = z;
                int limit = byteBuffer2.limit();
                ByteBuffer byteBuffer3 = this.f5132d;
                byteBuffer3.limit(byteBuffer3.capacity());
                this.f5131b = this.f5132d.asFloatBuffer();
                this.f5132d.limit(limit);
                this.f5131b.limit(limit / 4);
                return;
            }
            throw new GdxRuntimeException("Only ByteBuffer is currently supported");
        }
        throw new GdxRuntimeException("Cannot change attributes while VBO is bound");
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void bind(ShaderProgram shaderProgram, int[] iArr) {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, this.f5134p);
        int i = 0;
        if (this.f5136r) {
            this.f5132d.limit(this.f5131b.limit() * 4);
            gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5132d.limit(), this.f5132d, this.f5135q);
            this.f5136r = false;
        }
        int size = this.f5130a.size();
        if (iArr == null) {
            while (i < size) {
                VertexAttribute vertexAttribute = this.f5130a.get(i);
                int attributeLocation = shaderProgram.getAttributeLocation(vertexAttribute.alias);
                if (attributeLocation >= 0) {
                    shaderProgram.enableVertexAttribute(attributeLocation);
                    shaderProgram.setVertexAttribute(attributeLocation, vertexAttribute.numComponents, vertexAttribute.type, vertexAttribute.normalized, this.f5130a.vertexSize, vertexAttribute.offset);
                }
                i++;
            }
        } else {
            while (i < size) {
                VertexAttribute vertexAttribute2 = this.f5130a.get(i);
                int i2 = iArr[i];
                if (i2 >= 0) {
                    shaderProgram.enableVertexAttribute(i2);
                    shaderProgram.setVertexAttribute(i2, vertexAttribute2.numComponents, vertexAttribute2.type, vertexAttribute2.normalized, this.f5130a.vertexSize, vertexAttribute2.offset);
                }
                i++;
            }
        }
        this.f5137s = true;
    }

    /* renamed from: c */
    public void m23992c(int i) {
        if (!this.f5137s) {
            this.f5135q = i;
            return;
        }
        throw new GdxRuntimeException("Cannot change usage while VBO is bound");
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        gl20.glDeleteBuffer(this.f5134p);
        this.f5134p = 0;
        if (this.f5133k) {
            BufferUtils.disposeUnsafeByteBuffer(this.f5132d);
        }
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void invalidate() {
        this.f5134p = Gdx.gl20.glGenBuffer();
        this.f5136r = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void unbind(ShaderProgram shaderProgram, int[] iArr) {
        GL20 gl20 = Gdx.gl20;
        int size = this.f5130a.size();
        if (iArr == null) {
            for (int i = 0; i < size; i++) {
                shaderProgram.disableVertexAttribute(this.f5130a.get(i).alias);
            }
        } else {
            for (int i2 = 0; i2 < size; i2++) {
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    shaderProgram.disableVertexAttribute(i3);
                }
            }
        }
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        this.f5137s = false;
    }
}
