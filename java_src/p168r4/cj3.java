package p168r4;

import java.security.interfaces.ECPrivateKey;
/* renamed from: r4.cj3 */
/* loaded from: classes2.dex */
public final class cj3 implements g93 {

    /* renamed from: a */
    public final ECPrivateKey f21562a;

    /* renamed from: b */
    public final ej3 f21563b;

    /* renamed from: c */
    public final String f21564c;

    /* renamed from: d */
    public final byte[] f21565d;

    /* renamed from: e */
    public final bj3 f21566e;

    public cj3(ECPrivateKey eCPrivateKey, byte[] bArr, String str, int i, bj3 bj3Var) {
        this.f21562a = eCPrivateKey;
        this.f21563b = new ej3(eCPrivateKey);
        this.f21565d = bArr;
        this.f21564c = str;
        this.f21566e = bj3Var;
    }
}
