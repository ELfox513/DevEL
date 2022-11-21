package p168r4;

import java.io.ByteArrayOutputStream;
/* renamed from: r4.v94 */
/* loaded from: classes2.dex */
public final class v94 extends ByteArrayOutputStream {

    /* renamed from: a */
    public final h94 f32657a;

    public final void finalize() {
        this.f32657a.m10956b(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        m6196c(1);
        super.write(i);
    }

    /* renamed from: c */
    public final void m6196c(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        int i3 = i2 + i;
        byte[] m10957a = this.f32657a.m10957a(i3 + i3);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, m10957a, 0, ((ByteArrayOutputStream) this).count);
        this.f32657a.m10956b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = m10957a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f32657a.m10956b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public v94(h94 h94Var, int i) {
        this.f32657a = h94Var;
        ((ByteArrayOutputStream) this).buf = h94Var.m10957a(Math.max(i, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        m6196c(i2);
        super.write(bArr, i, i2);
    }
}
