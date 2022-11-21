package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
/* loaded from: classes.dex */
public class IndexBufferObject implements IndexData {

    /* renamed from: a */
    public final ShortBuffer f5037a;

    /* renamed from: b */
    public final ByteBuffer f5038b;

    /* renamed from: d */
    public final boolean f5039d;

    /* renamed from: k */
    public int f5040k;

    /* renamed from: p */
    public final boolean f5041p;

    /* renamed from: q */
    public boolean f5042q;

    /* renamed from: r */
    public boolean f5043r;

    /* renamed from: s */
    public final int f5044s;

    /* renamed from: t */
    public final boolean f5045t;

    public IndexBufferObject(int i) {
        this(true, i);
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public ShortBuffer getBuffer() {
        this.f5042q = true;
        return this.f5037a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public int getNumIndices() {
        if (this.f5045t) {
            return 0;
        }
        return this.f5037a.limit();
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public int getNumMaxIndices() {
        if (this.f5045t) {
            return 0;
        }
        return this.f5037a.capacity();
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void setIndices(short[] sArr, int i, int i2) {
        this.f5042q = true;
        this.f5037a.clear();
        this.f5037a.put(sArr, i, i2);
        this.f5037a.flip();
        this.f5038b.position(0);
        this.f5038b.limit(i2 << 1);
        if (this.f5043r) {
            Gdx.gl20.glBufferData(GL20.GL_ELEMENT_ARRAY_BUFFER, this.f5038b.limit(), this.f5038b, this.f5044s);
            this.f5042q = false;
        }
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void updateIndices(int i, short[] sArr, int i2, int i3) {
        this.f5042q = true;
        int position = this.f5038b.position();
        this.f5038b.position(i * 2);
        BufferUtils.copy(sArr, i2, (Buffer) this.f5038b, i3);
        this.f5038b.position(position);
        this.f5037a.position(0);
        if (this.f5043r) {
            Gdx.gl20.glBufferData(GL20.GL_ELEMENT_ARRAY_BUFFER, this.f5038b.limit(), this.f5038b, this.f5044s);
            this.f5042q = false;
        }
    }

    public IndexBufferObject(boolean z, int i) {
        this.f5042q = true;
        this.f5043r = false;
        boolean z2 = i == 0;
        this.f5045t = z2;
        ByteBuffer newUnsafeByteBuffer = BufferUtils.newUnsafeByteBuffer((z2 ? 1 : i) * 2);
        this.f5038b = newUnsafeByteBuffer;
        this.f5041p = true;
        ShortBuffer asShortBuffer = newUnsafeByteBuffer.asShortBuffer();
        this.f5037a = asShortBuffer;
        this.f5039d = true;
        asShortBuffer.flip();
        newUnsafeByteBuffer.flip();
        this.f5040k = Gdx.gl20.glGenBuffer();
        this.f5044s = z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void bind() {
        int i = this.f5040k;
        if (i != 0) {
            Gdx.gl20.glBindBuffer(GL20.GL_ELEMENT_ARRAY_BUFFER, i);
            if (this.f5042q) {
                this.f5038b.limit(this.f5037a.limit() * 2);
                Gdx.gl20.glBufferData(GL20.GL_ELEMENT_ARRAY_BUFFER, this.f5038b.limit(), this.f5038b, this.f5044s);
                this.f5042q = false;
            }
            this.f5043r = true;
            return;
        }
        throw new GdxRuntimeException("No buffer allocated!");
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Gdx.gl20.glBindBuffer(GL20.GL_ELEMENT_ARRAY_BUFFER, 0);
        Gdx.gl20.glDeleteBuffer(this.f5040k);
        this.f5040k = 0;
        if (this.f5039d) {
            BufferUtils.disposeUnsafeByteBuffer(this.f5038b);
        }
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void invalidate() {
        this.f5040k = Gdx.gl20.glGenBuffer();
        this.f5042q = true;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void unbind() {
        Gdx.gl20.glBindBuffer(GL20.GL_ELEMENT_ARRAY_BUFFER, 0);
        this.f5043r = false;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void setIndices(ShortBuffer shortBuffer) {
        this.f5042q = true;
        int position = shortBuffer.position();
        this.f5037a.clear();
        this.f5037a.put(shortBuffer);
        this.f5037a.flip();
        shortBuffer.position(position);
        this.f5038b.position(0);
        this.f5038b.limit(this.f5037a.limit() << 1);
        if (this.f5043r) {
            Gdx.gl20.glBufferData(GL20.GL_ELEMENT_ARRAY_BUFFER, this.f5038b.limit(), this.f5038b, this.f5044s);
            this.f5042q = false;
        }
    }

    public IndexBufferObject(boolean z, ByteBuffer byteBuffer) {
        this.f5042q = true;
        this.f5043r = false;
        this.f5045t = byteBuffer.limit() == 0;
        this.f5038b = byteBuffer;
        this.f5041p = true;
        this.f5037a = byteBuffer.asShortBuffer();
        this.f5039d = false;
        this.f5040k = Gdx.gl20.glGenBuffer();
        this.f5044s = z ? GL20.GL_STATIC_DRAW : GL20.GL_DYNAMIC_DRAW;
    }
}
