package p168r4;

import android.os.Bundle;
/* renamed from: r4.m02 */
/* loaded from: classes2.dex */
public final class m02 implements t73<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ boolean f27437a;

    /* renamed from: b */
    public final /* synthetic */ n02 f27438b;

    public m02(n02 n02Var, boolean z) {
        this.f27438b = n02Var;
        this.f27437a = z;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        cm0.m12440c("Failed to get signals bundle");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
    @Override // p168r4.t73
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void mo4626b(android.os.Bundle r8) {
        /*
            r7 = this;
            android.os.Bundle r8 = (android.os.Bundle) r8
            r4.n02 r0 = r7.f27438b
            b3.y1 r0 = p168r4.n02.m9228b(r0)
            boolean r0 = r0.mo26190y()
            if (r0 == 0) goto Lf
            return
        Lf:
            java.lang.String r0 = "ad_types"
            java.lang.Object r0 = r8.get(r0)
            boolean r1 = r0 instanceof java.util.List
            if (r1 == 0) goto L1c
            java.util.List r0 = (java.util.List) r0
            goto L26
        L1c:
            boolean r1 = r0 instanceof java.lang.String[]
            if (r1 == 0) goto L4c
            java.lang.String[] r0 = (java.lang.String[]) r0
            java.util.List r0 = java.util.Arrays.asList(r0)
        L26:
            java.util.ArrayList r1 = new java.util.ArrayList
            int r2 = r0.size()
            r1.<init>(r2)
            java.util.Iterator r0 = r0.iterator()
        L33:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L47
            java.lang.Object r2 = r0.next()
            boolean r3 = r2 instanceof java.lang.String
            if (r3 == 0) goto L33
            java.lang.String r2 = (java.lang.String) r2
            r1.add(r2)
            goto L33
        L47:
            java.util.List r0 = java.util.Collections.unmodifiableList(r1)
            goto L50
        L4c:
            java.util.List r0 = java.util.Collections.emptyList()
        L50:
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.Iterator r0 = r0.iterator()
        L59:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lb3
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            int r2 = r1.hashCode()
            r3 = 3
            r5 = 2
            r6 = 1
            switch(r2) {
                case -1396342996: goto L8e;
                case -1052618729: goto L84;
                case -239580146: goto L7a;
                case 604727084: goto L70;
                default: goto L6f;
            }
        L6f:
            goto L98
        L70:
            java.lang.String r2 = "interstitial"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L98
            r1 = 1
            goto L99
        L7a:
            java.lang.String r2 = "rewarded"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L98
            r1 = 3
            goto L99
        L84:
            java.lang.String r2 = "native"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L98
            r1 = 2
            goto L99
        L8e:
            java.lang.String r2 = "banner"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L98
            r1 = 0
            goto L99
        L98:
            r1 = -1
        L99:
            if (r1 == 0) goto Lad
            if (r1 == r6) goto Laa
            if (r1 == r5) goto La7
            if (r1 == r3) goto La4
            r4.eq r1 = p168r4.EnumC5735eq.AD_FORMAT_TYPE_UNSPECIFIED
            goto Laf
        La4:
            r4.eq r1 = p168r4.EnumC5735eq.REWARD_BASED_VIDEO_AD
            goto Laf
        La7:
            r4.eq r1 = p168r4.EnumC5735eq.NATIVE_APP_INSTALL
            goto Laf
        Laa:
            r4.eq r1 = p168r4.EnumC5735eq.INTERSTITIAL
            goto Laf
        Lad:
            r4.eq r1 = p168r4.EnumC5735eq.BANNER
        Laf:
            r4.add(r1)
            goto L59
        Lb3:
            r4.n02 r0 = r7.f27438b
            r4.wr r6 = p168r4.n02.m9226d(r0, r8)
            r4.n02 r0 = r7.f27438b
            r4.nr r5 = p168r4.n02.m9227c(r0, r8)
            r4.n02 r8 = r7.f27438b
            r4.b02 r8 = p168r4.n02.m9229a(r8)
            r4.k02 r0 = new r4.k02
            boolean r3 = r7.f27437a
            r1 = r0
            r2 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r8.m12892a(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.m02.mo4626b(java.lang.Object):void");
    }
}
