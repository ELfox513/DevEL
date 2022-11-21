package p168r4;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: r4.k94 */
/* loaded from: classes2.dex */
public final class k94 extends FilterInputStream {

    /* renamed from: a */
    public final long f26351a;

    /* renamed from: b */
    public long f26352b;

    public k94(InputStream inputStream, long j) {
        super(inputStream);
        this.f26351a = j;
    }

    /* renamed from: c */
    public final long m10083c() {
        return this.f26351a - this.f26352b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = super.read();
        if (read != -1) {
            this.f26352b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f26352b += read;
        }
        return read;
    }
}
