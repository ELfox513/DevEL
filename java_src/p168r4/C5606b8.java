package p168r4;
/* renamed from: r4.b8 */
/* loaded from: classes2.dex */
public final class C5606b8 {

    /* renamed from: h */
    public static final InterfaceC5674d3<C5606b8> f20892h = C5569a8.f20413a;

    /* renamed from: a */
    public Object f20893a;

    /* renamed from: b */
    public Object f20894b;

    /* renamed from: c */
    public int f20895c;

    /* renamed from: d */
    public long f20896d;

    /* renamed from: e */
    public long f20897e;

    /* renamed from: f */
    public boolean f20898f;

    /* renamed from: g */
    public e61 f20899g = e61.f22857c;

    /* renamed from: a */
    public final C5606b8 m12857a(Object obj, Object obj2, int i, long j, long j2, e61 e61Var, boolean z) {
        this.f20893a = obj;
        this.f20894b = obj2;
        this.f20895c = 0;
        this.f20896d = j;
        this.f20897e = 0L;
        this.f20899g = e61Var;
        this.f20898f = z;
        return this;
    }

    /* renamed from: b */
    public final long m12856b(int i) {
        long j = this.f20899g.m11848a(i).f24014a;
        return 0L;
    }

    /* renamed from: c */
    public final int m12855c(int i) {
        return this.f20899g.m11848a(i).m11184a(-1);
    }

    /* renamed from: d */
    public final int m12854d(int i, int i2) {
        return this.f20899g.m11848a(i).m11184a(i2);
    }

    /* renamed from: e */
    public final int m12853e(long j) {
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5606b8.class.equals(obj.getClass())) {
            C5606b8 c5606b8 = (C5606b8) obj;
            if (C5979lc.m9729H(this.f20893a, c5606b8.f20893a) && C5979lc.m9729H(this.f20894b, c5606b8.f20894b) && this.f20895c == c5606b8.f20895c && this.f20896d == c5606b8.f20896d && this.f20898f == c5606b8.f20898f && C5979lc.m9729H(this.f20899g, c5606b8.f20899g)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public final int m12852f(long j) {
        return -1;
    }

    /* renamed from: g */
    public final int m12851g(int i) {
        return this.f20899g.m11848a(i).f24015b;
    }

    /* renamed from: i */
    public final long m12849i() {
        long j = this.f20899g.f22860a;
        return 0L;
    }

    /* renamed from: j */
    public final boolean m12848j(int i) {
        boolean z = this.f20899g.m11848a(i).f24020g;
        return false;
    }

    /* renamed from: k */
    public final long m12847k(int i) {
        long j = this.f20899g.m11848a(i).f24019f;
        return 0L;
    }

    /* renamed from: h */
    public final long m12850h(int i, int i2) {
        gf0 m11848a = this.f20899g.m11848a(i);
        if (m11848a.f24015b != -1) {
            return m11848a.f24018e[i2];
        }
        return -9223372036854775807L;
    }

    public final int hashCode() {
        int hashCode;
        Object obj = this.f20893a;
        int i = 0;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        int i2 = (hashCode + 217) * 31;
        Object obj2 = this.f20894b;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        int i3 = this.f20895c;
        long j = this.f20896d;
        return ((((((((i2 + i) * 31) + i3) * 31) + ((int) ((j >>> 32) ^ j))) * 961) + (this.f20898f ? 1 : 0)) * 31) + this.f20899g.hashCode();
    }
}
