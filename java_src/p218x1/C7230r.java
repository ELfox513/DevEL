package p218x1;

import java.util.ArrayList;
import java.util.List;
import p226y1.C7400a;
import p226y1.C7402c;
/* renamed from: x1.r */
/* loaded from: classes.dex */
public final class C7230r extends AbstractC7204a {

    /* renamed from: a */
    public final int f36607a;

    /* renamed from: b */
    public final C7205a0 f36608b;

    /* renamed from: d */
    public final C7400a f36609d;

    /* renamed from: k */
    public C7214e0 f36610k;

    /* renamed from: p */
    public C7219h f36611p;

    /* renamed from: q */
    public final List<C7222j> f36612q = new ArrayList();

    /* renamed from: E */
    public static C7230r m2068E(int i, C7205a0 c7205a0) {
        return new C7230r(i, c7205a0);
    }

    /* renamed from: A */
    public C7205a0 m2072A() {
        return this.f36608b;
    }

    /* renamed from: B */
    public C7400a m2071B() {
        return this.f36609d;
    }

    /* renamed from: C */
    public List<C7222j> m2070C() {
        return this.f36612q;
    }

    /* renamed from: D */
    public C7402c m2069D() {
        return this.f36609d.m1564n();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "InvokeDynamic";
    }

    public String toString() {
        return toHuman();
    }

    /* renamed from: u */
    public int m2064u() {
        return this.f36607a;
    }

    /* renamed from: x */
    public C7219h m2063x() {
        return this.f36611p;
    }

    /* renamed from: z */
    public C7214e0 m2062z() {
        return this.f36610k;
    }

    /* renamed from: F */
    public void m2067F(C7219h c7219h) {
        if (this.f36611p == null) {
            if (c7219h != null) {
                this.f36611p = c7219h;
                return;
            }
            throw new NullPointerException("callSite == null");
        }
        throw new IllegalArgumentException("already added call site");
    }

    /* renamed from: H */
    public void m2066H(C7214e0 c7214e0) {
        if (this.f36610k == null) {
            if (c7214e0 != null) {
                this.f36610k = c7214e0;
                return;
            }
            throw new NullPointerException("declaringClass == null");
        }
        throw new IllegalArgumentException("already added declaring class");
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        C7230r c7230r = (C7230r) abstractC7204a;
        int m2085a = C7221i.m2085a(this.f36607a, c7230r.m2064u());
        if (m2085a != 0) {
            return m2085a;
        }
        int compareTo = this.f36608b.compareTo(c7230r.m2072A());
        if (compareTo != 0) {
            return compareTo;
        }
        int compareTo2 = this.f36610k.compareTo(c7230r.m2062z());
        if (compareTo2 != 0) {
            return compareTo2;
        }
        return this.f36611p.compareTo(c7230r.m2063x());
    }

    /* renamed from: n */
    public C7222j m2065n() {
        C7222j c7222j = new C7222j(this, this.f36612q.size());
        this.f36612q.add(c7222j);
        return c7222j;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        String str;
        C7214e0 c7214e0 = this.f36610k;
        if (c7214e0 != null) {
            str = c7214e0.toHuman();
        } else {
            str = "Unknown";
        }
        return "InvokeDynamic(" + str + ":" + this.f36607a + ", " + this.f36608b.toHuman() + ")";
    }

    public C7230r(int i, C7205a0 c7205a0) {
        this.f36607a = i;
        this.f36608b = c7205a0;
        this.f36609d = C7400a.m1568f(c7205a0.m2130n().toHuman());
    }
}
