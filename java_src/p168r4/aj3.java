package p168r4;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
/* renamed from: r4.aj3 */
/* loaded from: classes2.dex */
public abstract class aj3 implements c93 {

    /* renamed from: a */
    public final yi3 f20517a;

    /* renamed from: b */
    public final yi3 f20518b;

    @Override // p168r4.c93
    /* renamed from: a */
    public final byte[] mo6807a(byte[] bArr, byte[] bArr2) {
        int i;
        int length = bArr.length;
        if (length <= (Integer.MAX_VALUE - this.f20517a.mo4688c()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(this.f20517a.mo4688c() + length + 16);
            if (allocate.remaining() >= length + this.f20517a.mo4688c() + 16) {
                int position = allocate.position();
                this.f20517a.m4687d(allocate, bArr);
                allocate.position(position);
                byte[] bArr3 = new byte[this.f20517a.mo4688c()];
                allocate.get(bArr3);
                allocate.limit(allocate.limit() - 16);
                byte[] bArr4 = new byte[32];
                this.f20518b.m4686e(bArr3, 0).get(bArr4);
                int remaining = allocate.remaining();
                int i2 = remaining % 16;
                if (i2 == 0) {
                    i = remaining;
                } else {
                    i = (remaining + 16) - i2;
                }
                ByteBuffer order = ByteBuffer.allocate(i + 16).order(ByteOrder.LITTLE_ENDIAN);
                order.put(bArr2);
                order.position(0);
                order.put(allocate);
                order.position(i);
                order.putLong(0L);
                order.putLong(remaining);
                byte[] m6144a = vj3.m6144a(bArr4, order.array());
                allocate.limit(allocate.limit() + 16);
                allocate.put(m6144a);
                return allocate.array();
            }
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    /* renamed from: b */
    public abstract yi3 mo4199b(byte[] bArr, int i);

    public aj3(byte[] bArr) {
        if (ub3.m6560a(1)) {
            this.f20517a = mo4199b(bArr, 1);
            this.f20518b = mo4199b(bArr, 0);
            return;
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }
}
