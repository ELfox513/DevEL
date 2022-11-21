package p057f1;

import androidx.work.C0380b;
import java.util.List;
import p118m.InterfaceC4585a;
import p209w0.AbstractC7114j;
import p209w0.C7103b;
import p209w0.EnumC7102a;
import p209w0.EnumC7125n;
import p209w0.EnumC7130s;
/* renamed from: f1.p */
/* loaded from: classes.dex */
public final class C3482p {

    /* renamed from: s */
    public static final String f15919s = AbstractC7114j.m2489f("WorkSpec");

    /* renamed from: t */
    public static final InterfaceC4585a<List<Object>, List<Object>> f15920t = new C3483a();

    /* renamed from: a */
    public String f15921a;

    /* renamed from: b */
    public EnumC7130s f15922b;

    /* renamed from: c */
    public String f15923c;

    /* renamed from: d */
    public String f15924d;

    /* renamed from: e */
    public C0380b f15925e;

    /* renamed from: f */
    public C0380b f15926f;

    /* renamed from: g */
    public long f15927g;

    /* renamed from: h */
    public long f15928h;

    /* renamed from: i */
    public long f15929i;

    /* renamed from: j */
    public C7103b f15930j;

    /* renamed from: k */
    public int f15931k;

    /* renamed from: l */
    public EnumC7102a f15932l;

    /* renamed from: m */
    public long f15933m;

    /* renamed from: n */
    public long f15934n;

    /* renamed from: o */
    public long f15935o;

    /* renamed from: p */
    public long f15936p;

    /* renamed from: q */
    public boolean f15937q;

    /* renamed from: r */
    public EnumC7125n f15938r;

    /* renamed from: f1.p$a */
    /* loaded from: classes.dex */
    public class C3483a implements InterfaceC4585a<List<Object>, List<Object>> {
    }

    /* renamed from: f1.p$b */
    /* loaded from: classes.dex */
    public static class C3484b {

        /* renamed from: a */
        public String f15939a;

        /* renamed from: b */
        public EnumC7130s f15940b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C3484b)) {
                return false;
            }
            C3484b c3484b = (C3484b) obj;
            if (this.f15940b != c3484b.f15940b) {
                return false;
            }
            return this.f15939a.equals(c3484b.f15939a);
        }

        public int hashCode() {
            return (this.f15939a.hashCode() * 31) + this.f15940b.hashCode();
        }
    }

    public C3482p(String str, String str2) {
        this.f15922b = EnumC7130s.ENQUEUED;
        C0380b c0380b = C0380b.f1365c;
        this.f15925e = c0380b;
        this.f15926f = c0380b;
        this.f15930j = C7103b.f36093i;
        this.f15932l = EnumC7102a.EXPONENTIAL;
        this.f15933m = 30000L;
        this.f15936p = -1L;
        this.f15938r = EnumC7125n.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f15921a = str;
        this.f15923c = str2;
    }

    /* renamed from: b */
    public boolean m18787b() {
        return !C7103b.f36093i.equals(this.f15930j);
    }

    /* renamed from: c */
    public boolean m18786c() {
        return this.f15922b == EnumC7130s.ENQUEUED && this.f15931k > 0;
    }

    /* renamed from: d */
    public boolean m18785d() {
        return this.f15928h != 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3482p.class != obj.getClass()) {
            return false;
        }
        C3482p c3482p = (C3482p) obj;
        if (this.f15927g != c3482p.f15927g || this.f15928h != c3482p.f15928h || this.f15929i != c3482p.f15929i || this.f15931k != c3482p.f15931k || this.f15933m != c3482p.f15933m || this.f15934n != c3482p.f15934n || this.f15935o != c3482p.f15935o || this.f15936p != c3482p.f15936p || this.f15937q != c3482p.f15937q || !this.f15921a.equals(c3482p.f15921a) || this.f15922b != c3482p.f15922b || !this.f15923c.equals(c3482p.f15923c)) {
            return false;
        }
        String str = this.f15924d;
        if (str == null ? c3482p.f15924d == null : str.equals(c3482p.f15924d)) {
            return this.f15925e.equals(c3482p.f15925e) && this.f15926f.equals(c3482p.f15926f) && this.f15930j.equals(c3482p.f15930j) && this.f15932l == c3482p.f15932l && this.f15938r == c3482p.f15938r;
        }
        return false;
    }

    public String toString() {
        return "{WorkSpec: " + this.f15921a + "}";
    }

    public int hashCode() {
        int i;
        int hashCode = ((((this.f15921a.hashCode() * 31) + this.f15922b.hashCode()) * 31) + this.f15923c.hashCode()) * 31;
        String str = this.f15924d;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        long j = this.f15927g;
        long j2 = this.f15928h;
        long j3 = this.f15929i;
        long j4 = this.f15933m;
        long j5 = this.f15934n;
        long j6 = this.f15935o;
        long j7 = this.f15936p;
        return ((((((((((((((((((((((((((((hashCode + i) * 31) + this.f15925e.hashCode()) * 31) + this.f15926f.hashCode()) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + this.f15930j.hashCode()) * 31) + this.f15931k) * 31) + this.f15932l.hashCode()) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.f15937q ? 1 : 0)) * 31) + this.f15938r.hashCode();
    }

    /* renamed from: a */
    public long m18788a() {
        long j;
        long scalb;
        boolean z = false;
        if (m18786c()) {
            if (this.f15932l == EnumC7102a.LINEAR) {
                z = true;
            }
            if (z) {
                scalb = this.f15933m * this.f15931k;
            } else {
                scalb = Math.scalb((float) this.f15933m, this.f15931k - 1);
            }
            return this.f15934n + Math.min(18000000L, scalb);
        }
        long j2 = 0;
        if (m18785d()) {
            long currentTimeMillis = System.currentTimeMillis();
            long j3 = this.f15934n;
            if (j3 == 0) {
                j = currentTimeMillis + this.f15927g;
            } else {
                j = j3;
            }
            long j4 = this.f15929i;
            long j5 = this.f15928h;
            if (j4 != j5) {
                z = true;
            }
            if (z) {
                if (j3 == 0) {
                    j2 = j4 * (-1);
                }
                return j + j5 + j2;
            }
            if (j3 != 0) {
                j2 = j5;
            }
            return j + j2;
        }
        long j6 = this.f15934n;
        if (j6 == 0) {
            j6 = System.currentTimeMillis();
        }
        return j6 + this.f15927g;
    }

    public C3482p(C3482p c3482p) {
        this.f15922b = EnumC7130s.ENQUEUED;
        C0380b c0380b = C0380b.f1365c;
        this.f15925e = c0380b;
        this.f15926f = c0380b;
        this.f15930j = C7103b.f36093i;
        this.f15932l = EnumC7102a.EXPONENTIAL;
        this.f15933m = 30000L;
        this.f15936p = -1L;
        this.f15938r = EnumC7125n.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        this.f15921a = c3482p.f15921a;
        this.f15923c = c3482p.f15923c;
        this.f15922b = c3482p.f15922b;
        this.f15924d = c3482p.f15924d;
        this.f15925e = new C0380b(c3482p.f15925e);
        this.f15926f = new C0380b(c3482p.f15926f);
        this.f15927g = c3482p.f15927g;
        this.f15928h = c3482p.f15928h;
        this.f15929i = c3482p.f15929i;
        this.f15930j = new C7103b(c3482p.f15930j);
        this.f15931k = c3482p.f15931k;
        this.f15932l = c3482p.f15932l;
        this.f15933m = c3482p.f15933m;
        this.f15934n = c3482p.f15934n;
        this.f15935o = c3482p.f15935o;
        this.f15936p = c3482p.f15936p;
        this.f15937q = c3482p.f15937q;
        this.f15938r = c3482p.f15938r;
    }
}
