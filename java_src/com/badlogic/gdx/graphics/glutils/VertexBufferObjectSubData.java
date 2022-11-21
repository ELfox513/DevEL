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
public class VertexBufferObjectSubData implements VertexData {

    /* renamed from: a */
    public final VertexAttributes f5138a;

    /* renamed from: b */
    public final FloatBuffer f5139b;

    /* renamed from: d */
    public final ByteBuffer f5140d;

    /* renamed from: k */
    public int f5141k;

    /* renamed from: p */
    public final boolean f5142p;

    /* renamed from: q */
    public final boolean f5143q;

    /* renamed from: r */
    public final int f5144r;

    /* renamed from: s */
    public boolean f5145s;

    /* renamed from: t */
    public boolean f5146t;

    public VertexBufferObjectSubData(boolean z, int i, VertexAttribute... vertexAttributeArr) {
        this(z, i, new VertexAttributes(vertexAttributeArr));
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void bind(ShaderProgram shaderProgram) {
        bind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public VertexAttributes getAttributes() {
        return this.f5138a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public FloatBuffer getBuffer() {
        this.f5145s = true;
        return this.f5139b;
    }

    public int getBufferHandle() {
        return this.f5141k;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public int getNumMaxVertices() {
        return this.f5140d.capacity() / this.f5138a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public int getNumVertices() {
        return (this.f5139b.limit() * 4) / this.f5138a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void setVertices(float[] fArr, int i, int i2) {
        this.f5145s = true;
        if (this.f5142p) {
            BufferUtils.copy(fArr, this.f5140d, i2, i);
            this.f5139b.position(0);
            this.f5139b.limit(i2);
        } else {
            this.f5139b.clear();
            this.f5139b.put(fArr, i, i2);
            this.f5139b.flip();
            this.f5140d.position(0);
            this.f5140d.limit(this.f5139b.limit() << 2);
        }
        m23991a();
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void unbind(ShaderProgram shaderProgram) {
        unbind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void updateVertices(int i, float[] fArr, int i2, int i3) {
        this.f5145s = true;
        if (this.f5142p) {
            int position = this.f5140d.position();
            this.f5140d.position(i * 4);
            BufferUtils.copy(fArr, i2, i3, (Buffer) this.f5140d);
            this.f5140d.position(position);
            m23991a();
            return;
        }
        throw new GdxRuntimeException("Buffer must be allocated direct.");
    }

    public VertexBufferObjectSubData(boolean z, int i, VertexAttributes vertexAttributes) {
        this.f5145s = false;
        this.f5146t = false;
        this.f5143q = z;
        this.f5138a = vertexAttributes;
        ByteBuffer newByteBuffer = BufferUtils.newByteBuffer(vertexAttributes.vertexSize * i);
        this.f5140d = newByteBuffer;
        this.f5142p = true;
        this.f5144r = z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW;
        FloatBuffer asFloatBuffer = newByteBuffer.asFloatBuffer();
        this.f5139b = asFloatBuffer;
        this.f5141k = m23990b();
        asFloatBuffer.flip();
        newByteBuffer.flip();
    }

    /* renamed from: a */
    public final void m23991a() {
        if (this.f5146t) {
            Gdx.gl20.glBufferSubData(GL20.GL_ARRAY_BUFFER, 0, this.f5140d.limit(), this.f5140d);
            this.f5145s = false;
        }
    }

    /* renamed from: b */
    public final int m23990b() {
        int glGenBuffer = Gdx.gl20.glGenBuffer();
        Gdx.gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, glGenBuffer);
        Gdx.gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5140d.capacity(), null, this.f5144r);
        Gdx.gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        return glGenBuffer;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void bind(ShaderProgram shaderProgram, int[] iArr) {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, this.f5141k);
        int i = 0;
        if (this.f5145s) {
            this.f5140d.limit(this.f5139b.limit() * 4);
            gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5140d.limit(), this.f5140d, this.f5144r);
            this.f5145s = false;
        }
        int size = this.f5138a.size();
        if (iArr == null) {
            while (i < size) {
                VertexAttribute vertexAttribute = this.f5138a.get(i);
                int attributeLocation = shaderProgram.getAttributeLocation(vertexAttribute.alias);
                if (attributeLocation >= 0) {
                    shaderProgram.enableVertexAttribute(attributeLocation);
                    shaderProgram.setVertexAttribute(attributeLocation, vertexAttribute.numComponents, vertexAttribute.type, vertexAttribute.normalized, this.f5138a.vertexSize, vertexAttribute.offset);
                }
                i++;
            }
        } else {
            while (i < size) {
                VertexAttribute vertexAttribute2 = this.f5138a.get(i);
                int i2 = iArr[i];
                if (i2 >= 0) {
                    shaderProgram.enableVertexAttribute(i2);
                    shaderProgram.setVertexAttribute(i2, vertexAttribute2.numComponents, vertexAttribute2.type, vertexAttribute2.normalized, this.f5138a.vertexSize, vertexAttribute2.offset);
                }
                i++;
            }
        }
        this.f5146t = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        gl20.glDeleteBuffer(this.f5141k);
        this.f5141k = 0;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void unbind(ShaderProgram shaderProgram, int[] iArr) {
        GL20 gl20 = Gdx.gl20;
        int size = this.f5138a.size();
        if (iArr == null) {
            for (int i = 0; i < size; i++) {
                shaderProgram.disableVertexAttribute(this.f5138a.get(i).alias);
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
        this.f5146t = false;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void invalidate() {
        this.f5141k = m23990b();
        this.f5145s = true;
    }
}
