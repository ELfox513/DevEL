package p168r4;

import java.util.ArrayList;
import p235z2.C7601t;
/* renamed from: r4.cn */
/* loaded from: classes2.dex */
public final class C5657cn {

    /* renamed from: a */
    public final int f21585a;

    /* renamed from: b */
    public final int f21586b;

    /* renamed from: c */
    public final int f21587c;

    /* renamed from: d */
    public final boolean f21588d;

    /* renamed from: e */
    public final C6250sn f21589e;

    /* renamed from: f */
    public final C5585ao f21590f;

    /* renamed from: n */
    public int f21598n;

    /* renamed from: g */
    public final Object f21591g = new Object();

    /* renamed from: h */
    public final ArrayList<String> f21592h = new ArrayList<>();

    /* renamed from: i */
    public final ArrayList<String> f21593i = new ArrayList<>();

    /* renamed from: j */
    public final ArrayList<C6102on> f21594j = new ArrayList<>();

    /* renamed from: k */
    public int f21595k = 0;

    /* renamed from: l */
    public int f21596l = 0;

    /* renamed from: m */
    public int f21597m = 0;

    /* renamed from: o */
    public String f21599o = "";

    /* renamed from: p */
    public String f21600p = "";

    /* renamed from: q */
    public String f21601q = "";

    /* renamed from: b */
    public final String m12428b() {
        return this.f21599o;
    }

    /* renamed from: c */
    public final String m12427c() {
        return this.f21600p;
    }

    /* renamed from: d */
    public final String m12426d() {
        return this.f21601q;
    }

    /* renamed from: e */
    public final void m12425e() {
        synchronized (this.f21591g) {
            this.f21598n -= 100;
        }
    }

    /* renamed from: f */
    public final void m12424f() {
        synchronized (this.f21591g) {
            this.f21597m--;
        }
    }

    /* renamed from: g */
    public final void m12423g() {
        synchronized (this.f21591g) {
            this.f21597m++;
        }
    }

    public final int hashCode() {
        return this.f21599o.hashCode();
    }

    /* renamed from: i */
    public final void m12421i(String str, boolean z, float f, float f2, float f3, float f4) {
        m12414p(str, z, f, f2, f3, f4);
    }

    /* renamed from: j */
    public final void m12420j() {
        synchronized (this.f21591g) {
            int m12418l = m12418l(this.f21595k, this.f21596l);
            if (m12418l > this.f21598n) {
                this.f21598n = m12418l;
            }
        }
    }

    /* renamed from: l */
    public final int m12418l(int i, int i2) {
        return this.f21588d ? this.f21586b : (i * this.f21585a) + (i2 * this.f21586b);
    }

    /* renamed from: m */
    public final int m12417m() {
        return this.f21598n;
    }

    /* renamed from: n */
    public final void m12416n(int i) {
        this.f21596l = i;
    }

    /* renamed from: o */
    public final int m12415o() {
        return this.f21595k;
    }

    /* renamed from: a */
    public final boolean m12429a() {
        boolean z;
        synchronized (this.f21591g) {
            if (this.f21597m == 0) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C5657cn)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((C5657cn) obj).f21599o;
        if (str == null || !str.equals(this.f21599o)) {
            return false;
        }
        return true;
    }

    /* renamed from: k */
    public final void m12419k() {
        synchronized (this.f21591g) {
            int m12418l = m12418l(this.f21595k, this.f21596l);
            if (m12418l > this.f21598n) {
                this.f21598n = m12418l;
                if (!C7601t.m935h().m9051p().mo26204e()) {
                    this.f21599o = this.f21589e.m7098a(this.f21592h);
                    this.f21600p = this.f21589e.m7098a(this.f21593i);
                }
                if (!C7601t.m935h().m9051p().mo26202f()) {
                    this.f21601q = this.f21590f.m12989a(this.f21593i, this.f21594j);
                }
            }
        }
    }

    /* renamed from: p */
    public final void m12414p(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null && str.length() >= this.f21587c) {
            synchronized (this.f21591g) {
                this.f21592h.add(str);
                this.f21595k += str.length();
                if (z) {
                    this.f21593i.add(str);
                    this.f21594j.add(new C6102on(f, f2, f3, f4, this.f21593i.size() - 1));
                }
            }
        }
    }

    public final String toString() {
        int i = this.f21596l;
        int i2 = this.f21598n;
        int i3 = this.f21595k;
        String m12413q = m12413q(this.f21592h, 100);
        String m12413q2 = m12413q(this.f21593i, 100);
        String str = this.f21599o;
        String str2 = this.f21600p;
        String str3 = this.f21601q;
        int length = String.valueOf(m12413q).length();
        int length2 = String.valueOf(m12413q2).length();
        int length3 = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 165 + length2 + length3 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(m12413q);
        sb.append("\n viewableText");
        sb.append(m12413q2);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }

    public C5657cn(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f21585a = i;
        this.f21586b = i2;
        this.f21587c = i3;
        this.f21588d = z;
        this.f21589e = new C6250sn(i4);
        this.f21590f = new C5585ao(i5, i6, i7);
    }

    /* renamed from: q */
    public static final String m12413q(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            sb.append(arrayList.get(i2));
            sb.append(' ');
            i2++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        if (sb2.length() < 100) {
            return sb2;
        }
        return sb2.substring(0, 100);
    }

    /* renamed from: h */
    public final void m12422h(String str, boolean z, float f, float f2, float f3, float f4) {
        m12414p(str, z, f, f2, f3, f4);
        synchronized (this.f21591g) {
            if (this.f21597m < 0) {
                cm0.m12442a("ActivityContent: negative number of WebViews.");
            }
            m12419k();
        }
    }
}
