package p192u1;

import java.util.Comparator;
import p102k1.C4405d;
import p102k1.C4409f;
import p102k1.C4420g;
/* renamed from: u1.e */
/* loaded from: classes.dex */
public final class C6878e {

    /* renamed from: e */
    public static final Comparator<C6878e> f35742e = new C6879a();

    /* renamed from: a */
    public final C4409f f35743a;

    /* renamed from: b */
    public final C6867c f35744b;

    /* renamed from: c */
    public final C4405d f35745c;

    /* renamed from: d */
    public int f35746d = -1;

    /* renamed from: u1.e$a */
    /* loaded from: classes.dex */
    public static class C6879a implements Comparator<C6878e> {
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(C6878e c6878e, C6878e c6878e2) {
            int m3075e;
            int m3075e2;
            if (c6878e == c6878e2) {
                return 0;
            }
            if (c6878e2 == null) {
                return -1;
            }
            if (c6878e == null) {
                return 1;
            }
            if (c6878e.f35746d != c6878e2.f35746d) {
                m3075e = c6878e.f35746d;
                m3075e2 = c6878e2.f35746d;
            } else {
                m3075e = c6878e.m3075e();
                m3075e2 = c6878e2.m3075e();
            }
            return m3075e - m3075e2;
        }
    }

    /* renamed from: b */
    public C4405d m3078b() {
        return this.f35745c;
    }

    /* renamed from: c */
    public C4409f m3077c() {
        return this.f35743a;
    }

    /* renamed from: d */
    public C6867c m3076d() {
        return this.f35744b;
    }

    /* renamed from: e */
    public int m3075e() {
        return this.f35745c.m16655j();
    }

    /* renamed from: f */
    public boolean m3074f() {
        return this.f35746d != -1;
    }

    /* renamed from: g */
    public boolean m3073g(C6878e[] c6878eArr) {
        int i;
        if (this.f35745c.m16656i() == -1) {
            i = 0;
        } else if (this.f35745c.m16656i() != this.f35745c.m16655j()) {
            C6878e c6878e = c6878eArr[this.f35745c.m16656i()];
            if (c6878e == null) {
                i = 1;
            } else {
                i = c6878e.f35746d;
                if (i == -1) {
                    return false;
                }
            }
        } else {
            throw new C4420g("Class with type index " + this.f35745c.m16655j() + " extends itself");
        }
        for (short s : this.f35745c.m16661d()) {
            C6878e c6878e2 = c6878eArr[s];
            if (c6878e2 == null) {
                i = Math.max(i, 1);
            } else {
                int i2 = c6878e2.f35746d;
                if (i2 == -1) {
                    return false;
                }
                i = Math.max(i, i2);
            }
        }
        this.f35746d = i + 1;
        return true;
    }

    public C6878e(C4409f c4409f, C6867c c6867c, C4405d c4405d) {
        this.f35743a = c4409f;
        this.f35744b = c6867c;
        this.f35745c = c4405d;
    }
}
