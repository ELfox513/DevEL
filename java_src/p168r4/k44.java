package p168r4;
/* renamed from: r4.k44 */
/* loaded from: classes2.dex */
public final class k44 implements r44 {

    /* renamed from: a */
    public final q44 f26290a;

    /* renamed from: b */
    public final long f26291b;

    /* renamed from: c */
    public final long f26292c;

    /* renamed from: d */
    public final w44 f26293d;

    /* renamed from: e */
    public int f26294e;

    /* renamed from: f */
    public long f26295f;

    /* renamed from: g */
    public long f26296g;

    /* renamed from: h */
    public long f26297h;

    /* renamed from: i */
    public long f26298i;

    /* renamed from: j */
    public long f26299j;

    /* renamed from: k */
    public long f26300k;

    /* renamed from: l */
    public long f26301l;

    @Override // p168r4.r44
    /* renamed from: a */
    public final void mo6230a(long j) {
        this.f26297h = C5979lc.m9703d0(j, 0L, this.f26295f - 1);
        this.f26294e = 2;
        this.f26298i = this.f26291b;
        this.f26299j = this.f26292c;
        this.f26300k = 0L;
        this.f26301l = this.f26295f;
    }

    @Override // p168r4.r44
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ z04 mo6228g() {
        if (this.f26295f != 0) {
            return new i44(this, null);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bd  */
    @Override // p168r4.r44
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo6229b(p168r4.b04 r24) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.k44.mo6229b(r4.b04):long");
    }

    public k44(w44 w44Var, long j, long j2, long j3, long j4, boolean z) {
        boolean z2;
        if (j >= 0 && j2 > j) {
            z2 = true;
        } else {
            z2 = false;
        }
        C5903ja.m10374a(z2);
        this.f26293d = w44Var;
        this.f26291b = j;
        this.f26292c = j2;
        if (j3 != j2 - j && !z) {
            this.f26294e = 0;
        } else {
            this.f26295f = j4;
            this.f26294e = 4;
        }
        this.f26290a = new q44();
    }
}
