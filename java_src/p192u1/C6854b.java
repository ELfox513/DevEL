package p192u1;

import com.android.p030dx.command.dexer.DxContext;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p102k1.C4400a;
import p102k1.C4401b;
import p102k1.C4402c;
import p102k1.C4405d;
import p102k1.C4406e;
import p102k1.C4409f;
import p102k1.C4420g;
import p102k1.C4422i;
import p102k1.C4426m;
import p102k1.C4428o;
import p102k1.C4431p;
import p102k1.C4433r;
import p102k1.C4434s;
import p102k1.C4436t;
/* renamed from: u1.b */
/* loaded from: classes.dex */
public final class C6854b {

    /* renamed from: a */
    public final C4409f[] f35663a;

    /* renamed from: b */
    public final C6867c[] f35664b;

    /* renamed from: c */
    public final EnumC6853a f35665c;

    /* renamed from: d */
    public final DxContext f35666d;

    /* renamed from: e */
    public final C6866k f35667e;

    /* renamed from: f */
    public final C4409f f35668f;

    /* renamed from: g */
    public final C4409f.C4416g f35669g;

    /* renamed from: h */
    public final C4409f.C4416g f35670h;

    /* renamed from: i */
    public final C4409f.C4416g f35671i;

    /* renamed from: j */
    public final C4409f.C4416g f35672j;

    /* renamed from: k */
    public final C4409f.C4416g f35673k;

    /* renamed from: l */
    public final C4409f.C4416g f35674l;

    /* renamed from: m */
    public final C4409f.C4416g f35675m;

    /* renamed from: n */
    public final C4409f.C4416g f35676n;

    /* renamed from: o */
    public final C4409f.C4416g f35677o;

    /* renamed from: p */
    public final C4409f.C4416g f35678p;

    /* renamed from: q */
    public final C4409f.C4416g f35679q;

    /* renamed from: r */
    public final C4409f.C4416g f35680r;

    /* renamed from: s */
    public final C4409f.C4416g f35681s;

    /* renamed from: t */
    public final C4434s f35682t;

    /* renamed from: u */
    public final C6869d f35683u;

    /* renamed from: v */
    public int f35684v;

    /* renamed from: u1.b$a */
    /* loaded from: classes.dex */
    public class C6855a extends AbstractC6864j<String> {
        public C6855a(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18423b;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            c6867c.f35716b[i2] = i3;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public String mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return c4416g.m16598N();
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(String str) {
            C6854b.this.f35682t.f18437p.f18449b++;
            C6854b.this.f35670h.writeInt(C6854b.this.f35675m.m16575t());
            C6854b.this.f35675m.m16587Y(str);
        }
    }

    /* renamed from: u1.b$b */
    /* loaded from: classes.dex */
    public class C6856b extends AbstractC6864j<Integer> {
        public C6856b(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18424c;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(Integer num) {
            C6854b.this.f35670h.writeInt(num.intValue());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            if (i3 >= 0 && i3 <= 65535) {
                c6867c.f35717c[i2] = (short) i3;
                return;
            }
            throw new C4422i("type ID not in [0, 0xffff]: " + i3);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public Integer mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return Integer.valueOf(c6867c.m3099t(c4416g.m16606F()));
        }
    }

    /* renamed from: u1.b$c */
    /* loaded from: classes.dex */
    public class C6857c extends AbstractC6864j<C4436t> {
        public C6857c(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18432k;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            c6867c.m3119C(i, C6854b.this.f35672j.m16575t());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public C4436t mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return c6867c.m3097v(c4416g.m16596P());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(C4436t c4436t) {
            C6854b.this.f35672j.m16586Z(c4436t);
        }
    }

    /* renamed from: u1.b$d */
    /* loaded from: classes.dex */
    public class C6858d extends AbstractC6864j<C4433r> {
        public C6858d(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18425d;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public C4433r mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return c6867c.m3112g(c4416g.m16602J());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(C4433r c4433r) {
            c4433r.m16497j(C6854b.this.f35670h);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            if (i3 >= 0 && i3 <= 65535) {
                c6867c.f35718d[i2] = (short) i3;
                return;
            }
            throw new C4422i("proto ID not in [0, 0xffff]: " + i3);
        }
    }

    /* renamed from: u1.b$e */
    /* loaded from: classes.dex */
    public class C6859e extends AbstractC6864j<C4401b> {
        public C6859e(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18429h;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            c6867c.f35721g[i2] = i3;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public C4401b mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return c6867c.m3117b(c4416g.m16572w());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(C4401b c4401b) {
            c4401b.m16674f(C6854b.this.f35670h);
        }
    }

    /* renamed from: u1.b$f */
    /* loaded from: classes.dex */
    public class C6860f extends AbstractC6864j<C4428o> {
        public C6860f(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18430i;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            c6867c.f35722h.put(Integer.valueOf(i2), Integer.valueOf(c6867c.f35722h.size()));
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public C4428o mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return c6867c.m3114e(c4416g.m16605G());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(C4428o c4428o) {
            c4428o.m16514l(C6854b.this.f35670h);
        }
    }

    /* renamed from: u1.b$g */
    /* loaded from: classes.dex */
    public class C6861g extends AbstractC6864j<C4426m> {
        public C6861g(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18426e;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public C4426m mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return c6867c.m3115d(c4416g.m16608D());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(C4426m c4426m) {
            c4426m.m16525j(C6854b.this.f35670h);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            if (i3 >= 0 && i3 <= 65535) {
                c6867c.f35719e[i2] = (short) i3;
                return;
            }
            throw new C4422i("field ID not in [0, 0xffff]: " + i3);
        }
    }

    /* renamed from: u1.b$h */
    /* loaded from: classes.dex */
    public class C6862h extends AbstractC6864j<C4431p> {
        public C6862h(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18427f;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public C4431p mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return c6867c.m3113f(c4416g.m16604H());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(C4431p c4431p) {
            c4431p.m16506j(C6854b.this.f35670h);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            if (i3 >= 0 && i3 <= 65535) {
                c6867c.f35720f[i2] = (short) i3;
                return;
            }
            throw new C4422i("method ID not in [0, 0xffff]: " + i3);
        }
    }

    /* renamed from: u1.b$i */
    /* loaded from: classes.dex */
    public class C6863i extends AbstractC6864j<C4400a> {
        public C6863i(C4409f.C4416g c4416g) {
            super(c4416g);
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: a */
        public C4434s.C4435a mo3147a(C4434s c4434s) {
            return c4434s.f18439r;
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: g */
        public void mo3141g(int i, C6867c c6867c, int i2, int i3) {
            c6867c.m3094y(i, C6854b.this.f35681s.m16575t());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: i */
        public C4400a mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i) {
            return c6867c.m3118a(c4416g.m16574u());
        }

        @Override // p192u1.C6854b.AbstractC6864j
        /* renamed from: j */
        public void mo3140h(C4400a c4400a) {
            c4400a.m16677j(C6854b.this.f35681s);
        }
    }

    /* renamed from: u1.b$j */
    /* loaded from: classes.dex */
    public abstract class AbstractC6864j<T extends Comparable<T>> {

        /* renamed from: a */
        public final C4409f.C4416g f35694a;

        /* renamed from: u1.b$j$a */
        /* loaded from: classes.dex */
        public class C6865a implements Comparable<AbstractC6864j<T>.C6865a> {

            /* renamed from: a */
            public final C4409f f35696a;

            /* renamed from: b */
            public final C6867c f35697b;

            /* renamed from: d */
            public final T f35698d;

            /* renamed from: k */
            public final int f35699k;

            /* renamed from: p */
            public final int f35700p;

            @Override // java.lang.Comparable
            /* renamed from: c */
            public int compareTo(AbstractC6864j<T>.C6865a c6865a) {
                return this.f35698d.compareTo(c6865a.f35698d);
            }

            public C6865a(C4409f c4409f, C6867c c6867c, T t, int i, int i2) {
                this.f35696a = c4409f;
                this.f35697b = c6867c;
                this.f35698d = t;
                this.f35699k = i;
                this.f35700p = i2;
            }
        }

        /* renamed from: a */
        public abstract C4434s.C4435a mo3147a(C4434s c4434s);

        /* renamed from: d */
        public abstract T mo3144d(C4409f.C4416g c4416g, C6867c c6867c, int i);

        /* renamed from: g */
        public abstract void mo3141g(int i, C6867c c6867c, int i2, int i3);

        /* renamed from: h */
        public abstract void mo3140h(T t);

        public AbstractC6864j(C4409f.C4416g c4416g) {
            this.f35694a = c4416g;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public final void m3146b() {
            C4409f.C4416g c4416g;
            C4434s.C4435a[] c4435aArr = new C4434s.C4435a[C6854b.this.f35663a.length];
            C4409f.C4416g[] c4416gArr = new C4409f.C4416g[C6854b.this.f35663a.length];
            int[] iArr = new int[C6854b.this.f35663a.length];
            int[] iArr2 = new int[C6854b.this.f35663a.length];
            TreeMap treeMap = new TreeMap();
            int i = 0;
            for (int i2 = 0; i2 < C6854b.this.f35663a.length; i2++) {
                C4434s.C4435a mo3147a = mo3147a(C6854b.this.f35663a[i2].m16627n());
                c4435aArr[i2] = mo3147a;
                if (mo3147a.m16488d()) {
                    c4416g = C6854b.this.f35663a[i2].m16624q(c4435aArr[i2].f18450d);
                } else {
                    c4416g = null;
                }
                C4409f.C4416g c4416g2 = c4416g;
                c4416gArr[i2] = c4416g2;
                iArr[i2] = m3143e(c4416g2, c4435aArr[i2], C6854b.this.f35664b[i2], iArr2[i2], treeMap, i2);
            }
            if (treeMap.isEmpty()) {
                mo3147a(C6854b.this.f35682t).f18450d = 0;
                mo3147a(C6854b.this.f35682t).f18449b = 0;
                return;
            }
            mo3147a(C6854b.this.f35682t).f18450d = this.f35694a.m16575t();
            while (!treeMap.isEmpty()) {
                Map.Entry pollFirstEntry = treeMap.pollFirstEntry();
                for (Integer num : (List) pollFirstEntry.getValue()) {
                    int i3 = iArr[num.intValue()];
                    C6867c c6867c = C6854b.this.f35664b[num.intValue()];
                    int intValue = num.intValue();
                    int i4 = iArr2[intValue];
                    iArr2[intValue] = i4 + 1;
                    mo3141g(i3, c6867c, i4, i);
                    iArr[num.intValue()] = m3143e(c4416gArr[num.intValue()], c4435aArr[num.intValue()], C6854b.this.f35664b[num.intValue()], iArr2[num.intValue()], treeMap, num.intValue());
                }
                mo3140h((Comparable) pollFirstEntry.getKey());
                i++;
            }
            mo3147a(C6854b.this.f35682t).f18449b = i;
        }

        /* renamed from: c */
        public final void m3145c() {
            int i;
            mo3147a(C6854b.this.f35682t).f18450d = this.f35694a.m16575t();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < C6854b.this.f35663a.length; i2++) {
                arrayList.addAll(m3142f(C6854b.this.f35663a[i2], C6854b.this.f35664b[i2]));
            }
            if (arrayList.isEmpty()) {
                mo3147a(C6854b.this.f35682t).f18450d = 0;
                mo3147a(C6854b.this.f35682t).f18449b = 0;
                return;
            }
            Collections.sort(arrayList);
            int i3 = 0;
            for (int i4 = 0; i4 < arrayList.size(); i4 = i) {
                i = i4 + 1;
                C6865a c6865a = (C6865a) arrayList.get(i4);
                int i5 = i3 - 1;
                mo3141g(c6865a.f35700p, c6865a.f35697b, c6865a.f35699k, i5);
                while (i < arrayList.size() && c6865a.compareTo((C6865a) arrayList.get(i)) == 0) {
                    int i6 = i + 1;
                    C6865a c6865a2 = (C6865a) arrayList.get(i);
                    mo3141g(c6865a2.f35700p, c6865a2.f35697b, c6865a2.f35699k, i5);
                    i = i6;
                }
                mo3140h(c6865a.f35698d);
                i3++;
            }
            mo3147a(C6854b.this.f35682t).f18449b = i3;
        }

        /* renamed from: e */
        public final int m3143e(C4409f.C4416g c4416g, C4434s.C4435a c4435a, C6867c c6867c, int i, TreeMap<T, List<Integer>> treeMap, int i2) {
            int i3;
            if (c4416g != null) {
                i3 = c4416g.m16575t();
            } else {
                i3 = -1;
            }
            if (i < c4435a.f18449b) {
                T mo3144d = mo3144d(c4416g, c6867c, i);
                List<Integer> list = treeMap.get(mo3144d);
                if (list == null) {
                    list = new ArrayList<>();
                    treeMap.put(mo3144d, list);
                }
                list.add(Integer.valueOf(i2));
            }
            return i3;
        }

        /* renamed from: f */
        public final List<AbstractC6864j<T>.C6865a> m3142f(C4409f c4409f, C6867c c6867c) {
            C4434s.C4435a mo3147a = mo3147a(c4409f.m16627n());
            if (!mo3147a.m16488d()) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            C4409f.C4416g m16624q = c4409f.m16624q(mo3147a.f18450d);
            for (int i = 0; i < mo3147a.f18449b; i++) {
                arrayList.add(new C6865a(c4409f, c6867c, mo3144d(m16624q, c6867c, 0), i, m16624q.m16575t()));
            }
            return arrayList;
        }
    }

    /* renamed from: u1.b$k */
    /* loaded from: classes.dex */
    public static class C6866k {

        /* renamed from: a */
        public int f35702a;

        /* renamed from: b */
        public int f35703b;

        /* renamed from: c */
        public int f35704c;

        /* renamed from: d */
        public int f35705d;

        /* renamed from: e */
        public int f35706e;

        /* renamed from: f */
        public int f35707f;

        /* renamed from: g */
        public int f35708g;

        /* renamed from: h */
        public int f35709h;

        /* renamed from: i */
        public int f35710i;

        /* renamed from: j */
        public int f35711j;

        /* renamed from: k */
        public int f35712k;

        /* renamed from: l */
        public int f35713l;

        /* renamed from: m */
        public int f35714m;

        public C6866k(C4409f[] c4409fArr) {
            this.f35702a = 112;
            for (C4409f c4409f : c4409fArr) {
                m3123p(c4409f.m16627n(), false);
            }
            m3124o();
        }

        /* renamed from: n */
        public static int m3125n(int i) {
            return (i + 3) & (-4);
        }

        /* renamed from: q */
        public int m3122q() {
            return this.f35702a + this.f35703b + this.f35704c + this.f35705d + this.f35706e + this.f35707f + this.f35708g + this.f35709h + this.f35710i + this.f35711j + this.f35712k + this.f35713l + this.f35714m;
        }

        /* renamed from: o */
        public final void m3124o() {
            this.f35702a = m3125n(this.f35702a);
            this.f35703b = m3125n(this.f35703b);
            this.f35704c = m3125n(this.f35704c);
            this.f35705d = m3125n(this.f35705d);
            this.f35706e = m3125n(this.f35706e);
            this.f35707f = m3125n(this.f35707f);
            this.f35708g = m3125n(this.f35708g);
            this.f35709h = m3125n(this.f35709h);
            this.f35710i = m3125n(this.f35710i);
            this.f35711j = m3125n(this.f35711j);
            this.f35712k = m3125n(this.f35712k);
            this.f35713l = m3125n(this.f35713l);
            this.f35714m = m3125n(this.f35714m);
        }

        /* renamed from: p */
        public final void m3123p(C4434s c4434s, boolean z) {
            this.f35703b += (c4434s.f18423b.f18449b * 4) + (c4434s.f18424c.f18449b * 4) + (c4434s.f18425d.f18449b * 12) + (c4434s.f18426e.f18449b * 8) + (c4434s.f18427f.f18449b * 8) + (c4434s.f18428g.f18449b * 32);
            this.f35704c = (c4434s.f18442u.length * 12) + 4;
            this.f35705d += m3125n(c4434s.f18432k.f18451k);
            this.f35708g += c4434s.f18437p.f18451k;
            this.f35711j += c4434s.f18441t.f18451k;
            this.f35712k += c4434s.f18434m.f18451k;
            this.f35713l += c4434s.f18433l.f18451k;
            if (z) {
                this.f35707f += c4434s.f18436o.f18451k;
                this.f35706e += c4434s.f18435n.f18451k;
                this.f35710i += c4434s.f18440s.f18451k;
                this.f35714m += c4434s.f18439r.f18451k;
                this.f35709h += c4434s.f18438q.f18451k;
                return;
            }
            int i = this.f35707f;
            double d = c4434s.f18436o.f18451k;
            Double.isNaN(d);
            this.f35707f = i + ((int) Math.ceil(d * 1.25d));
            int i2 = this.f35706e;
            double d2 = c4434s.f18435n.f18451k;
            Double.isNaN(d2);
            this.f35706e = i2 + ((int) Math.ceil(d2 * 1.67d));
            this.f35710i += c4434s.f18440s.f18451k * 2;
            this.f35714m += (int) Math.ceil(c4434s.f18439r.f18451k * 2);
            this.f35709h += (c4434s.f18438q.f18451k * 2) + 8;
        }

        public C6866k(C6854b c6854b) {
            this.f35702a = 112;
            this.f35702a = c6854b.f35669g.m16591U();
            this.f35703b = c6854b.f35670h.m16591U();
            this.f35704c = c6854b.f35671i.m16591U();
            this.f35705d = c6854b.f35672j.m16591U();
            this.f35706e = c6854b.f35673k.m16591U();
            this.f35707f = c6854b.f35674l.m16591U();
            this.f35708g = c6854b.f35675m.m16591U();
            this.f35709h = c6854b.f35676n.m16591U();
            this.f35710i = c6854b.f35677o.m16591U();
            this.f35711j = c6854b.f35678p.m16591U();
            this.f35712k = c6854b.f35679q.m16591U();
            this.f35713l = c6854b.f35680r.m16591U();
            this.f35714m = c6854b.f35681s.m16591U();
            m3124o();
        }
    }

    public C6854b(C4409f[] c4409fArr, EnumC6853a enumC6853a, DxContext dxContext) {
        this(c4409fArr, enumC6853a, dxContext, new C6866k(c4409fArr));
    }

    /* renamed from: R */
    public final void m3197R(C6867c c6867c, C4402c.C4403a[] c4403aArr) {
        int length = c4403aArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            C4402c.C4403a c4403a = c4403aArr[i];
            int m3103p = c6867c.m3103p(c4403a.m16668b());
            this.f35673k.m16585a0(m3103p - i2);
            this.f35673k.m16585a0(c4403a.m16669a());
            i++;
            i2 = m3103p;
        }
    }

    /* renamed from: S */
    public final void m3196S(C4409f c4409f, C6867c c6867c, C4402c.C4404b[] c4404bArr) {
        int length = c4404bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            C4402c.C4404b c4404b = c4404bArr[i];
            int m3102q = c6867c.m3102q(c4404b.m16665c());
            this.f35673k.m16585a0(m3102q - i2);
            this.f35673k.m16585a0(c4404b.m16667a());
            if (c4404b.m16666b() == 0) {
                this.f35673k.m16585a0(0);
            } else {
                this.f35674l.m16579p();
                this.f35673k.m16585a0(this.f35674l.m16575t());
                m3200O(c4409f, c4409f.m16621t(c4404b), c6867c);
            }
            i++;
            i2 = m3102q;
        }
    }

    /* renamed from: V */
    public final void m3193V(C4409f.C4416g c4416g, C4406e.C4408b[] c4408bArr, int[] iArr) {
        for (C4406e.C4408b c4408b : c4408bArr) {
            c4416g.writeInt(c4408b.m16641c());
            c4416g.m16583c0(c4408b.m16642b());
            c4416g.m16583c0(iArr[c4408b.m16643a()]);
        }
    }

    /* renamed from: W */
    public final void m3192W() {
        int i = 0;
        int i2 = 0;
        while (true) {
            C4409f[] c4409fArr = this.f35663a;
            if (i2 >= c4409fArr.length) {
                break;
            }
            m3204K(c4409fArr[i2], this.f35664b[i2]);
            i2++;
        }
        int i3 = 0;
        while (true) {
            C4409f[] c4409fArr2 = this.f35663a;
            if (i3 >= c4409fArr2.length) {
                break;
            }
            m3205J(c4409fArr2[i3], this.f35664b[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            C4409f[] c4409fArr3 = this.f35663a;
            if (i4 >= c4409fArr3.length) {
                break;
            }
            m3209F(c4409fArr3[i4], this.f35664b[i4]);
            i4++;
        }
        while (true) {
            C4409f[] c4409fArr4 = this.f35663a;
            if (i < c4409fArr4.length) {
                m3194U(c4409fArr4[i], this.f35664b[i]);
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: t */
    public final int m3172t() {
        int i = -1;
        int i2 = 0;
        while (true) {
            C4409f[] c4409fArr = this.f35663a;
            if (i2 < c4409fArr.length) {
                int i3 = c4409fArr[i2].m16627n().f18443v;
                if (i < i3) {
                    i = i3;
                }
                i2++;
            } else {
                return i;
            }
        }
    }

    public C6854b(C4409f[] c4409fArr, EnumC6853a enumC6853a, DxContext dxContext, C6866k c6866k) {
        this.f35684v = 1048576;
        this.f35663a = c4409fArr;
        this.f35665c = enumC6853a;
        this.f35666d = dxContext;
        this.f35667e = c6866k;
        this.f35668f = new C4409f(c6866k.m3122q());
        this.f35664b = new C6867c[c4409fArr.length];
        for (int i = 0; i < c4409fArr.length; i++) {
            this.f35664b[i] = new C6867c(this.f35668f, c4409fArr[i].m16627n());
        }
        this.f35683u = new C6869d();
        this.f35669g = this.f35668f.m16637d(c6866k.f35702a, "header");
        this.f35670h = this.f35668f.m16637d(c6866k.f35703b, "ids defs");
        C4434s m16627n = this.f35668f.m16627n();
        this.f35682t = m16627n;
        m16627n.f18421C = this.f35668f.m16628m();
        m16627n.f18431j.f18450d = this.f35668f.m16628m();
        m16627n.f18431j.f18449b = 1;
        this.f35671i = this.f35668f.m16637d(c6866k.f35704c, "map list");
        m16627n.f18432k.f18450d = this.f35668f.m16628m();
        this.f35672j = this.f35668f.m16637d(c6866k.f35705d, "type list");
        m16627n.f18433l.f18450d = this.f35668f.m16628m();
        this.f35680r = this.f35668f.m16637d(c6866k.f35713l, "annotation set ref list");
        m16627n.f18434m.f18450d = this.f35668f.m16628m();
        this.f35679q = this.f35668f.m16637d(c6866k.f35712k, "annotation sets");
        m16627n.f18435n.f18450d = this.f35668f.m16628m();
        this.f35673k = this.f35668f.m16637d(c6866k.f35706e, "class data");
        m16627n.f18436o.f18450d = this.f35668f.m16628m();
        this.f35674l = this.f35668f.m16637d(c6866k.f35707f, "code");
        m16627n.f18437p.f18450d = this.f35668f.m16628m();
        this.f35675m = this.f35668f.m16637d(c6866k.f35708g, "string data");
        m16627n.f18438q.f18450d = this.f35668f.m16628m();
        this.f35676n = this.f35668f.m16637d(c6866k.f35709h, "debug info");
        m16627n.f18439r.f18450d = this.f35668f.m16628m();
        this.f35681s = this.f35668f.m16637d(c6866k.f35714m, "annotation");
        m16627n.f18440s.f18450d = this.f35668f.m16628m();
        this.f35677o = this.f35668f.m16637d(c6866k.f35710i, "encoded array");
        m16627n.f18441t.f18450d = this.f35668f.m16628m();
        this.f35678p = this.f35668f.m16637d(c6866k.f35711j, "annotations directory");
        m16627n.f18420B = this.f35668f.m16628m() - m16627n.f18421C;
    }

    /* renamed from: A */
    public final void m3214A() {
        new C6858d(this.f35670h).m3146b();
    }

    /* renamed from: B */
    public final void m3213B() {
        new C6855a(this.f35670h).m3146b();
    }

    /* renamed from: C */
    public final void m3212C() {
        new C6856b(this.f35670h).m3146b();
    }

    /* renamed from: D */
    public final void m3211D() {
        new C6857c(this.f35672j).m3145c();
    }

    /* renamed from: G */
    public final void m3208G(C4409f.C4416g c4416g, C6867c c6867c) {
        this.f35682t.f18441t.f18449b++;
        this.f35678p.m16578q();
        c6867c.m3095x(c4416g.m16575t(), this.f35678p.m16575t());
        this.f35678p.writeInt(c6867c.m3108k(c4416g.m16606F()));
        int m16606F = c4416g.m16606F();
        this.f35678p.writeInt(m16606F);
        int m16606F2 = c4416g.m16606F();
        this.f35678p.writeInt(m16606F2);
        int m16606F3 = c4416g.m16606F();
        this.f35678p.writeInt(m16606F3);
        for (int i = 0; i < m16606F; i++) {
            this.f35678p.writeInt(c6867c.m3103p(c4416g.m16606F()));
            this.f35678p.writeInt(c6867c.m3108k(c4416g.m16606F()));
        }
        for (int i2 = 0; i2 < m16606F2; i2++) {
            this.f35678p.writeInt(c6867c.m3102q(c4416g.m16606F()));
            this.f35678p.writeInt(c6867c.m3108k(c4416g.m16606F()));
        }
        for (int i3 = 0; i3 < m16606F3; i3++) {
            this.f35678p.writeInt(c6867c.m3102q(c4416g.m16606F()));
            this.f35678p.writeInt(c6867c.m3107l(c4416g.m16606F()));
        }
    }

    /* renamed from: H */
    public final void m3207H(C6867c c6867c, C4409f.C4416g c4416g) {
        this.f35682t.f18434m.f18449b++;
        this.f35679q.m16578q();
        c6867c.m3093z(c4416g.m16575t(), this.f35679q.m16575t());
        int m16606F = c4416g.m16606F();
        this.f35679q.writeInt(m16606F);
        for (int i = 0; i < m16606F; i++) {
            this.f35679q.writeInt(c6867c.m3110i(c4416g.m16606F()));
        }
    }

    /* renamed from: I */
    public final void m3206I(C6867c c6867c, C4409f.C4416g c4416g) {
        this.f35682t.f18433l.f18449b++;
        this.f35680r.m16578q();
        c6867c.m3121A(c4416g.m16575t(), this.f35680r.m16575t());
        int m16606F = c4416g.m16606F();
        this.f35680r.writeInt(m16606F);
        for (int i = 0; i < m16606F; i++) {
            this.f35680r.writeInt(c6867c.m3108k(c4416g.m16606F()));
        }
    }

    /* renamed from: L */
    public final int[] m3203L(C6867c c6867c, C4406e.C4407a[] c4407aArr) {
        int m16575t = this.f35674l.m16575t();
        this.f35674l.m16585a0(c4407aArr.length);
        int[] iArr = new int[c4407aArr.length];
        for (int i = 0; i < c4407aArr.length; i++) {
            iArr[i] = this.f35674l.m16575t() - m16575t;
            m3198Q(c4407aArr[i], c6867c);
        }
        return iArr;
    }

    /* renamed from: M */
    public final void m3202M(C4409f c4409f, C4402c c4402c, C6867c c6867c) {
        this.f35682t.f18435n.f18449b++;
        C4402c.C4403a[] m16671c = c4402c.m16671c();
        C4402c.C4403a[] m16672b = c4402c.m16672b();
        C4402c.C4404b[] m16673a = c4402c.m16673a();
        C4402c.C4404b[] m16670d = c4402c.m16670d();
        this.f35673k.m16585a0(m16671c.length);
        this.f35673k.m16585a0(m16672b.length);
        this.f35673k.m16585a0(m16673a.length);
        this.f35673k.m16585a0(m16670d.length);
        m3197R(c6867c, m16671c);
        m3197R(c6867c, m16672b);
        m3196S(c4409f, c6867c, m16673a);
        m3196S(c4409f, c6867c, m16670d);
    }

    /* renamed from: N */
    public final void m3201N(C4409f c4409f, C4405d c4405d, C6867c c6867c) {
        this.f35670h.m16578q();
        this.f35670h.writeInt(c4405d.m16655j());
        this.f35670h.writeInt(c4405d.m16664a());
        this.f35670h.writeInt(c4405d.m16656i());
        this.f35670h.writeInt(c4405d.m16660e());
        this.f35670h.writeInt(c6867c.m3099t(c4405d.m16658g()));
        this.f35670h.writeInt(c6867c.m3109j(c4405d.m16663b()));
        if (c4405d.m16662c() == 0) {
            this.f35670h.writeInt(0);
        } else {
            this.f35670h.writeInt(this.f35673k.m16575t());
            m3202M(c4409f, c4409f.m16622s(c4405d), c6867c);
        }
        this.f35670h.writeInt(c6867c.m3105n(c4405d.m16657h()));
    }

    /* renamed from: O */
    public final void m3200O(C4409f c4409f, C4406e c4406e, C6867c c6867c) {
        this.f35682t.f18436o.f18449b++;
        this.f35674l.m16578q();
        this.f35674l.m16583c0(c4406e.m16649f());
        this.f35674l.m16583c0(c4406e.m16652c());
        this.f35674l.m16583c0(c4406e.m16650e());
        C4406e.C4408b[] m16648g = c4406e.m16648g();
        C4406e.C4407a[] m16654a = c4406e.m16654a();
        this.f35674l.m16583c0(m16648g.length);
        int m16653b = c4406e.m16653b();
        if (m16653b != 0) {
            this.f35674l.writeInt(this.f35676n.m16575t());
            m3199P(c4409f.m16624q(m16653b), c6867c);
        } else {
            this.f35674l.writeInt(0);
        }
        short[] m3081f = this.f35683u.m3081f(c6867c, c4406e.m16651d());
        this.f35674l.writeInt(m3081f.length);
        this.f35674l.m16590V(m3081f);
        if (m16648g.length > 0) {
            if (m3081f.length % 2 == 1) {
                this.f35674l.m16589W((short) 0);
            }
            C4409f.C4416g m16624q = this.f35668f.m16624q(this.f35674l.m16575t());
            this.f35674l.m16592T(m16648g.length * 8);
            m3193V(m16624q, m16648g, m3203L(c6867c, m16654a));
        }
    }

    /* renamed from: P */
    public final void m3199P(C4409f.C4416g c4416g, C6867c c6867c) {
        this.f35682t.f18438q.f18449b++;
        this.f35676n.m16585a0(c4416g.m16595Q());
        int m16595Q = c4416g.m16595Q();
        this.f35676n.m16585a0(m16595Q);
        for (int i = 0; i < m16595Q; i++) {
            this.f35676n.m16584b0(c6867c.m3099t(c4416g.m16594R()));
        }
        while (true) {
            byte readByte = c4416g.readByte();
            this.f35676n.writeByte(readByte);
            if (readByte != 9) {
                switch (readByte) {
                    case 0:
                        return;
                    case 1:
                        this.f35676n.m16585a0(c4416g.m16595Q());
                        continue;
                    case 2:
                        this.f35676n.m16588X(c4416g.m16599M());
                        continue;
                    case 3:
                    case 4:
                        this.f35676n.m16585a0(c4416g.m16595Q());
                        this.f35676n.m16584b0(c6867c.m3099t(c4416g.m16594R()));
                        this.f35676n.m16584b0(c6867c.m3098u(c4416g.m16594R()));
                        if (readByte == 4) {
                            this.f35676n.m16584b0(c6867c.m3099t(c4416g.m16594R()));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                    case 6:
                        this.f35676n.m16585a0(c4416g.m16595Q());
                        continue;
                }
            } else {
                this.f35676n.m16584b0(c6867c.m3099t(c4416g.m16594R()));
            }
        }
    }

    /* renamed from: T */
    public final void m3195T(C4409f.C4416g c4416g, C6867c c6867c) {
        this.f35682t.f18440s.f18449b++;
        c6867c.m3120B(c4416g.m16575t(), this.f35677o.m16575t());
        c6867c.m3104o(c4416g.m16609C()).m16560f(this.f35677o);
    }

    /* renamed from: q */
    public final C6878e[] m3175q() {
        boolean z;
        int i = this.f35682t.f18424c.f18449b;
        C6878e[] c6878eArr = new C6878e[i];
        int i2 = 0;
        while (true) {
            C4409f[] c4409fArr = this.f35663a;
            if (i2 >= c4409fArr.length) {
                break;
            }
            m3210E(c6878eArr, c4409fArr[i2], this.f35664b[i2]);
            i2++;
        }
        do {
            z = true;
            for (int i3 = 0; i3 < i; i3++) {
                C6878e c6878e = c6878eArr[i3];
                if (c6878e != null && !c6878e.m3074f()) {
                    z &= c6878e.m3073g(c6878eArr);
                }
            }
        } while (!z);
        Arrays.sort(c6878eArr, C6878e.f35742e);
        int indexOf = Arrays.asList(c6878eArr).indexOf(null);
        if (indexOf != -1) {
            return (C6878e[]) Arrays.copyOfRange(c6878eArr, 0, indexOf);
        }
        return c6878eArr;
    }

    /* renamed from: r */
    public C4409f m3174r() {
        C4409f[] c4409fArr = this.f35663a;
        if (c4409fArr.length == 1) {
            return c4409fArr[0];
        }
        if (c4409fArr.length == 0) {
            return null;
        }
        long nanoTime = System.nanoTime();
        C4409f m3169w = m3169w();
        C6866k c6866k = new C6866k(this);
        int m3122q = this.f35667e.m3122q() - c6866k.m3122q();
        if (m3122q > this.f35684v) {
            m3169w = new C6854b(new C4409f[]{this.f35668f, new C4409f(0)}, EnumC6853a.FAIL, this.f35666d, c6866k).m3169w();
            this.f35666d.out.printf("Result compacted from %.1fKiB to %.1fKiB to save %.1fKiB%n", Float.valueOf(this.f35668f.m16629l() / 1024.0f), Float.valueOf(m3169w.m16629l() / 1024.0f), Float.valueOf(m3122q / 1024.0f));
        }
        long nanoTime2 = System.nanoTime() - nanoTime;
        int i = 0;
        while (i < this.f35663a.length) {
            int i2 = i + 1;
            this.f35666d.out.printf("Merged dex #%d (%d defs/%.1fKiB)%n", Integer.valueOf(i2), Integer.valueOf(this.f35663a[i].m16627n().f18428g.f18449b), Float.valueOf(this.f35663a[i].m16629l() / 1024.0f));
            i = i2;
        }
        this.f35666d.out.printf("Result is %d defs/%.1fKiB. Took %.1fs%n", Integer.valueOf(m3169w.m16627n().f18428g.f18449b), Float.valueOf(m3169w.m16629l() / 1024.0f), Float.valueOf(((float) nanoTime2) / 1.0E9f));
        return m3169w;
    }

    /* renamed from: s */
    public final void m3173s() {
        new C6863i(this.f35681s).m3145c();
    }

    /* renamed from: u */
    public final void m3171u() {
        new C6859e(this.f35670h).m3146b();
    }

    /* renamed from: x */
    public final void m3168x() {
        new C6861g(this.f35670h).m3146b();
    }

    /* renamed from: y */
    public final void m3167y() {
        new C6860f(this.f35670h).m3145c();
    }

    /* renamed from: z */
    public final void m3166z() {
        new C6862h(this.f35670h).m3146b();
    }

    /* renamed from: E */
    public final void m3210E(C6878e[] c6878eArr, C4409f c4409f, C6867c c6867c) {
        for (C4405d c4405d : c4409f.m16635f()) {
            C6878e m3111h = c6867c.m3111h(new C6878e(c4409f, c6867c, c4405d));
            int m3075e = m3111h.m3075e();
            if (c6878eArr[m3075e] == null) {
                c6878eArr[m3075e] = m3111h;
            } else if (this.f35665c != EnumC6853a.KEEP_FIRST) {
                throw new C4420g("Multiple dex files define " + c4409f.m16618w().get(c4405d.m16655j()));
            }
        }
    }

    /* renamed from: F */
    public final void m3209F(C4409f c4409f, C6867c c6867c) {
        C4434s.C4435a c4435a = c4409f.m16627n().f18441t;
        if (c4435a.m16488d()) {
            C4409f.C4416g m16624q = c4409f.m16624q(c4435a.f18450d);
            for (int i = 0; i < c4435a.f18449b; i++) {
                m3208G(m16624q, c6867c);
            }
        }
    }

    /* renamed from: J */
    public final void m3205J(C4409f c4409f, C6867c c6867c) {
        C4434s.C4435a c4435a = c4409f.m16627n().f18433l;
        if (c4435a.m16488d()) {
            C4409f.C4416g m16624q = c4409f.m16624q(c4435a.f18450d);
            for (int i = 0; i < c4435a.f18449b; i++) {
                m3206I(c6867c, m16624q);
            }
        }
    }

    /* renamed from: K */
    public final void m3204K(C4409f c4409f, C6867c c6867c) {
        C4434s.C4435a c4435a = c4409f.m16627n().f18434m;
        if (c4435a.m16488d()) {
            C4409f.C4416g m16624q = c4409f.m16624q(c4435a.f18450d);
            for (int i = 0; i < c4435a.f18449b; i++) {
                m3207H(c6867c, m16624q);
            }
        }
    }

    /* renamed from: Q */
    public final void m3198Q(C4406e.C4407a c4407a, C6867c c6867c) {
        int m16646b = c4407a.m16646b();
        int[] m16644d = c4407a.m16644d();
        int[] m16647a = c4407a.m16647a();
        if (m16646b != -1) {
            this.f35674l.m16588X(-m16644d.length);
        } else {
            this.f35674l.m16588X(m16644d.length);
        }
        for (int i = 0; i < m16644d.length; i++) {
            this.f35674l.m16585a0(c6867c.m3098u(m16644d[i]));
            this.f35674l.m16585a0(m16647a[i]);
        }
        if (m16646b != -1) {
            this.f35674l.m16585a0(m16646b);
        }
    }

    /* renamed from: U */
    public final void m3194U(C4409f c4409f, C6867c c6867c) {
        C4434s.C4435a c4435a = c4409f.m16627n().f18440s;
        if (c4435a.m16488d()) {
            C4409f.C4416g m16624q = c4409f.m16624q(c4435a.f18450d);
            for (int i = 0; i < c4435a.f18449b; i++) {
                m3195T(m16624q, c6867c);
            }
        }
    }

    /* renamed from: v */
    public final void m3170v() {
        C6878e[] m3175q = m3175q();
        this.f35682t.f18428g.f18450d = this.f35670h.m16575t();
        this.f35682t.f18428g.f18449b = m3175q.length;
        for (C6878e c6878e : m3175q) {
            m3201N(c6878e.m3077c(), c6878e.m3078b(), c6878e.m3076d());
        }
    }

    /* renamed from: w */
    public final C4409f m3169w() {
        m3213B();
        m3212C();
        m3211D();
        m3214A();
        m3168x();
        m3166z();
        m3167y();
        m3173s();
        m3192W();
        m3171u();
        m3170v();
        Arrays.sort(this.f35682t.f18442u);
        C4434s c4434s = this.f35682t;
        C4434s.C4435a c4435a = c4434s.f18422a;
        c4435a.f18450d = 0;
        c4435a.f18449b = 1;
        c4434s.f18446y = this.f35668f.m16629l();
        this.f35682t.m16496a();
        this.f35682t.m16491f(this.f35669g, m3172t());
        this.f35682t.m16490g(this.f35671i);
        this.f35668f.m16617x();
        return this.f35668f;
    }
}
