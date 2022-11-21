package p168r4;

import java.security.InvalidAlgorithmParameterException;
/* renamed from: r4.zj3 */
/* loaded from: classes2.dex */
public final class zj3 implements u93 {

    /* renamed from: a */
    public final cd3 f34653a;

    /* renamed from: b */
    public final int f34654b;

    @Override // p168r4.u93
    /* renamed from: a */
    public final byte[] mo4196a(byte[] bArr) {
        return this.f34653a.mo4663a(bArr, this.f34654b);
    }

    public zj3(cd3 cd3Var, int i) {
        this.f34653a = cd3Var;
        this.f34654b = i;
        if (i >= 10) {
            cd3Var.mo4663a(new byte[0], i);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }
}
