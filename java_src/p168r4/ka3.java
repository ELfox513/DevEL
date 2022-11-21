package p168r4;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* renamed from: r4.ka3 */
/* loaded from: classes2.dex */
public final class ka3 {

    /* renamed from: a */
    public static final Charset f26358a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static oh3 m10080a(jh3 jh3Var) {
        lh3 m8798C = oh3.m8798C();
        m8798C.m9660v(jh3Var.m10286C());
        for (ih3 ih3Var : jh3Var.m10285D()) {
            mh3 m9094C = nh3.m9094C();
            m9094C.m9384v(ih3Var.m10658D().m5732C());
            m9094C.m9382z(ih3Var.m10655J());
            m9094C.m9385A(ih3Var.m10654K());
            m9094C.m9383x(ih3Var.m10657E());
            m8798C.m9659x(m9094C.m9614o());
        }
        return m8798C.m9614o();
    }

    /* renamed from: b */
    public static void m10079b(jh3 jh3Var) {
        boolean z;
        int m10286C = jh3Var.m10286C();
        int i = 0;
        boolean z2 = false;
        boolean z3 = true;
        for (ih3 ih3Var : jh3Var.m10285D()) {
            if (ih3Var.m10655J() == 3) {
                if (ih3Var.m10659C()) {
                    if (ih3Var.m10654K() != 2) {
                        if (ih3Var.m10655J() != 2) {
                            if (ih3Var.m10657E() == m10286C) {
                                if (!z2) {
                                    z2 = true;
                                } else {
                                    throw new GeneralSecurityException("keyset contains multiple primary keys");
                                }
                            }
                            if (ih3Var.m10658D().m5725M() != 5) {
                                z = false;
                            } else {
                                z = true;
                            }
                            z3 &= z;
                            i++;
                        } else {
                            throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(ih3Var.m10657E())));
                        }
                    } else {
                        throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(ih3Var.m10657E())));
                    }
                } else {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(ih3Var.m10657E())));
                }
            }
        }
        if (i != 0) {
            if (!z2 && !z3) {
                throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
            }
            return;
        }
        throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
    }
}
