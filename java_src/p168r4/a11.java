package p168r4;

import android.content.Context;
/* renamed from: r4.a11 */
/* loaded from: classes2.dex */
public final class a11 extends i31 {

    /* renamed from: i */
    public final cs0 f20332i;

    /* renamed from: j */
    public final int f20333j;

    /* renamed from: k */
    public final Context f20334k;

    /* renamed from: l */
    public final h01 f20335l;

    /* renamed from: m */
    public final dh1 f20336m;

    /* renamed from: n */
    public final w71 f20337n;

    /* renamed from: o */
    public boolean f20338o;

    public a11(h31 h31Var, Context context, cs0 cs0Var, int i, h01 h01Var, dh1 dh1Var, w71 w71Var) {
        super(h31Var);
        this.f20338o = false;
        this.f20332i = cs0Var;
        this.f20334k = context;
        this.f20333j = i;
        this.f20335l = h01Var;
        this.f20336m = dh1Var;
        this.f20337n = w71Var;
    }

    /* renamed from: g */
    public final void m13062g(InterfaceC5622bo interfaceC5622bo) {
        cs0 cs0Var = this.f20332i;
        if (cs0Var != null) {
            cs0Var.mo5029z0(interfaceC5622bo);
        }
    }

    /* renamed from: i */
    public final int m13060i() {
        return this.f20333j;
    }

    /* renamed from: j */
    public final void m13059j(long j, int i) {
        this.f20335l.m11021a(j, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r4 = r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [android.content.Context] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13061h(android.app.Activity r4, p168r4.InterfaceC5954ko r5, boolean r6) {
        /*
            r3 = this;
            if (r4 != 0) goto L4
            android.content.Context r4 = r3.f20334k
        L4:
            r4.jz<java.lang.Boolean> r0 = p168r4.C6225rz.f31106r0
            r4.pz r1 = p168r4.C5592av.m12935c()
            java.lang.Object r0 = r1.m8098c(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L58
            p235z2.C7601t.m939d()
            boolean r0 = p016b3.C0497k2.m26312j(r4)
            if (r0 == 0) goto L58
            java.lang.String r5 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            p168r4.cm0.m12437f(r5)
            r4.w71 r5 = r3.f20337n
            r5.mo5813e()
            r4.jz<java.lang.Boolean> r5 = p168r4.C6225rz.f31114s0
            r4.pz r6 = p168r4.C5592av.m12935c()
            java.lang.Object r5 = r6.m8098c(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto Lae
            r4.sx2 r5 = new r4.sx2
            android.content.Context r4 = r4.getApplicationContext()
            b3.c1 r6 = p235z2.C7601t.m925r()
            android.os.Looper r6 = r6.m26396a()
            r5.<init>(r4, r6)
            r4.bp2 r4 = r3.f24945a
            r4.ap2 r4 = r4.f21154b
            r4.so2 r4 = r4.f20574b
            java.lang.String r4 = r4.f31426b
            r5.m6954a(r4)
            return
        L58:
            boolean r0 = r3.f20338o
            if (r0 == 0) goto L7f
            java.lang.String r0 = "App open interstitial ad is already visible."
            p168r4.cm0.m12437f(r0)
            r4.jz<java.lang.Boolean> r0 = p168r4.C6225rz.f30949X6
            r4.pz r1 = p168r4.C5592av.m12935c()
            java.lang.Object r0 = r1.m8098c(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L7f
            r4.w71 r0 = r3.f20337n
            r1 = 10
            r2 = 0
            r4.lt r1 = p168r4.dq2.m11989d(r1, r2, r2)
            r0.mo5818S(r1)
        L7f:
            boolean r0 = r3.f20338o
            if (r0 != 0) goto Lae
            r4.dh1 r0 = r3.f20336m     // Catch: p168r4.ch1 -> L8e
            r4.w71 r1 = r3.f20337n     // Catch: p168r4.ch1 -> L8e
            r0.mo4920a(r6, r4, r1)     // Catch: p168r4.ch1 -> L8e
            r4 = 1
            r3.f20338o = r4
            return
        L8e:
            r4 = move-exception
            r4.jz<java.lang.Boolean> r6 = p168r4.C6225rz.f30949X6
            r4.pz r0 = p168r4.C5592av.m12935c()
            java.lang.Object r6 = r0.m8098c(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto La7
            r4.w71 r5 = r3.f20337n
            r5.mo5817U(r4)
            return
        La7:
            r4.lt r4 = p168r4.dq2.m11992a(r4)
            r5.mo9991q0(r4)
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.a11.m13061h(android.app.Activity, r4.ko, boolean):void");
    }

    @Override // p168r4.i31
    /* renamed from: b */
    public final void mo4220b() {
        super.mo4220b();
        cs0 cs0Var = this.f20332i;
        if (cs0Var != null) {
            cs0Var.destroy();
        }
    }
}
