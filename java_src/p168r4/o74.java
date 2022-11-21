package p168r4;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: r4.o74 */
/* loaded from: classes2.dex */
public final class o74 implements p74 {

    /* renamed from: a */
    public final ByteBuffer f28919a;

    public o74(ByteBuffer byteBuffer) {
        this.f28919a = byteBuffer.slice();
    }

    @Override // p168r4.p74
    public final long zza() {
        return this.f28919a.capacity();
    }

    @Override // p168r4.p74
    /* renamed from: a */
    public final void mo7955a(MessageDigest[] messageDigestArr, long j, int i) {
        ByteBuffer slice;
        synchronized (this.f28919a) {
            int i2 = (int) j;
            this.f28919a.position(i2);
            this.f28919a.limit(i2 + i);
            slice = this.f28919a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }
}
