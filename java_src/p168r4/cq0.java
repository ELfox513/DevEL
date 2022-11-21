package p168r4;
/* renamed from: r4.cq0 */
/* loaded from: classes2.dex */
public final class cq0 extends aa4 {

    /* renamed from: c */
    public static final cq0 f21651c = new cq0();

    @Override // p168r4.aa4
    /* renamed from: b */
    public final ea4 mo12376b(String str, byte[] bArr, String str2) {
        if ("moov".equals(str)) {
            return new ga4();
        }
        if ("mvhd".equals(str)) {
            return new ha4();
        }
        return new ia4(str);
    }
}
