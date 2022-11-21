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
public class InstanceBufferObject implements InstanceData {

    /* renamed from: a */
    public VertexAttributes f5053a;

    /* renamed from: b */
    public FloatBuffer f5054b;

    /* renamed from: d */
    public ByteBuffer f5055d;

    /* renamed from: k */
    public boolean f5056k;

    /* renamed from: p */
    public int f5057p;

    /* renamed from: q */
    public int f5058q;

    /* renamed from: r */
    public boolean f5059r;

    /* renamed from: s */
    public boolean f5060s;

    public InstanceBufferObject(boolean z, int i, VertexAttribute... vertexAttributeArr) {
        this(z, i, new VertexAttributes(vertexAttributeArr));
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void bind(ShaderProgram shaderProgram) {
        bind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public VertexAttributes getAttributes() {
        return this.f5053a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public FloatBuffer getBuffer() {
        this.f5059r = true;
        return this.f5054b;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public int getNumInstances() {
        return (this.f5054b.limit() * 4) / this.f5053a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public int getNumMaxInstances() {
        return this.f5055d.capacity() / this.f5053a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void setInstanceData(float[] fArr, int i, int i2) {
        this.f5059r = true;
        BufferUtils.copy(fArr, this.f5055d, i2, i);
        this.f5054b.position(0);
        this.f5054b.limit(i2);
        m24015a();
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void unbind(ShaderProgram shaderProgram) {
        unbind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void updateInstanceData(int i, float[] fArr, int i2, int i3) {
        this.f5059r = true;
        int position = this.f5055d.position();
        this.f5055d.position(i * 4);
        BufferUtils.copy(fArr, i2, i3, (Buffer) this.f5055d);
        this.f5055d.position(position);
        this.f5054b.position(0);
        m24015a();
    }

    public InstanceBufferObject(boolean z, int i, VertexAttributes vertexAttributes) {
        this.f5059r = false;
        this.f5060s = false;
        if (Gdx.gl30 != null) {
            this.f5057p = Gdx.gl20.glGenBuffer();
            ByteBuffer newUnsafeByteBuffer = BufferUtils.newUnsafeByteBuffer(vertexAttributes.vertexSize * i);
            newUnsafeByteBuffer.limit(0);
            m24014b(newUnsafeByteBuffer, true, vertexAttributes);
            m24013c(z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW);
            return;
        }
        throw new GdxRuntimeException("InstanceBufferObject requires a device running with GLES 3.0 compatibilty");
    }

    /* renamed from: a */
    public final void m24015a() {
        if (this.f5060s) {
            Gdx.gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5055d.limit(), null, this.f5058q);
            Gdx.gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5055d.limit(), this.f5055d, this.f5058q);
            this.f5059r = false;
        }
    }

    /* renamed from: b */
    public void m24014b(Buffer buffer, boolean z, VertexAttributes vertexAttributes) {
        ByteBuffer byteBuffer;
        if (!this.f5060s) {
            if (this.f5056k && (byteBuffer = this.f5055d) != null) {
                BufferUtils.disposeUnsafeByteBuffer(byteBuffer);
            }
            this.f5053a = vertexAttributes;
            if (buffer instanceof ByteBuffer) {
                ByteBuffer byteBuffer2 = (ByteBuffer) buffer;
                this.f5055d = byteBuffer2;
                this.f5056k = z;
                int limit = byteBuffer2.limit();
                ByteBuffer byteBuffer3 = this.f5055d;
                byteBuffer3.limit(byteBuffer3.capacity());
                this.f5054b = this.f5055d.asFloatBuffer();
                this.f5055d.limit(limit);
                this.f5054b.limit(limit / 4);
                return;
            }
            throw new GdxRuntimeException("Only ByteBuffer is currently supported");
        }
        throw new GdxRuntimeException("Cannot change attributes while VBO is bound");
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void bind(ShaderProgram shaderProgram, int[] iArr) {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, this.f5057p);
        int i = 0;
        if (this.f5059r) {
            this.f5055d.limit(this.f5054b.limit() * 4);
            gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5055d.limit(), this.f5055d, this.f5058q);
            this.f5059r = false;
        }
        int size = this.f5053a.size();
        if (iArr == null) {
            while (i < size) {
                VertexAttribute vertexAttribute = this.f5053a.get(i);
                int attributeLocation = shaderProgram.getAttributeLocation(vertexAttribute.alias);
                if (attributeLocation >= 0) {
                    int i2 = attributeLocation + vertexAttribute.unit;
                    shaderProgram.enableVertexAttribute(i2);
                    shaderProgram.setVertexAttribute(i2, vertexAttribute.numComponents, vertexAttribute.type, vertexAttribute.normalized, this.f5053a.vertexSize, vertexAttribute.offset);
                    Gdx.gl30.glVertexAttribDivisor(i2, 1);
                }
                i++;
            }
        } else {
            while (i < size) {
                VertexAttribute vertexAttribute2 = this.f5053a.get(i);
                int i3 = iArr[i];
                if (i3 >= 0) {
                    int i4 = i3 + vertexAttribute2.unit;
                    shaderProgram.enableVertexAttribute(i4);
                    shaderProgram.setVertexAttribute(i4, vertexAttribute2.numComponents, vertexAttribute2.type, vertexAttribute2.normalized, this.f5053a.vertexSize, vertexAttribute2.offset);
                    Gdx.gl30.glVertexAttribDivisor(i4, 1);
                }
                i++;
            }
        }
        this.f5060s = true;
    }

    /* renamed from: c */
    public void m24013c(int i) {
        if (!this.f5060s) {
            this.f5058q = i;
            return;
        }
        throw new GdxRuntimeException("Cannot change usage while VBO is bound");
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        gl20.glDeleteBuffer(this.f5057p);
        this.f5057p = 0;
        if (this.f5056k) {
            BufferUtils.disposeUnsafeByteBuffer(this.f5055d);
        }
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void invalidate() {
        this.f5057p = Gdx.gl20.glGenBuffer();
        this.f5059r = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void unbind(ShaderProgram shaderProgram, int[] iArr) {
        GL20 gl20 = Gdx.gl20;
        int size = this.f5053a.size();
        if (iArr == null) {
            for (int i = 0; i < size; i++) {
                VertexAttribute vertexAttribute = this.f5053a.get(i);
                int attributeLocation = shaderProgram.getAttributeLocation(vertexAttribute.alias);
                if (attributeLocation >= 0) {
                    shaderProgram.disableVertexAttribute(attributeLocation + vertexAttribute.unit);
                }
            }
        } else {
            for (int i2 = 0; i2 < size; i2++) {
                VertexAttribute vertexAttribute2 = this.f5053a.get(i2);
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    shaderProgram.disableVertexAttribute(i3 + vertexAttribute2.unit);
                }
            }
        }
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        this.f5060s = false;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void setInstanceData(FloatBuffer floatBuffer, int i) {
        this.f5059r = true;
        BufferUtils.copy(floatBuffer, this.f5055d, i);
        this.f5054b.position(0);
        this.f5054b.limit(i);
        m24015a();
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void updateInstanceData(int i, FloatBuffer floatBuffer, int i2, int i3) {
        this.f5059r = true;
        int position = this.f5055d.position();
        this.f5055d.position(i * 4);
        floatBuffer.position(i2 * 4);
        BufferUtils.copy(floatBuffer, this.f5055d, i3);
        this.f5055d.position(position);
        this.f5054b.position(0);
        m24015a();
    }
}
