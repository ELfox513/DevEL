package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.r93 */
/* loaded from: classes2.dex */
public final class r93 {

    /* renamed from: a */
    public final jh3 f30509a;

    public r93(jh3 jh3Var) {
        this.f30509a = jh3Var;
    }

    /* renamed from: a */
    public static final r93 m7570a(jh3 jh3Var) {
        if (jh3Var != null && jh3Var.m10284E() > 0) {
            return new r93(jh3Var);
        }
        throw new GeneralSecurityException("empty keyset");
    }

    public final String toString() {
        return ka3.m10080a(this.f30509a).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final <P> P m7569b(Class<P> cls) {
        String str;
        Class<?> m10355n = ja3.m10355n(cls);
        if (m10355n == null) {
            String name = cls.getName();
            if (name.length() != 0) {
                str = "No wrapper found for ".concat(name);
            } else {
                str = new String("No wrapper found for ");
            }
            throw new GeneralSecurityException(str);
        }
        ka3.m10079b(this.f30509a);
        aa3 m13036b = aa3.m13036b(m10355n);
        for (ih3 ih3Var : this.f30509a.m10285D()) {
            if (ih3Var.m10655J() == 3) {
                x93 m13034d = m13036b.m13034d(ja3.m10358k(ih3Var.m10658D(), m10355n), ih3Var);
                if (ih3Var.m10657E() == this.f30509a.m10286C()) {
                    m13036b.m13035c(m13034d);
                }
            }
        }
        return (P) ja3.m10357l(m13036b, cls);
    }
}
