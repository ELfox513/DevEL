package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.lb3 */
/* loaded from: classes2.dex */
public final class lb3 implements c93 {

    /* renamed from: c */
    public static final byte[] f27161c = new byte[0];

    /* renamed from: a */
    public final zg3 f27162a;

    /* renamed from: b */
    public final c93 f27163b;

    public lb3(zg3 zg3Var, c93 c93Var) {
        this.f27162a = zg3Var;
        this.f27163b = c93Var;
    }

    @Override // p168r4.c93
    /* renamed from: a */
    public final byte[] mo6807a(byte[] bArr, byte[] bArr2) {
        byte[] mo6490t = ja3.m10361h(this.f27162a).mo6490t();
        byte[] mo6807a = this.f27163b.mo6807a(mo6490t, f27161c);
        byte[] mo6807a2 = ((c93) ja3.m10359j(this.f27162a.m4256C(), mo6490t, c93.class)).mo6807a(bArr, bArr2);
        int length = mo6807a.length;
        return ByteBuffer.allocate(length + 4 + mo6807a2.length).putInt(length).put(mo6807a).put(mo6807a2).array();
    }
}
