package com.prineside.tdi2.utils;

import java.io.OutputStream;
/* loaded from: classes2.dex */
public class MultiOutputStreamSync extends OutputStream {

    /* renamed from: a */
    public OutputStream[] f15108a;
    public final Object synchronizer = new Object();

    @Override // java.io.OutputStream
    public void write(int i) {
        synchronized (this.synchronizer) {
            for (OutputStream outputStream : this.f15108a) {
                outputStream.write(i);
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.synchronizer) {
            for (OutputStream outputStream : this.f15108a) {
                outputStream.close();
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        synchronized (this.synchronizer) {
            for (OutputStream outputStream : this.f15108a) {
                outputStream.flush();
            }
        }
    }

    public MultiOutputStreamSync(OutputStream... outputStreamArr) {
        this.f15108a = outputStreamArr;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        synchronized (this.synchronizer) {
            for (OutputStream outputStream : this.f15108a) {
                outputStream.write(bArr);
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        synchronized (this.synchronizer) {
            for (OutputStream outputStream : this.f15108a) {
                outputStream.write(bArr, i, i2);
            }
        }
    }
}
