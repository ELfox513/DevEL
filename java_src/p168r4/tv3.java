package p168r4;
/* renamed from: r4.tv3 */
/* loaded from: classes2.dex */
public final class tv3 implements Comparable<tv3> {

    /* renamed from: a */
    public final boolean f32037a;

    /* renamed from: b */
    public final ov3 f32038b;

    /* renamed from: d */
    public final boolean f32039d;

    /* renamed from: k */
    public final boolean f32040k;

    /* renamed from: p */
    public final int f32041p;

    /* renamed from: q */
    public final int f32042q;

    /* renamed from: r */
    public final int f32043r;

    @Override // java.lang.Comparable
    /* renamed from: c */
    public final int compareTo(tv3 tv3Var) {
        b53 b53Var;
        b53 mo4452a;
        b53 b53Var2;
        if (this.f32037a && this.f32040k) {
            mo4452a = uv3.f32456f;
        } else {
            b53Var = uv3.f32456f;
            mo4452a = b53Var.mo4452a();
        }
        c33 mo4470a = c33.m12635i().mo4467d(this.f32040k, tv3Var.f32040k).mo4467d(this.f32037a, tv3Var.f32037a).mo4467d(this.f32039d, tv3Var.f32039d).mo4470a(Integer.valueOf(this.f32043r), Integer.valueOf(tv3Var.f32043r), b53.m12868b().mo4452a());
        Integer valueOf = Integer.valueOf(this.f32041p);
        Integer valueOf2 = Integer.valueOf(tv3Var.f32041p);
        boolean z = this.f32038b.f28225u;
        b53Var2 = uv3.f32457g;
        return mo4470a.mo4470a(valueOf, valueOf2, b53Var2).mo4470a(Integer.valueOf(this.f32042q), Integer.valueOf(tv3Var.f32042q), mo4452a).mo4470a(Integer.valueOf(this.f32041p), Integer.valueOf(tv3Var.f32041p), mo4452a).mo4466e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
        if (r4 <= 2.14748365E9f) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0039, code lost:
        if (r10 >= 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0041, code lost:
        if (r10 >= 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004e, code lost:
        if (r10 >= 0.0f) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0056, code lost:
        if (r10 >= 0) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0088 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public tv3(p168r4.C5713e5 r7, p168r4.ov3 r8, int r9, boolean r10) {
        /*
            r6 = this;
            r6.<init>()
            r6.f32038b = r8
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r1 = 1
            r2 = -1
            r3 = 0
            if (r10 == 0) goto L2e
            int r4 = r7.f22819q
            if (r4 == r2) goto L12
            int r4 = r8.f28205a
        L12:
            int r4 = r7.f22820r
            if (r4 == r2) goto L18
            int r4 = r8.f28206b
        L18:
            float r4 = r7.f22821s
            int r5 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r5 == 0) goto L26
            int r5 = r8.f28207c
            r5 = 1325400064(0x4f000000, float:2.14748365E9)
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 > 0) goto L2e
        L26:
            int r4 = r7.f22810h
            if (r4 == r2) goto L2c
            int r4 = r8.f28208d
        L2c:
            r4 = 1
            goto L2f
        L2e:
            r4 = 0
        L2f:
            r6.f32037a = r4
            if (r10 == 0) goto L59
            int r10 = r7.f22819q
            if (r10 == r2) goto L3b
            int r4 = r8.f28209e
            if (r10 < 0) goto L59
        L3b:
            int r10 = r7.f22820r
            if (r10 == r2) goto L43
            int r4 = r8.f28210f
            if (r10 < 0) goto L59
        L43:
            float r10 = r7.f22821s
            int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r0 == 0) goto L50
            int r0 = r8.f28211g
            r0 = 0
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 < 0) goto L59
        L50:
            int r10 = r7.f22810h
            if (r10 == r2) goto L5a
            int r0 = r8.f28212h
            if (r10 < 0) goto L59
            goto L5a
        L59:
            r1 = 0
        L5a:
            r6.f32039d = r1
            boolean r9 = p168r4.uv3.m6327k(r9, r3)
            r6.f32040k = r9
            int r9 = r7.f22810h
            r6.f32041p = r9
            int r9 = r7.m11854c()
            r6.f32042q = r9
        L6c:
            r4.o33<java.lang.String> r9 = r8.f28216l
            int r9 = r9.size()
            if (r3 >= r9) goto L88
            java.lang.String r9 = r7.f22814l
            if (r9 == 0) goto L85
            r4.o33<java.lang.String> r10 = r8.f28216l
            java.lang.Object r10 = r10.get(r3)
            boolean r9 = r9.equals(r10)
            if (r9 == 0) goto L85
            goto L8b
        L85:
            int r3 = r3 + 1
            goto L6c
        L88:
            r3 = 2147483647(0x7fffffff, float:NaN)
        L8b:
            r6.f32043r = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.tv3.<init>(r4.e5, r4.ov3, int, boolean):void");
    }
}
