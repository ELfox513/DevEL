package p070g5;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import p220x3.C7297q;
/* renamed from: g5.g5 */
/* loaded from: classes2.dex */
public final class C3671g5 {

    /* renamed from: A */
    public long f16517A;

    /* renamed from: B */
    public long f16518B;

    /* renamed from: C */
    public String f16519C;

    /* renamed from: D */
    public boolean f16520D;

    /* renamed from: E */
    public long f16521E;

    /* renamed from: F */
    public long f16522F;

    /* renamed from: a */
    public final C3611b5 f16523a;

    /* renamed from: b */
    public final String f16524b;

    /* renamed from: c */
    public String f16525c;

    /* renamed from: d */
    public String f16526d;

    /* renamed from: e */
    public String f16527e;

    /* renamed from: f */
    public String f16528f;

    /* renamed from: g */
    public long f16529g;

    /* renamed from: h */
    public long f16530h;

    /* renamed from: i */
    public long f16531i;

    /* renamed from: j */
    public String f16532j;

    /* renamed from: k */
    public long f16533k;

    /* renamed from: l */
    public String f16534l;

    /* renamed from: m */
    public long f16535m;

    /* renamed from: n */
    public long f16536n;

    /* renamed from: o */
    public boolean f16537o;

    /* renamed from: p */
    public long f16538p;

    /* renamed from: q */
    public boolean f16539q;

    /* renamed from: r */
    public String f16540r;

    /* renamed from: s */
    public Boolean f16541s;

    /* renamed from: t */
    public long f16542t;

    /* renamed from: u */
    public List<String> f16543u;

    /* renamed from: v */
    public String f16544v;

    /* renamed from: w */
    public long f16545w;

    /* renamed from: x */
    public long f16546x;

    /* renamed from: y */
    public long f16547y;

    /* renamed from: z */
    public long f16548z;

    /* renamed from: D */
    public final void m18340D(long j) {
        boolean z;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1892a(z);
        this.f16523a.mo17855P().mo17839c();
        this.f16520D = (this.f16529g != j) | this.f16520D;
        this.f16529g = j;
    }

    /* renamed from: A */
    public final long m18343A() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16538p;
    }

    /* renamed from: B */
    public final void m18342B(String str) {
        this.f16523a.mo17855P().mo17839c();
        this.f16520D |= !C3700ia.m18185Z(this.f16519C, str);
        this.f16519C = str;
    }

    /* renamed from: C */
    public final void m18341C(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16531i != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16531i = j;
    }

    /* renamed from: E */
    public final void m18339E(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16530h != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16530h = j;
    }

    /* renamed from: F */
    public final void m18338F(boolean z) {
        boolean z2;
        this.f16523a.mo17855P().mo17839c();
        boolean z3 = this.f16520D;
        if (this.f16537o != z) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f16520D = z3 | z2;
        this.f16537o = z;
    }

    /* renamed from: G */
    public final void m18337G(Boolean bool) {
        boolean equals;
        this.f16523a.mo17855P().mo17839c();
        boolean z = this.f16520D;
        Boolean bool2 = this.f16541s;
        String[] strArr = C3700ia.f16635g;
        if (bool2 == null && bool == null) {
            equals = true;
        } else if (bool2 == null) {
            equals = false;
        } else {
            equals = bool2.equals(bool);
        }
        this.f16520D = z | (!equals);
        this.f16541s = bool;
    }

    /* renamed from: H */
    public final void m18336H(String str) {
        this.f16523a.mo17855P().mo17839c();
        this.f16520D |= !C3700ia.m18185Z(this.f16527e, str);
        this.f16527e = str;
    }

    /* renamed from: I */
    public final void m18335I(List<String> list) {
        ArrayList arrayList;
        this.f16523a.mo17855P().mo17839c();
        List<String> list2 = this.f16543u;
        String[] strArr = C3700ia.f16635g;
        if (list2 != null || list != null) {
            if (list2 != null && list2.equals(list)) {
                return;
            }
            this.f16520D = true;
            if (list != null) {
                arrayList = new ArrayList(list);
            } else {
                arrayList = null;
            }
            this.f16543u = arrayList;
        }
    }

    /* renamed from: J */
    public final boolean m18334J() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16539q;
    }

    /* renamed from: K */
    public final boolean m18333K() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16537o;
    }

    /* renamed from: L */
    public final boolean m18332L() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16520D;
    }

    /* renamed from: M */
    public final long m18331M() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16533k;
    }

    /* renamed from: N */
    public final long m18330N() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16521E;
    }

    /* renamed from: O */
    public final long m18329O() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16548z;
    }

    /* renamed from: P */
    public final long m18328P() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16517A;
    }

    /* renamed from: Q */
    public final long m18327Q() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16547y;
    }

    /* renamed from: R */
    public final long m18326R() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16546x;
    }

    /* renamed from: S */
    public final long m18325S() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16518B;
    }

    /* renamed from: T */
    public final long m18324T() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16545w;
    }

    /* renamed from: U */
    public final long m18323U() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16536n;
    }

    /* renamed from: V */
    public final long m18322V() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16542t;
    }

    /* renamed from: W */
    public final long m18321W() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16522F;
    }

    /* renamed from: X */
    public final long m18320X() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16535m;
    }

    /* renamed from: Y */
    public final long m18319Y() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16531i;
    }

    /* renamed from: Z */
    public final long m18318Z() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16529g;
    }

    /* renamed from: a */
    public final String m18317a() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16519C;
    }

    /* renamed from: a0 */
    public final long m18316a0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16530h;
    }

    /* renamed from: b */
    public final String m18315b() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16527e;
    }

    /* renamed from: b0 */
    public final Boolean m18314b0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16541s;
    }

    /* renamed from: c */
    public final List<String> m18313c() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16543u;
    }

    /* renamed from: c0 */
    public final String m18312c0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16540r;
    }

    /* renamed from: d */
    public final void m18311d() {
        this.f16523a.mo17855P().mo17839c();
        this.f16520D = false;
    }

    /* renamed from: d0 */
    public final String m18310d0() {
        this.f16523a.mo17855P().mo17839c();
        String str = this.f16519C;
        m18342B(null);
        return str;
    }

    /* renamed from: e */
    public final void m18309e() {
        this.f16523a.mo17855P().mo17839c();
        long j = this.f16529g + 1;
        if (j > 2147483647L) {
            this.f16523a.mo17858F().m18013r().m18041b("Bundle index overflow. appId", C3789q3.m18010u(this.f16524b));
            j = 0;
        }
        this.f16520D = true;
        this.f16529g = j;
    }

    /* renamed from: e0 */
    public final String m18308e0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16524b;
    }

    /* renamed from: f */
    public final void m18307f(String str) {
        this.f16523a.mo17855P().mo17839c();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.f16520D |= true ^ C3700ia.m18185Z(this.f16540r, str);
        this.f16540r = str;
    }

    /* renamed from: f0 */
    public final String m18306f0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16525c;
    }

    /* renamed from: g */
    public final void m18305g(boolean z) {
        boolean z2;
        this.f16523a.mo17855P().mo17839c();
        boolean z3 = this.f16520D;
        if (this.f16539q != z) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f16520D = z3 | z2;
        this.f16539q = z;
    }

    /* renamed from: g0 */
    public final String m18304g0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16534l;
    }

    /* renamed from: h */
    public final void m18303h(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16538p != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16538p = j;
    }

    /* renamed from: h0 */
    public final String m18302h0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16532j;
    }

    /* renamed from: i */
    public final void m18301i(String str) {
        this.f16523a.mo17855P().mo17839c();
        this.f16520D |= !C3700ia.m18185Z(this.f16525c, str);
        this.f16525c = str;
    }

    /* renamed from: i0 */
    public final String m18300i0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16528f;
    }

    /* renamed from: j */
    public final void m18299j(String str) {
        this.f16523a.mo17855P().mo17839c();
        this.f16520D |= !C3700ia.m18185Z(this.f16534l, str);
        this.f16534l = str;
    }

    /* renamed from: j0 */
    public final String m18298j0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16544v;
    }

    /* renamed from: k */
    public final void m18297k(String str) {
        this.f16523a.mo17855P().mo17839c();
        this.f16520D |= !C3700ia.m18185Z(this.f16532j, str);
        this.f16532j = str;
    }

    /* renamed from: k0 */
    public final String m18296k0() {
        this.f16523a.mo17855P().mo17839c();
        return this.f16526d;
    }

    /* renamed from: l */
    public final void m18295l(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16533k != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16533k = j;
    }

    /* renamed from: m */
    public final void m18294m(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16521E != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16521E = j;
    }

    /* renamed from: n */
    public final void m18293n(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16548z != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16548z = j;
    }

    /* renamed from: o */
    public final void m18292o(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16517A != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16517A = j;
    }

    /* renamed from: p */
    public final void m18291p(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16547y != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16547y = j;
    }

    /* renamed from: q */
    public final void m18290q(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16546x != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16546x = j;
    }

    /* renamed from: r */
    public final void m18289r(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16518B != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16518B = j;
    }

    /* renamed from: s */
    public final void m18288s(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16545w != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16545w = j;
    }

    /* renamed from: t */
    public final void m18287t(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16536n != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16536n = j;
    }

    /* renamed from: u */
    public final void m18286u(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16542t != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16542t = j;
    }

    /* renamed from: v */
    public final void m18285v(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16522F != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16522F = j;
    }

    /* renamed from: w */
    public final void m18284w(String str) {
        this.f16523a.mo17855P().mo17839c();
        this.f16520D |= !C3700ia.m18185Z(this.f16528f, str);
        this.f16528f = str;
    }

    /* renamed from: x */
    public final void m18283x(String str) {
        this.f16523a.mo17855P().mo17839c();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.f16520D |= true ^ C3700ia.m18185Z(this.f16544v, str);
        this.f16544v = str;
    }

    /* renamed from: y */
    public final void m18282y(String str) {
        this.f16523a.mo17855P().mo17839c();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.f16520D |= true ^ C3700ia.m18185Z(this.f16526d, str);
        this.f16526d = str;
    }

    /* renamed from: z */
    public final void m18281z(long j) {
        boolean z;
        this.f16523a.mo17855P().mo17839c();
        boolean z2 = this.f16520D;
        if (this.f16535m != j) {
            z = true;
        } else {
            z = false;
        }
        this.f16520D = z2 | z;
        this.f16535m = j;
    }

    public C3671g5(C3611b5 c3611b5, String str) {
        C7297q.m1883j(c3611b5);
        C7297q.m1887f(str);
        this.f16523a = c3611b5;
        this.f16524b = str;
        c3611b5.mo17855P().mo17839c();
    }
}
