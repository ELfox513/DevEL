package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.Kryo;
import java.io.ObjectOutput;
/* renamed from: com.esotericsoftware.kryo.io.KryoObjectOutput */
/* loaded from: classes.dex */
public class KryoObjectOutput extends KryoDataOutput implements ObjectOutput {

    /* renamed from: a */
    public final Kryo f7278a;

    @Override // com.esotericsoftware.kryo.p035io.KryoDataOutput, java.lang.AutoCloseable
    public void close() {
        this.output.close();
    }

    @Override // java.io.ObjectOutput
    public void flush() {
        this.output.flush();
    }

    @Override // java.io.ObjectOutput
    public void writeObject(Object obj) {
        this.f7278a.writeClassAndObject(this.output, obj);
    }

    public KryoObjectOutput(Kryo kryo, Output output) {
        super(output);
        this.f7278a = kryo;
    }
}
