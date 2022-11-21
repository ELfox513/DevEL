package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.utils.BufferUtils;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
/* loaded from: classes.dex */
public class IndexArray implements IndexData {

    /* renamed from: a */
    public final ShortBuffer f5034a;

    /* renamed from: b */
    public final ByteBuffer f5035b;

    /* renamed from: d */
    public final boolean f5036d;

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void bind() {
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        BufferUtils.disposeUnsafeByteBuffer(this.f5035b);
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public ShortBuffer getBuffer() {
        return this.f5034a;
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public int getNumIndices() {
        if (this.f5036d) {
            return 0;
        }
        return this.f5034a.limit();
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public int getNumMaxIndices() {
        if (this.f5036d) {
            return 0;
        }
        return this.f5034a.capacity();
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void invalidate() {
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void setIndices(short[] sArr, int i, int i2) {
        this.f5034a.clear();
        this.f5034a.put(sArr, i, i2);
        this.f5034a.flip();
        this.f5035b.position(0);
        this.f5035b.limit(i2 << 1);
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void unbind() {
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void updateIndices(int i, short[] sArr, int i2, int i3) {
        int position = this.f5035b.position();
        this.f5035b.position(i * 2);
        BufferUtils.copy(sArr, i2, (Buffer) this.f5035b, i3);
        this.f5035b.position(position);
    }

    public IndexArray(int i) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        this.f5036d = z;
        ByteBuffer newUnsafeByteBuffer = BufferUtils.newUnsafeByteBuffer((z ? 1 : i) * 2);
        this.f5035b = newUnsafeByteBuffer;
        ShortBuffer asShortBuffer = newUnsafeByteBuffer.asShortBuffer();
        this.f5034a = asShortBuffer;
        asShortBuffer.flip();
        newUnsafeByteBuffer.flip();
    }

    @Override // com.badlogic.gdx.graphics.glutils.IndexData
    public void setIndices(ShortBuffer shortBuffer) {
        int position = shortBuffer.position();
        this.f5034a.clear();
        this.f5034a.limit(shortBuffer.remaining());
        this.f5034a.put(shortBuffer);
        this.f5034a.flip();
        shortBuffer.position(position);
        this.f5035b.position(0);
        this.f5035b.limit(this.f5034a.limit() << 1);
    }
}
