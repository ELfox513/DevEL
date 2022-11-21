package p168r4;

import android.net.Uri;
/* renamed from: r4.d8 */
/* loaded from: classes2.dex */
public final class C5679d8 {

    /* renamed from: o */
    public static final Object f22142o = new Object();

    /* renamed from: p */
    public static final Object f22143p = new Object();

    /* renamed from: q */
    public static final C6306u5 f22144q;

    /* renamed from: r */
    public static final InterfaceC5674d3<C5679d8> f22145r;

    /* renamed from: a */
    public Object f22146a = f22142o;

    /* renamed from: b */
    public C6306u5 f22147b = f22144q;

    /* renamed from: c */
    public long f22148c;

    /* renamed from: d */
    public long f22149d;

    /* renamed from: e */
    public long f22150e;

    /* renamed from: f */
    public boolean f22151f;

    /* renamed from: g */
    public boolean f22152g;
    @Deprecated

    /* renamed from: h */
    public boolean f22153h;

    /* renamed from: i */
    public C6195r5 f22154i;

    /* renamed from: j */
    public boolean f22155j;

    /* renamed from: k */
    public long f22156k;

    /* renamed from: l */
    public long f22157l;

    /* renamed from: m */
    public int f22158m;

    /* renamed from: n */
    public int f22159n;

    /* renamed from: a */
    public final C5679d8 m12208a(Object obj, C6306u5 c6306u5, Object obj2, long j, long j2, long j3, boolean z, boolean z2, C6195r5 c6195r5, long j4, long j5, int i, int i2, long j6) {
        this.f22146a = obj;
        this.f22147b = c6306u5 != null ? c6306u5 : f22144q;
        this.f22148c = -9223372036854775807L;
        this.f22149d = -9223372036854775807L;
        this.f22150e = -9223372036854775807L;
        this.f22151f = z;
        this.f22152g = z2;
        this.f22153h = c6195r5 != null;
        this.f22154i = c6195r5;
        this.f22156k = 0L;
        this.f22157l = j5;
        this.f22158m = 0;
        this.f22159n = 0;
        this.f22155j = false;
        return this;
    }

    /* renamed from: b */
    public final boolean m12207b() {
        C5903ja.m10371d(this.f22153h == (this.f22154i != null));
        return this.f22154i != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5679d8.class.equals(obj.getClass())) {
            C5679d8 c5679d8 = (C5679d8) obj;
            if (C5979lc.m9729H(this.f22146a, c5679d8.f22146a) && C5979lc.m9729H(this.f22147b, c5679d8.f22147b) && C5979lc.m9729H(null, null) && C5979lc.m9729H(this.f22154i, c5679d8.f22154i) && this.f22148c == c5679d8.f22148c && this.f22149d == c5679d8.f22149d && this.f22150e == c5679d8.f22150e && this.f22151f == c5679d8.f22151f && this.f22152g == c5679d8.f22152g && this.f22155j == c5679d8.f22155j && this.f22157l == c5679d8.f22157l && this.f22158m == c5679d8.f22158m && this.f22159n == c5679d8.f22159n) {
                return true;
            }
        }
        return false;
    }

    static {
        C5972l5 c5972l5 = new C5972l5();
        c5972l5.m9793a("com.google.android.exoplayer2.Timeline");
        c5972l5.m9792b(Uri.EMPTY);
        f22144q = c5972l5.m9791c();
        f22145r = C5642c8.f21438a;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (((this.f22146a.hashCode() + 217) * 31) + this.f22147b.hashCode()) * 961;
        C6195r5 c6195r5 = this.f22154i;
        if (c6195r5 == null) {
            hashCode = 0;
        } else {
            hashCode = c6195r5.hashCode();
        }
        long j = this.f22148c;
        long j2 = this.f22149d;
        long j3 = this.f22150e;
        boolean z = this.f22151f;
        boolean z2 = this.f22152g;
        boolean z3 = this.f22155j;
        long j4 = this.f22157l;
        return (((((((((((((((((((hashCode2 + hashCode) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 961) + ((int) ((j4 >>> 32) ^ j4))) * 31) + this.f22158m) * 31) + this.f22159n) * 31;
    }
}
