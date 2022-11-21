package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.Kryo;
import java.io.ObjectInput;
/* renamed from: com.esotericsoftware.kryo.io.KryoObjectInput */
/* loaded from: classes.dex */
public class KryoObjectInput extends KryoDataInput implements ObjectInput {

    /* renamed from: a */
    public final Kryo f7277a;

    @Override // java.io.ObjectInput
    public int available() {
        return 0;
    }

    @Override // com.esotericsoftware.kryo.p035io.KryoDataInput, java.lang.AutoCloseable
    public void close() {
        this.input.close();
    }

    @Override // java.io.ObjectInput
    public int read() {
        return this.input.read();
    }

    @Override // java.io.ObjectInput
    public Object readObject() {
        return this.f7277a.readClassAndObject(this.input);
    }

    @Override // java.io.ObjectInput
    public long skip(long j) {
        return this.input.skip(j);
    }

    @Override // java.io.ObjectInput
    public int read(byte[] bArr) {
        return this.input.read(bArr);
    }

    public KryoObjectInput(Kryo kryo, Input input) {
        super(input);
        this.f7277a = kryo;
    }

    @Override // java.io.ObjectInput
    public int read(byte[] bArr, int i, int i2) {
        return this.input.read(bArr, i, i2);
    }
}
