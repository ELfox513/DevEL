package p063f7;

import java.io.IOException;
import java.io.OutputStream;
import p045d7.C3332b;
import p099j7.C4381h;
/* renamed from: f7.b */
/* loaded from: classes2.dex */
public final class C3527b extends OutputStream {

    /* renamed from: a */
    public final OutputStream f16019a;

    /* renamed from: b */
    public final C4381h f16020b;

    /* renamed from: d */
    public C3332b f16021d;

    /* renamed from: k */
    public long f16022k = -1;

    @Override // java.io.OutputStream
    public void write(int i) {
        try {
            this.f16019a.write(i);
            long j = this.f16022k + 1;
            this.f16022k = j;
            this.f16021d.m19124C(j);
        } catch (IOException e) {
            this.f16021d.m19119J(this.f16020b.m16732h());
            C3536k.m18651d(this.f16021d);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j = this.f16022k;
        if (j != -1) {
            this.f16021d.m19124C(j);
        }
        this.f16021d.m19120I(this.f16020b.m16732h());
        try {
            this.f16019a.close();
        } catch (IOException e) {
            this.f16021d.m19119J(this.f16020b.m16732h());
            C3536k.m18651d(this.f16021d);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        try {
            this.f16019a.flush();
        } catch (IOException e) {
            this.f16021d.m19119J(this.f16020b.m16732h());
            C3536k.m18651d(this.f16021d);
            throw e;
        }
    }

    public C3527b(OutputStream outputStream, C3332b c3332b, C4381h c4381h) {
        this.f16019a = outputStream;
        this.f16021d = c3332b;
        this.f16020b = c4381h;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        try {
            this.f16019a.write(bArr);
            long length = this.f16022k + bArr.length;
            this.f16022k = length;
            this.f16021d.m19124C(length);
        } catch (IOException e) {
            this.f16021d.m19119J(this.f16020b.m16732h());
            C3536k.m18651d(this.f16021d);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        try {
            this.f16019a.write(bArr, i, i2);
            long j = this.f16022k + i2;
            this.f16022k = j;
            this.f16021d.m19124C(j);
        } catch (IOException e) {
            this.f16021d.m19119J(this.f16020b.m16732h());
            C3536k.m18651d(this.f16021d);
            throw e;
        }
    }
}
