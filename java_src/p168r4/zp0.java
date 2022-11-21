package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.zp0 */
/* loaded from: classes2.dex */
public final class zp0 implements gr3 {

    /* renamed from: a */
    public final ByteBuffer f34701a;

    public zp0(ByteBuffer byteBuffer) {
        this.f34701a = byteBuffer.duplicate();
    }

    @Override // p168r4.gr3
    /* renamed from: a */
    public final long mo4150a() {
        return this.f34701a.limit();
    }

    @Override // p168r4.gr3
    /* renamed from: b */
    public final long mo4149b() {
        return this.f34701a.position();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p168r4.gr3
    /* renamed from: x */
    public final void mo4147x(long j) {
        this.f34701a.position((int) j);
    }

    @Override // p168r4.gr3
    /* renamed from: J0 */
    public final int mo4151J0(ByteBuffer byteBuffer) {
        if (this.f34701a.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), this.f34701a.remaining());
        byte[] bArr = new byte[min];
        this.f34701a.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // p168r4.gr3
    /* renamed from: l */
    public final ByteBuffer mo4148l(long j, long j2) {
        int position = this.f34701a.position();
        this.f34701a.position((int) j);
        ByteBuffer slice = this.f34701a.slice();
        slice.limit((int) j2);
        this.f34701a.position(position);
        return slice;
    }
}
