package com.prineside.tdi2.utils;

import java.io.OutputStream;
/* loaded from: classes2.dex */
public class MultiOutputStream extends OutputStream {

    /* renamed from: a */
    public OutputStream[] f15107a;

    @Override // java.io.OutputStream
    public void write(int i) {
        for (OutputStream outputStream : this.f15107a) {
            outputStream.write(i);
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        for (OutputStream outputStream : this.f15107a) {
            outputStream.close();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        for (OutputStream outputStream : this.f15107a) {
            outputStream.flush();
        }
    }

    public MultiOutputStream(OutputStream... outputStreamArr) {
        this.f15107a = outputStreamArr;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        for (OutputStream outputStream : this.f15107a) {
            outputStream.write(bArr);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        for (OutputStream outputStream : this.f15107a) {
            outputStream.write(bArr, i, i2);
        }
    }
}
