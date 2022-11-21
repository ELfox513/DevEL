package p168r4;

import java.util.Arrays;
/* renamed from: r4.xf */
/* loaded from: classes2.dex */
public final class C6427xf {

    /* renamed from: a */
    public final int f33579a = 1;

    /* renamed from: b */
    public final byte[] f33580b;

    public C6427xf(int i, byte[] bArr) {
        this.f33580b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C6427xf.class == obj.getClass() && Arrays.equals(this.f33580b, ((C6427xf) obj).f33580b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f33580b) + 31;
    }
}
