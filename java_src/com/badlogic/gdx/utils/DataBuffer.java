package com.badlogic.gdx.utils;

import com.badlogic.gdx.utils.StreamUtils;
import java.io.DataOutputStream;
/* loaded from: classes.dex */
public class DataBuffer extends DataOutput {

    /* renamed from: a */
    public final StreamUtils.OptimizedByteArrayOutputStream f6437a;

    public DataBuffer() {
        this(32);
    }

    public byte[] getBuffer() {
        return this.f6437a.getBuffer();
    }

    public byte[] toArray() {
        return this.f6437a.toByteArray();
    }

    public DataBuffer(int i) {
        super(new StreamUtils.OptimizedByteArrayOutputStream(i));
        this.f6437a = (StreamUtils.OptimizedByteArrayOutputStream) ((DataOutputStream) this).out;
    }
}
