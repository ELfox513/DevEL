package p063f7;

import java.io.IOException;
import java.io.InputStream;
import p045d7.C3332b;
import p099j7.C4381h;
/* renamed from: f7.a */
/* loaded from: classes2.dex */
public final class C3526a extends InputStream {

    /* renamed from: a */
    public final InputStream f16013a;

    /* renamed from: b */
    public final C3332b f16014b;

    /* renamed from: d */
    public final C4381h f16015d;

    /* renamed from: p */
    public long f16017p;

    /* renamed from: k */
    public long f16016k = -1;

    /* renamed from: q */
    public long f16018q = -1;

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f16013a.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f16013a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            int read = this.f16013a.read();
            long m16732h = this.f16015d.m16732h();
            if (this.f16017p == -1) {
                this.f16017p = m16732h;
            }
            if (read == -1 && this.f16018q == -1) {
                this.f16018q = m16732h;
                this.f16014b.m19119J(m16732h);
                this.f16014b.m19115h();
            } else {
                long j = this.f16016k + 1;
                this.f16016k = j;
                this.f16014b.m19121F(j);
            }
            return read;
        } catch (IOException e) {
            this.f16014b.m19119J(this.f16015d.m16732h());
            C3536k.m18651d(this.f16014b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int available() {
        try {
            return this.f16013a.available();
        } catch (IOException e) {
            this.f16014b.m19119J(this.f16015d.m16732h());
            C3536k.m18651d(this.f16014b);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long m16732h = this.f16015d.m16732h();
        if (this.f16018q == -1) {
            this.f16018q = m16732h;
        }
        try {
            this.f16013a.close();
            long j = this.f16016k;
            if (j != -1) {
                this.f16014b.m19121F(j);
            }
            long j2 = this.f16017p;
            if (j2 != -1) {
                this.f16014b.m19118K(j2);
            }
            this.f16014b.m19119J(this.f16018q);
            this.f16014b.m19115h();
        } catch (IOException e) {
            this.f16014b.m19119J(this.f16015d.m16732h());
            C3536k.m18651d(this.f16014b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void reset() {
        try {
            this.f16013a.reset();
        } catch (IOException e) {
            this.f16014b.m19119J(this.f16015d.m16732h());
            C3536k.m18651d(this.f16014b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            long skip = this.f16013a.skip(j);
            long m16732h = this.f16015d.m16732h();
            if (this.f16017p == -1) {
                this.f16017p = m16732h;
            }
            if (skip == -1 && this.f16018q == -1) {
                this.f16018q = m16732h;
                this.f16014b.m19119J(m16732h);
            } else {
                long j2 = this.f16016k + skip;
                this.f16016k = j2;
                this.f16014b.m19121F(j2);
            }
            return skip;
        } catch (IOException e) {
            this.f16014b.m19119J(this.f16015d.m16732h());
            C3536k.m18651d(this.f16014b);
            throw e;
        }
    }

    public C3526a(InputStream inputStream, C3332b c3332b, C4381h c4381h) {
        this.f16015d = c4381h;
        this.f16013a = inputStream;
        this.f16014b = c3332b;
        this.f16017p = c3332b.m19112n();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.f16013a.read(bArr, i, i2);
            long m16732h = this.f16015d.m16732h();
            if (this.f16017p == -1) {
                this.f16017p = m16732h;
            }
            if (read == -1 && this.f16018q == -1) {
                this.f16018q = m16732h;
                this.f16014b.m19119J(m16732h);
                this.f16014b.m19115h();
            } else {
                long j = this.f16016k + read;
                this.f16016k = j;
                this.f16014b.m19121F(j);
            }
            return read;
        } catch (IOException e) {
            this.f16014b.m19119J(this.f16015d.m16732h());
            C3536k.m18651d(this.f16014b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            int read = this.f16013a.read(bArr);
            long m16732h = this.f16015d.m16732h();
            if (this.f16017p == -1) {
                this.f16017p = m16732h;
            }
            if (read == -1 && this.f16018q == -1) {
                this.f16018q = m16732h;
                this.f16014b.m19119J(m16732h);
                this.f16014b.m19115h();
            } else {
                long j = this.f16016k + read;
                this.f16016k = j;
                this.f16014b.m19121F(j);
            }
            return read;
        } catch (IOException e) {
            this.f16014b.m19119J(this.f16015d.m16732h());
            C3536k.m18651d(this.f16014b);
            throw e;
        }
    }
}
