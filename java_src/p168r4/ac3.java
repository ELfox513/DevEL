package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.ac3 */
/* loaded from: classes2.dex */
public final class ac3 {

    /* renamed from: a */
    public static final String f20459a;
    @Deprecated

    /* renamed from: b */
    public static final fi3 f20460b;
    @Deprecated

    /* renamed from: c */
    public static final fi3 f20461c;

    static {
        new zb3();
        f20459a = "type.googleapis.com/google.crypto.tink.AesSivKey";
        f20460b = fi3.m11507D();
        f20461c = fi3.m11507D();
        try {
            ja3.m10364e(new cc3());
            if (vb3.m6175a()) {
                return;
            }
            ja3.m10366c(new zb3(), true);
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
