package p070g5;

import p220x3.C7297q;
/* renamed from: g5.q */
/* loaded from: classes2.dex */
public final class C3785q {

    /* renamed from: a */
    public final String f16861a;

    /* renamed from: b */
    public final String f16862b;

    /* renamed from: c */
    public final long f16863c;

    /* renamed from: d */
    public final long f16864d;

    /* renamed from: e */
    public final long f16865e;

    /* renamed from: f */
    public final long f16866f;

    /* renamed from: g */
    public final long f16867g;

    /* renamed from: h */
    public final Long f16868h;

    /* renamed from: i */
    public final Long f16869i;

    /* renamed from: j */
    public final Long f16870j;

    /* renamed from: k */
    public final Boolean f16871k;

    public C3785q(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        boolean z;
        boolean z2;
        boolean z3;
        C7297q.m1887f(str);
        C7297q.m1887f(str2);
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1892a(z);
        if (j2 >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        C7297q.m1892a(z2);
        if (j3 >= 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        C7297q.m1892a(z3);
        C7297q.m1892a(j5 >= 0);
        this.f16861a = str;
        this.f16862b = str2;
        this.f16863c = j;
        this.f16864d = j2;
        this.f16865e = j3;
        this.f16866f = j4;
        this.f16867g = j5;
        this.f16868h = l;
        this.f16869i = l2;
        this.f16870j = l3;
        this.f16871k = bool;
    }

    /* renamed from: b */
    public final C3785q m18025b(long j, long j2) {
        return new C3785q(this.f16861a, this.f16862b, this.f16863c, this.f16864d, this.f16865e, this.f16866f, j, Long.valueOf(j2), this.f16869i, this.f16870j, this.f16871k);
    }

    /* renamed from: c */
    public final C3785q m18024c(long j) {
        return new C3785q(this.f16861a, this.f16862b, this.f16863c, this.f16864d, this.f16865e, j, this.f16867g, this.f16868h, this.f16869i, this.f16870j, this.f16871k);
    }

    /* renamed from: a */
    public final C3785q m18026a(Long l, Long l2, Boolean bool) {
        Boolean bool2;
        if (bool != null && !bool.booleanValue()) {
            bool2 = null;
        } else {
            bool2 = bool;
        }
        return new C3785q(this.f16861a, this.f16862b, this.f16863c, this.f16864d, this.f16865e, this.f16866f, this.f16867g, this.f16868h, l, l2, bool2);
    }
}
