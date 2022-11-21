package p099j7;

import android.os.Bundle;
import p029c7.C1078a;
/* renamed from: j7.d */
/* loaded from: classes2.dex */
public final class C4371d {

    /* renamed from: b */
    public static final C1078a f18279b = C1078a.m24639e();

    /* renamed from: a */
    public final Bundle f18280a;

    public C4371d() {
        this(new Bundle());
    }

    /* renamed from: a */
    public boolean m16745a(String str) {
        return str != null && this.f18280a.containsKey(str);
    }

    public C4371d(Bundle bundle) {
        this.f18280a = (Bundle) bundle.clone();
    }

    /* renamed from: b */
    public C4372e<Boolean> m16744b(String str) {
        if (!m16745a(str)) {
            return C4372e.m16740a();
        }
        try {
            return C4372e.m16739b((Boolean) this.f18280a.get(str));
        } catch (ClassCastException e) {
            f18279b.m24642b("Metadata key %s contains type other than boolean: %s", str, e.getMessage());
            return C4372e.m16740a();
        }
    }

    /* renamed from: c */
    public C4372e<Float> m16743c(String str) {
        if (!m16745a(str)) {
            return C4372e.m16740a();
        }
        try {
            return C4372e.m16739b((Float) this.f18280a.get(str));
        } catch (ClassCastException e) {
            f18279b.m24642b("Metadata key %s contains type other than float: %s", str, e.getMessage());
            return C4372e.m16740a();
        }
    }

    /* renamed from: d */
    public final C4372e<Integer> m16742d(String str) {
        if (!m16745a(str)) {
            return C4372e.m16740a();
        }
        try {
            return C4372e.m16739b((Integer) this.f18280a.get(str));
        } catch (ClassCastException e) {
            f18279b.m24642b("Metadata key %s contains type other than int: %s", str, e.getMessage());
            return C4372e.m16740a();
        }
    }

    /* renamed from: e */
    public C4372e<Long> m16741e(String str) {
        C4372e<Integer> m16742d = m16742d(str);
        if (m16742d.m16737d()) {
            return C4372e.m16736e(Long.valueOf(m16742d.m16738c().intValue()));
        }
        return C4372e.m16740a();
    }
}
