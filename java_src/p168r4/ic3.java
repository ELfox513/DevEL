package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.ic3 */
/* loaded from: classes2.dex */
public final class ic3 {
    @Deprecated

    /* renamed from: a */
    public static final fi3 f25040a;
    @Deprecated

    /* renamed from: b */
    public static final fi3 f25041b;
    @Deprecated

    /* renamed from: c */
    public static final fi3 f25042c;

    static {
        new hc3();
        new fc3();
        f25040a = fi3.m11507D();
        f25041b = fi3.m11507D();
        f25042c = fi3.m11507D();
        try {
            ja3.m10364e(new kc3());
            ja3.m10364e(new nc3());
            la3.m9757a();
            if (vb3.m6175a()) {
                return;
            }
            ja3.m10365d(new fc3(), new hc3(), true);
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
