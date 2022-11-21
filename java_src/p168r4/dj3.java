package p168r4;

import java.nio.ByteBuffer;
import java.security.interfaces.ECPublicKey;
/* renamed from: r4.dj3 */
/* loaded from: classes2.dex */
public final class dj3 implements h93 {

    /* renamed from: f */
    public static final byte[] f22295f = new byte[0];

    /* renamed from: a */
    public final gj3 f22296a;

    /* renamed from: b */
    public final String f22297b;

    /* renamed from: c */
    public final byte[] f22298c;

    /* renamed from: d */
    public final bj3 f22299d;

    /* renamed from: e */
    public final int f22300e;

    @Override // p168r4.h93
    /* renamed from: a */
    public final byte[] mo9409a(byte[] bArr, byte[] bArr2) {
        fj3 m11131a = this.f22296a.m11131a(this.f22297b, this.f22298c, bArr2, this.f22299d.zza(), this.f22300e);
        byte[] m7884a = this.f22299d.mo8358a(m11131a.m11501b()).m7884a(bArr, f22295f);
        byte[] m11502a = m11131a.m11502a();
        return ByteBuffer.allocate(m11502a.length + m7884a.length).put(m11502a).put(m7884a).array();
    }

    public dj3(ECPublicKey eCPublicKey, byte[] bArr, String str, int i, bj3 bj3Var) {
        hj3.m10904a(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f22296a = new gj3(eCPublicKey);
        this.f22298c = bArr;
        this.f22297b = str;
        this.f22300e = i;
        this.f22299d = bj3Var;
    }
}
