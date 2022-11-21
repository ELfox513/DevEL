package p168r4;

import java.util.Arrays;
/* renamed from: r4.x93 */
/* loaded from: classes2.dex */
public final class x93<P> {

    /* renamed from: a */
    public final P f33526a;

    /* renamed from: b */
    public final byte[] f33527b;

    /* renamed from: c */
    public final int f33528c;

    /* renamed from: d */
    public final int f33529d;

    public x93(P p, byte[] bArr, int i, int i2, int i3) {
        this.f33526a = p;
        this.f33527b = Arrays.copyOf(bArr, bArr.length);
        this.f33528c = i;
        this.f33529d = i2;
    }

    /* renamed from: a */
    public final P m5444a() {
        return this.f33526a;
    }

    /* renamed from: b */
    public final byte[] m5443b() {
        byte[] bArr = this.f33527b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* renamed from: c */
    public final int m5442c() {
        return this.f33528c;
    }

    /* renamed from: d */
    public final int m5441d() {
        return this.f33529d;
    }
}
