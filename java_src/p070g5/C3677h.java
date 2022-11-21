package p070g5;

import android.os.Bundle;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: g5.h */
/* loaded from: classes2.dex */
public final class C3677h {

    /* renamed from: c */
    public static final C3677h f16563c = new C3677h(null, null);

    /* renamed from: a */
    public final Boolean f16564a;

    /* renamed from: b */
    public final Boolean f16565b;

    public C3677h(Boolean bool, Boolean bool2) {
        this.f16564a = bool;
        this.f16565b = bool2;
    }

    /* renamed from: b */
    public static C3677h m18279b(String str) {
        Boolean bool;
        Boolean bool2;
        if (str != null) {
            if (str.length() >= 3) {
                bool2 = m18265p(str.charAt(2));
            } else {
                bool2 = null;
            }
            bool = str.length() >= 4 ? m18265p(str.charAt(3)) : null;
            r0 = bool2;
        } else {
            bool = null;
        }
        return new C3677h(r0, bool);
    }

    /* renamed from: g */
    public static Boolean m18274g(Boolean bool, Boolean bool2) {
        if (bool == null) {
            return bool2;
        }
        if (bool2 == null) {
            return bool;
        }
        boolean z = false;
        if (bool.booleanValue() && bool2.booleanValue()) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: l */
    public static boolean m18269l(int i, int i2) {
        return i <= i2;
    }

    /* renamed from: n */
    public static final int m18267n(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    /* renamed from: o */
    public static Boolean m18266o(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    /* renamed from: p */
    public static Boolean m18265p(char c) {
        if (c != '0') {
            if (c != '1') {
                return null;
            }
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /* renamed from: q */
    public static final char m18264q(Boolean bool) {
        return bool == null ? SignatureVisitor.SUPER : bool.booleanValue() ? '1' : '0';
    }

    /* renamed from: e */
    public final Boolean m18276e() {
        return this.f16564a;
    }

    /* renamed from: f */
    public final Boolean m18275f() {
        return this.f16565b;
    }

    /* renamed from: j */
    public final boolean m18271j() {
        Boolean bool = this.f16564a;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: k */
    public final boolean m18270k() {
        Boolean bool = this.f16565b;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: m */
    public final boolean m18268m(C3677h c3677h) {
        Boolean bool = this.f16564a;
        Boolean bool2 = Boolean.FALSE;
        if (bool != bool2 || c3677h.f16564a == bool2) {
            return this.f16565b == bool2 && c3677h.f16565b != bool2;
        }
        return true;
    }

    /* renamed from: a */
    public static C3677h m18280a(Bundle bundle) {
        if (bundle == null) {
            return f16563c;
        }
        return new C3677h(m18266o(bundle.getString("ad_storage")), m18266o(bundle.getString("analytics_storage")));
    }

    /* renamed from: h */
    public static String m18273h(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string != null && m18266o(string) == null) {
            return string;
        }
        String string2 = bundle.getString("analytics_storage");
        if (string2 != null && m18266o(string2) == null) {
            return string2;
        }
        return null;
    }

    /* renamed from: c */
    public final C3677h m18278c(C3677h c3677h) {
        return new C3677h(m18274g(this.f16564a, c3677h.f16564a), m18274g(this.f16565b, c3677h.f16565b));
    }

    /* renamed from: d */
    public final C3677h m18277d(C3677h c3677h) {
        Boolean bool = this.f16564a;
        if (bool == null) {
            bool = c3677h.f16564a;
        }
        Boolean bool2 = this.f16565b;
        if (bool2 == null) {
            bool2 = c3677h.f16565b;
        }
        return new C3677h(bool, bool2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3677h)) {
            return false;
        }
        C3677h c3677h = (C3677h) obj;
        if (m18267n(this.f16564a) != m18267n(c3677h.f16564a) || m18267n(this.f16565b) != m18267n(c3677h.f16565b)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((m18267n(this.f16564a) + 527) * 31) + m18267n(this.f16565b);
    }

    /* renamed from: i */
    public final String m18272i() {
        return "G1" + m18264q(this.f16564a) + m18264q(this.f16565b);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.f16564a;
        String str2 = "denied";
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            if (true != bool.booleanValue()) {
                str = "denied";
            } else {
                str = "granted";
            }
            sb.append(str);
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.f16565b;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            if (true == bool2.booleanValue()) {
                str2 = "granted";
            }
            sb.append(str2);
        }
        return sb.toString();
    }
}
