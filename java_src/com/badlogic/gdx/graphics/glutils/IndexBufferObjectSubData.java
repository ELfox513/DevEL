package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
/* loaded from: classes.dex */
public class IndexBufferObjectSubData implements IndexData {

    /* renamed from: a */
    public final ShortBuffer f5046a;

    /* renamed from: b */
    public final ByteBuffer f5047b;

    /* renamed from: d */
    public int f5048d;

    /* renamed from: k */
    public final boolean f5049k;

    /* renamed from: p */
    public boolean f5050p = true;

    /* renamed from: q */
    public boolean f5051q = false;

    /* renamed from: r */
    public final int f5052r;

    public IndexBufferObjectSubData(boolean z, int i) {
        ByteBuffer newByteBuffer = BufferUtils.newByteBuffer(i * 2);
        this.f5047b = newByteBuffer;
        this.f5049k = true;
        this.f5052r = z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW;
        ShortBuffer asShortBuffer = newByteBuffer.asShortBuffer();
        this.f5046a = asShortBuffer;
        asShortBuffer.flip();
        newByteBuffer.flip();
        this.f5048d = m24016a();
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public ShortBuffer getBuffer() {
        this.f5050p = true;
        return this.f5046a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public int getNumIndices() {
        return this.f5046a.limit();
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public int getNumMaxIndices() {
        return this.f5046a.capacity();
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void setIndices(short[] sArr, int i, int i2) {
        this.f5050p = true;
        this.f5046a.clear();
        this.f5046a.put(sArr, i, i2);
        this.f5046a.flip();
        this.f5047b.position(0);
        this.f5047b.limit(i2 << 1);
        if (this.f5051q) {
            Gdx.gl20.glBufferSubData(GL20.GL_ELEMENT_ARRAY_BUFFER, 0, this.f5047b.limit(), this.f5047b);
            this.f5050p = false;
        }
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void updateIndices(int i, short[] sArr, int i2, int i3) {
        this.f5050p = true;
        int position = this.f5047b.position();
        this.f5047b.position(i * 2);
        BufferUtils.copy(sArr, i2, (Buffer) this.f5047b, i3);
        this.f5047b.position(position);
        this.f5046a.position(0);
        if (this.f5051q) {
            Gdx.gl20.glBufferSubData(GL20.GL_ELEMENT_ARRAY_BUFFER, 0, this.f5047b.limit(), this.f5047b);
            this.f5050p = false;
        }
    }

    /* renamed from: a */
    public final int m24016a() {
        int glGenBuffer = Gdx.gl20.glGenBuffer();
        Gdx.gl20.glBindBuffer(GL20.GL_ELEMENT_ARRAY_BUFFER, glGenBuffer);
        Gdx.gl20.glBufferData(GL20.GL_ELEMENT_ARRAY_BUFFER, this.f5047b.capacity(), null, this.f5052r);
        Gdx.gl20.glBindBuffer(GL20.GL_ELEMENT_ARRAY_BUFFER, 0);
        return glGenBuffer;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void bind() {
        int i = this.f5048d;
        if (i != 0) {
            Gdx.gl20.glBindBuffer(GL20.GL_ELEMENT_ARRAY_BUFFER, i);
            if (this.f5050p) {
                this.f5047b.limit(this.f5046a.limit() * 2);
                Gdx.gl20.glBufferSubData(GL20.GL_ELEMENT_ARRAY_BUFFER, 0, this.f5047b.limit(), this.f5047b);
                this.f5050p = false;
            }
            this.f5051q = true;
            return;
        }
        throw new GdxRuntimeException("IndexBufferObject cannot be used after it has been disposed.");
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        GL20 gl20 = Gdx.gl20;
        gl20.glBindBuffer(GL20.GL_ELEMENT_ARRAY_BUFFER, 0);
        gl20.glDeleteBuffer(this.f5048d);
        this.f5048d = 0;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void unbind() {
        Gdx.gl20.glBindBuffer(GL20.GL_ELEMENT_ARRAY_BUFFER, 0);
        this.f5051q = false;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void invalidate() {
        this.f5048d = m24016a();
        this.f5050p = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void setIndices(ShortBuffer shortBuffer) {
        int position = shortBuffer.position();
        this.f5050p = true;
        this.f5046a.clear();
        this.f5046a.put(shortBuffer);
        this.f5046a.flip();
        shortBuffer.position(position);
        this.f5047b.position(0);
        this.f5047b.limit(this.f5046a.limit() << 1);
        if (this.f5051q) {
            Gdx.gl20.glBufferSubData(GL20.GL_ELEMENT_ARRAY_BUFFER, 0, this.f5047b.limit(), this.f5047b);
            this.f5050p = false;
        }
    }

    public IndexBufferObjectSubData(int i) {
        ByteBuffer newByteBuffer = BufferUtils.newByteBuffer(i * 2);
        this.f5047b = newByteBuffer;
        this.f5049k = true;
        this.f5052r = GL20.GL_STATIC_DRAW;
        ShortBuffer asShortBuffer = newByteBuffer.asShortBuffer();
        this.f5046a = asShortBuffer;
        asShortBuffer.flip();
        newByteBuffer.flip();
        this.f5048d = m24016a();
    }
}
