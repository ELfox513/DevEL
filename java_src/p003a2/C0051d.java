package p003a2;

import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import p210w1.C7157q;
import p210w1.C7160r;
import p234z1.AbstractC7572u;
import p234z1.C7561n;
import p234z1.C7568s;
import p234z1.C7574v;
/* renamed from: a2.d */
/* loaded from: classes.dex */
public class C0051d {

    /* renamed from: a */
    public final BitSet f78a;

    /* renamed from: b */
    public final BitSet f79b;

    /* renamed from: c */
    public final int f80c;

    /* renamed from: d */
    public final C7574v f81d;

    /* renamed from: e */
    public final C0050c f82e;

    /* renamed from: f */
    public C7568s f83f;

    /* renamed from: g */
    public int f84g;

    /* renamed from: h */
    public EnumC0053b f85h;

    /* renamed from: a2.d$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0052a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f86a;

        static {
            int[] iArr = new int[EnumC0053b.values().length];
            f86a = iArr;
            try {
                iArr[EnumC0053b.LIVE_IN_AT_STATEMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f86a[EnumC0053b.LIVE_OUT_AT_STATEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f86a[EnumC0053b.LIVE_OUT_AT_BLOCK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: a2.d$b */
    /* loaded from: classes.dex */
    public enum EnumC0053b {
        LIVE_IN_AT_STATEMENT,
        LIVE_OUT_AT_STATEMENT,
        LIVE_OUT_AT_BLOCK,
        DONE
    }

    /* renamed from: d */
    public final void m27727d() {
        while (true) {
            EnumC0053b enumC0053b = this.f85h;
            EnumC0053b enumC0053b2 = EnumC0053b.DONE;
            if (enumC0053b != enumC0053b2) {
                int i = C0052a.f86a[enumC0053b.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            this.f85h = enumC0053b2;
                            m27725f();
                        }
                    } else {
                        this.f85h = enumC0053b2;
                        m27724g();
                    }
                } else {
                    this.f85h = enumC0053b2;
                    m27726e();
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m27726e() {
        int i = this.f84g;
        if (i == 0) {
            this.f83f.m1158d(this.f80c);
            this.f79b.or(this.f83f.m1141u());
            return;
        }
        this.f84g = i - 1;
        this.f85h = EnumC0053b.LIVE_OUT_AT_STATEMENT;
    }

    /* renamed from: f */
    public final void m27725f() {
        if (!this.f78a.get(this.f83f.m1146p())) {
            this.f78a.set(this.f83f.m1146p());
            this.f83f.m1157e(this.f80c);
            this.f84g = this.f83f.m1145q().size() - 1;
            this.f85h = EnumC0053b.LIVE_OUT_AT_STATEMENT;
        }
    }

    /* renamed from: g */
    public final void m27724g() {
        AbstractC7572u abstractC7572u = this.f83f.m1145q().get(this.f84g);
        C7157q m1108t = abstractC7572u.m1108t();
        if (!abstractC7572u.m1123C(this.f80c)) {
            if (m1108t != null) {
                this.f82e.m27733a(this.f80c, m1108t.m2380B());
            }
            this.f85h = EnumC0053b.LIVE_IN_AT_STATEMENT;
        }
    }

    /* renamed from: h */
    public void m27723h() {
        for (AbstractC7572u abstractC7572u : this.f81d.m1068w(this.f80c)) {
            this.f85h = EnumC0053b.DONE;
            if (abstractC7572u instanceof C7561n) {
                for (C7568s c7568s : ((C7561n) abstractC7572u).m1201T(this.f80c, this.f81d)) {
                    this.f83f = c7568s;
                    this.f85h = EnumC0053b.LIVE_OUT_AT_BLOCK;
                    m27727d();
                }
            } else {
                C7568s m1112i = abstractC7572u.m1112i();
                this.f83f = m1112i;
                int indexOf = m1112i.m1145q().indexOf(abstractC7572u);
                this.f84g = indexOf;
                if (indexOf >= 0) {
                    this.f85h = EnumC0053b.LIVE_IN_AT_STATEMENT;
                    m27727d();
                } else {
                    throw new RuntimeException("insn not found in it's own block");
                }
            }
        }
        while (true) {
            int nextSetBit = this.f79b.nextSetBit(0);
            if (nextSetBit >= 0) {
                this.f83f = this.f81d.m1078m().get(nextSetBit);
                this.f79b.clear(nextSetBit);
                this.f85h = EnumC0053b.LIVE_OUT_AT_BLOCK;
                m27727d();
            } else {
                return;
            }
        }
    }

    public C0051d(C7574v c7574v, int i, C0050c c0050c) {
        int size = c7574v.m1078m().size();
        this.f81d = c7574v;
        this.f80c = i;
        this.f78a = new BitSet(size);
        this.f79b = new BitSet(size);
        this.f82e = c0050c;
    }

    /* renamed from: a */
    public static void m27730a(C0050c c0050c, C7157q c7157q, C7160r c7160r) {
        int m2380B = c7157q.m2380B();
        for (int i = 0; i < c7160r.size(); i++) {
            c0050c.m27733a(m2380B, c7160r.m2347A(i).m2380B());
        }
    }

    /* renamed from: b */
    public static void m27729b(C7574v c7574v, C0050c c0050c) {
        Iterator<C7568s> it = c7574v.m1078m().iterator();
        while (it.hasNext()) {
            List<AbstractC7572u> m1142t = it.next().m1142t();
            int size = m1142t.size();
            for (int i = 0; i < size; i++) {
                for (int i2 = 0; i2 < size; i2++) {
                    if (i != i2) {
                        AbstractC7572u abstractC7572u = m1142t.get(i);
                        AbstractC7572u abstractC7572u2 = m1142t.get(i2);
                        m27730a(c0050c, abstractC7572u.m1108t(), abstractC7572u2.mo1107u());
                        m27730a(c0050c, abstractC7572u2.m1108t(), abstractC7572u.mo1107u());
                        c0050c.m27733a(abstractC7572u.m1108t().m2380B(), abstractC7572u2.m1108t().m2380B());
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public static C0050c m27728c(C7574v c7574v) {
        int m1070u = c7574v.m1070u();
        C0050c c0050c = new C0050c(m1070u);
        for (int i = 0; i < m1070u; i++) {
            new C0051d(c7574v, i, c0050c).m27723h();
        }
        m27729b(c7574v, c0050c);
        return c0050c;
    }
}
