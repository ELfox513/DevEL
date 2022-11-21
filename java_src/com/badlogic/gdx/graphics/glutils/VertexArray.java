package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.utils.BufferUtils;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
/* loaded from: classes.dex */
public class VertexArray implements VertexData {

    /* renamed from: a */
    public final VertexAttributes f5126a;

    /* renamed from: b */
    public final FloatBuffer f5127b;

    /* renamed from: d */
    public final ByteBuffer f5128d;

    /* renamed from: k */
    public boolean f5129k;

    public VertexArray(int i, VertexAttribute... vertexAttributeArr) {
        this(i, new VertexAttributes(vertexAttributeArr));
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void bind(ShaderProgram shaderProgram) {
        bind(shaderProgram, null);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        BufferUtils.disposeUnsafeByteBuffer(this.f5128d);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public VertexAttributes getAttributes() {
        return this.f5126a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public FloatBuffer getBuffer() {
        return this.f5127b;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public int getNumMaxVertices() {
        return this.f5128d.capacity() / this.f5126a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public int getNumVertices() {
        return (this.f5127b.limit() * 4) / this.f5126a.vertexSize;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void invalidate() {
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void unbind(ShaderProgram shaderProgram) {
        unbind(shaderProgram, null);
    }

    public VertexArray(int i, VertexAttributes vertexAttributes) {
        this.f5129k = false;
        this.f5126a = vertexAttributes;
        ByteBuffer newUnsafeByteBuffer = BufferUtils.newUnsafeByteBuffer(vertexAttributes.vertexSize * i);
        this.f5128d = newUnsafeByteBuffer;
        FloatBuffer asFloatBuffer = newUnsafeByteBuffer.asFloatBuffer();
        this.f5127b = asFloatBuffer;
        asFloatBuffer.flip();
        newUnsafeByteBuffer.flip();
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void bind(ShaderProgram shaderProgram, int[] iArr) {
        int size = this.f5126a.size();
        this.f5128d.limit(this.f5127b.limit() * 4);
        int i = 0;
        if (iArr == null) {
            while (i < size) {
                VertexAttribute vertexAttribute = this.f5126a.get(i);
                int attributeLocation = shaderProgram.getAttributeLocation(vertexAttribute.alias);
                if (attributeLocation >= 0) {
                    shaderProgram.enableVertexAttribute(attributeLocation);
                    if (vertexAttribute.type == 5126) {
                        this.f5127b.position(vertexAttribute.offset / 4);
                        shaderProgram.setVertexAttribute(attributeLocation, vertexAttribute.numComponents, vertexAttribute.type, vertexAttribute.normalized, this.f5126a.vertexSize, this.f5127b);
                    } else {
                        this.f5128d.position(vertexAttribute.offset);
                        shaderProgram.setVertexAttribute(attributeLocation, vertexAttribute.numComponents, vertexAttribute.type, vertexAttribute.normalized, this.f5126a.vertexSize, this.f5128d);
                    }
                }
                i++;
            }
        } else {
            while (i < size) {
                VertexAttribute vertexAttribute2 = this.f5126a.get(i);
                int i2 = iArr[i];
                if (i2 >= 0) {
                    shaderProgram.enableVertexAttribute(i2);
                    if (vertexAttribute2.type == 5126) {
                        this.f5127b.position(vertexAttribute2.offset / 4);
                        shaderProgram.setVertexAttribute(i2, vertexAttribute2.numComponents, vertexAttribute2.type, vertexAttribute2.normalized, this.f5126a.vertexSize, this.f5127b);
                    } else {
                        this.f5128d.position(vertexAttribute2.offset);
                        shaderProgram.setVertexAttribute(i2, vertexAttribute2.numComponents, vertexAttribute2.type, vertexAttribute2.normalized, this.f5126a.vertexSize, this.f5128d);
                    }
                }
                i++;
            }
        }
        this.f5129k = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void setVertices(float[] fArr, int i, int i2) {
        BufferUtils.copy(fArr, this.f5128d, i2, i);
        this.f5127b.position(0);
        this.f5127b.limit(i2);
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void unbind(ShaderProgram shaderProgram, int[] iArr) {
        int size = this.f5126a.size();
        if (iArr == null) {
            for (int i = 0; i < size; i++) {
                shaderProgram.disableVertexAttribute(this.f5126a.get(i).alias);
            }
        } else {
            for (int i2 = 0; i2 < size; i2++) {
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    shaderProgram.disableVertexAttribute(i3);
                }
            }
        }
        this.f5129k = false;
    }

    @Override // com.badlogic.gdx.graphics.glutils.VertexData
    public void updateVertices(int i, float[] fArr, int i2, int i3) {
        int position = this.f5128d.position();
        this.f5128d.position(i * 4);
        BufferUtils.copy(fArr, i2, i3, (Buffer) this.f5128d);
        this.f5128d.position(position);
    }
}
