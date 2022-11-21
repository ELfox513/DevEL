package p168r4;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: r4.jj3 */
/* loaded from: classes2.dex */
public final class jj3 implements c93 {

    /* renamed from: a */
    public final uj3 f26055a;

    /* renamed from: b */
    public final u93 f26056b;

    public jj3(uj3 uj3Var, u93 u93Var, int i) {
        this.f26055a = uj3Var;
        this.f26056b = u93Var;
    }

    @Override // p168r4.c93
    /* renamed from: a */
    public final byte[] mo6807a(byte[] bArr, byte[] bArr2) {
        byte[] mo4690a = this.f26055a.mo4690a(bArr);
        return wi3.m5715a(mo4690a, this.f26056b.mo4196a(wi3.m5715a(bArr2, mo4690a, Arrays.copyOf(ByteBuffer.allocate(8).putLong(0L).array(), 8))));
    }
}
