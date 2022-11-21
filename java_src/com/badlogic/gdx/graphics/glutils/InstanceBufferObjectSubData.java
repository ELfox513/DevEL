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
public class InstanceBufferObjectSubData implements InstanceData {

    /* renamed from: a */
    public final VertexAttributes f5061a;

    /* renamed from: b */
    public final FloatBuffer f5062b;

    /* renamed from: d */
    public final ByteBuffer f5063d;

    /* renamed from: k */
    public int f5064k;

    /* renamed from: p */
    public final boolean f5065p;

    /* renamed from: q */
    public final boolean f5066q;

    /* renamed from: r */
    public final int f5067r;

    /* renamed from: s */
    public boolean f5068s;

    /* renamed from: t */
    public boolean f5069t;

    public InstanceBufferObjectSubData(boolean z, int i, VertexAttribute... vertexAttributeArr) {
        this(z, i, new VertexAttributes(vertexAttributeArr));
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void bind(ShaderProgram shaderProgram) {
        bind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public VertexAttributes getAttributes() {
        return this.f5061a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public FloatBuffer getBuffer() {
        this.f5068s = true;
        return this.f5062b;
    }

    public int getBufferHandle() {
        return this.f5064k;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public int getNumInstances() {
        return (this.f5062b.limit() * 4) / this.f5061a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public int getNumMaxInstances() {
        return this.f5063d.capacity() / this.f5061a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void setInstanceData(float[] fArr, int i, int i2) {
        this.f5068s = true;
        if (this.f5065p) {
            BufferUtils.copy(fArr, this.f5063d, i2, i);
            this.f5062b.position(0);
            this.f5062b.limit(i2);
        } else {
            this.f5062b.clear();
            this.f5062b.put(fArr, i, i2);
            this.f5062b.flip();
            this.f5063d.position(0);
            this.f5063d.limit(this.f5062b.limit() << 2);
        }
        m24012a();
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void unbind(ShaderProgram shaderProgram) {
        unbind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void updateInstanceData(int i, float[] fArr, int i2, int i3) {
        this.f5068s = true;
        if (this.f5065p) {
            int position = this.f5063d.position();
            this.f5063d.position(i * 4);
            BufferUtils.copy(fArr, i2, i3, (Buffer) this.f5063d);
            this.f5063d.position(position);
            m24012a();
            return;
        }
        throw new GdxRuntimeException("Buffer must be allocated direct.");
    }

    public InstanceBufferObjectSubData(boolean z, int i, VertexAttributes vertexAttributes) {
        this.f5068s = false;
        this.f5069t = false;
        this.f5066q = z;
        this.f5061a = vertexAttributes;
        ByteBuffer newByteBuffer = BufferUtils.newByteBuffer(vertexAttributes.vertexSize * i);
        this.f5063d = newByteBuffer;
        this.f5065p = true;
        this.f5067r = z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW;
        FloatBuffer asFloatBuffer = newByteBuffer.asFloatBuffer();
        this.f5062b = asFloatBuffer;
        this.f5064k = m24011b();
        asFloatBuffer.flip();
        newByteBuffer.flip();
    }

    /* renamed from: a */
    public final void m24012a() {
        if (this.f5069t) {
            Gdx.gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5063d.limit(), null, this.f5067r);
            Gdx.gl20.glBufferSubData(GL20.GL_ARRAY_BUFFER, 0, this.f5063d.limit(), this.f5063d);
            this.f5068s = false;
        }
    }

    /* renamed from: b */
    public final int m24011b() {
        int glGenBuffer = Gdx.gl20.glGenBuffer();
        Gdx.gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, glGenBuffer);
        Gdx.gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5063d.capacity(), null, this.f5067r);
        Gdx.gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        return glGenBuffer;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void bind(ShaderProgram shaderProgram, int[] iArr) {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, this.f5064k);
        int i = 0;
        if (this.f5068s) {
            this.f5063d.limit(this.f5062b.limit() * 4);
            gl20.glBufferData(GL20.GL_ARRAY_BUFFER, this.f5063d.limit(), this.f5063d, this.f5067r);
            this.f5068s = false;
        }
        int size = this.f5061a.size();
        if (iArr == null) {
            while (i < size) {
                VertexAttribute vertexAttribute = this.f5061a.get(i);
                int attributeLocation = shaderProgram.getAttributeLocation(vertexAttribute.alias);
                if (attributeLocation >= 0) {
                    int i2 = attributeLocation + vertexAttribute.unit;
                    shaderProgram.enableVertexAttribute(i2);
                    shaderProgram.setVertexAttribute(i2, vertexAttribute.numComponents, vertexAttribute.type, vertexAttribute.normalized, this.f5061a.vertexSize, vertexAttribute.offset);
                    Gdx.gl30.glVertexAttribDivisor(i2, 1);
                }
                i++;
            }
        } else {
            while (i < size) {
                VertexAttribute vertexAttribute2 = this.f5061a.get(i);
                int i3 = iArr[i];
                if (i3 >= 0) {
                    int i4 = i3 + vertexAttribute2.unit;
                    shaderProgram.enableVertexAttribute(i4);
                    shaderProgram.setVertexAttribute(i4, vertexAttribute2.numComponents, vertexAttribute2.type, vertexAttribute2.normalized, this.f5061a.vertexSize, vertexAttribute2.offset);
                    Gdx.gl30.glVertexAttribDivisor(i4, 1);
                }
                i++;
            }
        }
        this.f5069t = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        gl20.glDeleteBuffer(this.f5064k);
        this.f5064k = 0;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void unbind(ShaderProgram shaderProgram, int[] iArr) {
        GL20 gl20 = Gdx.gl20;
        int size = this.f5061a.size();
        if (iArr == null) {
            for (int i = 0; i < size; i++) {
                VertexAttribute vertexAttribute = this.f5061a.get(i);
                int attributeLocation = shaderProgram.getAttributeLocation(vertexAttribute.alias);
                if (attributeLocation >= 0) {
                    shaderProgram.disableVertexAttribute(attributeLocation + vertexAttribute.unit);
                }
            }
        } else {
            for (int i2 = 0; i2 < size; i2++) {
                VertexAttribute vertexAttribute2 = this.f5061a.get(i2);
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    shaderProgram.enableVertexAttribute(i3 + vertexAttribute2.unit);
                }
            }
        }
        gl20.glBindBuffer(GL20.GL_ARRAY_BUFFER, 0);
        this.f5069t = false;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void invalidate() {
        this.f5064k = m24011b();
        this.f5068s = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void updateInstanceData(int i, FloatBuffer floatBuffer, int i2, int i3) {
        this.f5068s = true;
        if (this.f5065p) {
            int position = this.f5063d.position();
            this.f5063d.position(i * 4);
            floatBuffer.position(i2 * 4);
            BufferUtils.copy(floatBuffer, this.f5063d, i3);
            this.f5063d.position(position);
            m24012a();
            return;
        }
        throw new GdxRuntimeException("Buffer must be allocated direct.");
    }

    @Override // com.badlogic.gdx.graphics.glutils.InstanceData
    public void setInstanceData(FloatBuffer floatBuffer, int i) {
        this.f5068s = true;
        if (this.f5065p) {
            BufferUtils.copy(floatBuffer, this.f5063d, i);
            this.f5062b.position(0);
            this.f5062b.limit(i);
        } else {
            this.f5062b.clear();
            this.f5062b.put(floatBuffer);
            this.f5062b.flip();
            this.f5063d.position(0);
            this.f5063d.limit(this.f5062b.limit() << 2);
        }
        m24012a();
    }
}
