package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.la3 */
/* loaded from: classes2.dex */
public final class la3 {

    /* renamed from: a */
    public static final String f27150a;

    /* renamed from: b */
    public static final String f27151b;
    @Deprecated

    /* renamed from: c */
    public static final fi3 f27152c;
    @Deprecated

    /* renamed from: d */
    public static final fi3 f27153d;
    @Deprecated

    /* renamed from: e */
    public static final fi3 f27154e;

    static {
        new ra3();
        f27150a = "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
        new bb3();
        f27151b = "type.googleapis.com/google.crypto.tink.AesGcmKey";
        new eb3();
        new ya3();
        new kb3();
        new ob3();
        new hb3();
        new rb3();
        fi3 m11507D = fi3.m11507D();
        f27152c = m11507D;
        f27153d = m11507D;
        f27154e = m11507D;
        try {
            m9757a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m9757a() {
        ja3.m10364e(new oa3());
        xc3.m5369a();
        ja3.m10366c(new ra3(), true);
        ja3.m10366c(new bb3(), true);
        if (vb3.m6175a()) {
            return;
        }
        ja3.m10366c(new ya3(), true);
        eb3.m11827k(true);
        ja3.m10366c(new hb3(), true);
        ja3.m10366c(new kb3(), true);
        ja3.m10366c(new ob3(), true);
        ja3.m10366c(new rb3(), true);
    }
}
