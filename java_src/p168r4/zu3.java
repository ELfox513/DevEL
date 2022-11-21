package p168r4;

import android.net.Uri;
/* renamed from: r4.zu3 */
/* loaded from: classes2.dex */
public final class zu3 extends AbstractC5717e8 {

    /* renamed from: h */
    public static final Object f34739h = new Object();

    /* renamed from: i */
    public static final C6306u5 f34740i;

    /* renamed from: c */
    public final long f34741c;

    /* renamed from: d */
    public final long f34742d;

    /* renamed from: e */
    public final boolean f34743e;

    /* renamed from: f */
    public final C6306u5 f34744f;

    /* renamed from: g */
    public final C6195r5 f34745g;

    public zu3(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, C6306u5 c6306u5, C6195r5 c6195r5) {
        this.f34741c = j4;
        this.f34742d = j5;
        this.f34743e = z;
        this.f34744f = c6306u5;
        this.f34745g = c6195r5;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: a */
    public final int mo4076a() {
        return 1;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: g */
    public final int mo4074g() {
        return 1;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: h */
    public final C5606b8 mo4073h(int i, C5606b8 c5606b8, boolean z) {
        Object obj;
        C5903ja.m10372c(i, 0, 1);
        if (z) {
            obj = f34739h;
        } else {
            obj = null;
        }
        c5606b8.m12857a(null, obj, 0, this.f34741c, 0L, e61.f22857c, false);
        return c5606b8;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: i */
    public final int mo4072i(Object obj) {
        return f34739h.equals(obj) ? 0 : -1;
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: j */
    public final Object mo4071j(int i) {
        C5903ja.m10372c(i, 0, 1);
        return f34739h;
    }

    static {
        C5972l5 c5972l5 = new C5972l5();
        c5972l5.m9793a("SinglePeriodTimeline");
        c5972l5.m9792b(Uri.EMPTY);
        f34740i = c5972l5.m9791c();
    }

    @Override // p168r4.AbstractC5717e8
    /* renamed from: f */
    public final C5679d8 mo4075f(int i, C5679d8 c5679d8, long j) {
        C5903ja.m10372c(i, 0, 1);
        c5679d8.m12208a(C5679d8.f22142o, this.f34744f, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.f34743e, false, this.f34745g, 0L, this.f34742d, 0, 0, 0L);
        return c5679d8;
    }
}
