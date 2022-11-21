package p210w1;

import p015b2.C0438g;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.t */
/* loaded from: classes.dex */
public final class C7164t {

    /* renamed from: a */
    public final int f36221a;

    /* renamed from: b */
    public final C7402c f36222b;

    /* renamed from: c */
    public final InterfaceC7404e f36223c;

    /* renamed from: d */
    public final InterfaceC7404e f36224d;

    /* renamed from: e */
    public final int f36225e;

    /* renamed from: f */
    public final boolean f36226f;

    /* renamed from: g */
    public final String f36227g;

    public C7164t(int i, C7402c c7402c, InterfaceC7404e interfaceC7404e, InterfaceC7404e interfaceC7404e2, int i2, boolean z, String str) {
        if (c7402c == null) {
            throw new NullPointerException("result == null");
        }
        if (interfaceC7404e == null) {
            throw new NullPointerException("sources == null");
        }
        if (interfaceC7404e2 == null) {
            throw new NullPointerException("exceptions == null");
        }
        if (i2 >= 1 && i2 <= 6) {
            if (interfaceC7404e2.size() != 0 && i2 != 6) {
                throw new IllegalArgumentException("exceptions / branchingness mismatch");
            }
            this.f36221a = i;
            this.f36222b = c7402c;
            this.f36223c = interfaceC7404e;
            this.f36224d = interfaceC7404e2;
            this.f36225e = i2;
            this.f36226f = z;
            this.f36227g = str;
            return;
        }
        throw new IllegalArgumentException("invalid branchingness: " + i2);
    }

    /* renamed from: a */
    public final boolean m2317a() {
        return this.f36224d.size() != 0;
    }

    /* renamed from: b */
    public int m2316b() {
        return this.f36225e;
    }

    /* renamed from: d */
    public int m2314d() {
        return this.f36221a;
    }

    /* renamed from: e */
    public C7402c m2313e() {
        return this.f36222b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7164t)) {
            return false;
        }
        C7164t c7164t = (C7164t) obj;
        return this.f36221a == c7164t.f36221a && this.f36225e == c7164t.f36225e && this.f36222b == c7164t.f36222b && this.f36223c.equals(c7164t.f36223c) && this.f36224d.equals(c7164t.f36224d);
    }

    /* renamed from: f */
    public InterfaceC7404e m2312f() {
        return this.f36223c;
    }

    /* renamed from: g */
    public boolean m2311g() {
        return this.f36226f;
    }

    /* renamed from: h */
    public boolean m2310h() {
        int i = this.f36221a;
        if (i == 14 || i == 16) {
            return true;
        }
        switch (i) {
            case 20:
            case 21:
            case 22:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: c */
    public String m2315c() {
        String str = this.f36227g;
        if (str != null) {
            return str;
        }
        return toString();
    }

    public int hashCode() {
        return (((((((this.f36221a * 31) + this.f36225e) * 31) + this.f36222b.hashCode()) * 31) + this.f36223c.hashCode()) * 31) + this.f36224d.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("Rop{");
        sb.append(C7156p.m2382b(this.f36221a));
        if (this.f36222b != C7402c.f37060B) {
            sb.append(" ");
            sb.append(this.f36222b);
        } else {
            sb.append(" .");
        }
        sb.append(" <-");
        int size = this.f36223c.size();
        if (size == 0) {
            sb.append(" .");
        } else {
            for (int i = 0; i < size; i++) {
                sb.append(' ');
                sb.append(this.f36223c.getType(i));
            }
        }
        if (this.f36226f) {
            sb.append(" call");
        }
        int size2 = this.f36224d.size();
        if (size2 != 0) {
            sb.append(" throws");
            for (int i2 = 0; i2 < size2; i2++) {
                sb.append(' ');
                if (this.f36224d.getType(i2) == C7402c.f37072N) {
                    sb.append("<any>");
                } else {
                    sb.append(this.f36224d.getType(i2));
                }
            }
        } else {
            int i3 = this.f36225e;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 != 4) {
                            if (i3 != 5) {
                                sb.append(" " + C0438g.m26479f(this.f36225e));
                            } else {
                                sb.append(" switches");
                            }
                        } else {
                            sb.append(" ifs");
                        }
                    } else {
                        sb.append(" gotos");
                    }
                } else {
                    sb.append(" returns");
                }
            } else {
                sb.append(" flows");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public C7164t(int i, C7402c c7402c, InterfaceC7404e interfaceC7404e, int i2, String str) {
        this(i, c7402c, interfaceC7404e, C7401b.f37044a, i2, false, str);
    }

    public C7164t(int i, C7402c c7402c, InterfaceC7404e interfaceC7404e, String str) {
        this(i, c7402c, interfaceC7404e, C7401b.f37044a, 1, false, str);
    }

    public C7164t(int i, C7402c c7402c, InterfaceC7404e interfaceC7404e, InterfaceC7404e interfaceC7404e2, String str) {
        this(i, c7402c, interfaceC7404e, interfaceC7404e2, 6, false, str);
    }

    public C7164t(int i, InterfaceC7404e interfaceC7404e, InterfaceC7404e interfaceC7404e2) {
        this(i, C7402c.f37060B, interfaceC7404e, interfaceC7404e2, 6, true, null);
    }
}
