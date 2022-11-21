package p168r4;

import android.annotation.TargetApi;
@TargetApi(16)
/* renamed from: r4.yl */
/* loaded from: classes2.dex */
public final class C6470yl {

    /* renamed from: a */
    public final Choreographer$FrameCallbackC6433xl f34124a;

    /* renamed from: b */
    public final boolean f34125b;

    /* renamed from: c */
    public final long f34126c;

    /* renamed from: d */
    public final long f34127d;

    /* renamed from: e */
    public long f34128e;

    /* renamed from: f */
    public long f34129f;

    /* renamed from: g */
    public long f34130g;

    /* renamed from: h */
    public boolean f34131h;

    /* renamed from: i */
    public long f34132i;

    /* renamed from: j */
    public long f34133j;

    /* renamed from: k */
    public long f34134k;

    public C6470yl(double d) {
        long j;
        boolean z = d != -1.0d;
        this.f34125b = z;
        if (z) {
            this.f34124a = Choreographer$FrameCallbackC6433xl.m5288a();
            long j2 = (long) (1.0E9d / d);
            this.f34126c = j2;
            j = (j2 * 80) / 100;
        } else {
            this.f34124a = null;
            j = -1;
            this.f34126c = -1L;
        }
        this.f34127d = j;
    }

    /* renamed from: a */
    public final void m4636a() {
        this.f34131h = false;
        if (this.f34125b) {
            this.f34124a.m5287b();
        }
    }

    /* renamed from: b */
    public final void m4635b() {
        if (this.f34125b) {
            this.f34124a.m5286c();
        }
    }

    /* renamed from: d */
    public final boolean m4633d(long j, long j2) {
        return Math.abs((j2 - this.f34132i) - (j - this.f34133j)) > 20000000;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6470yl(android.content.Context r3) {
        /*
            r2 = this;
            java.lang.String r0 = "window"
            java.lang.Object r3 = r3.getSystemService(r0)
            android.view.WindowManager r3 = (android.view.WindowManager) r3
            android.view.Display r0 = r3.getDefaultDisplay()
            if (r0 == 0) goto L18
            android.view.Display r3 = r3.getDefaultDisplay()
            float r3 = r3.getRefreshRate()
            double r0 = (double) r3
            goto L1a
        L18:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
        L1a:
            r2.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6470yl.<init>(android.content.Context):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m4634c(long r12, long r14) {
        /*
            r11 = this;
            r0 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r12
            boolean r2 = r11.f34131h
            if (r2 == 0) goto L42
            long r2 = r11.f34128e
            int r4 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r4 == 0) goto L19
            long r2 = r11.f34134k
            r4 = 1
            long r2 = r2 + r4
            r11.f34134k = r2
            long r2 = r11.f34130g
            r11.f34129f = r2
        L19:
            long r2 = r11.f34134k
            r4 = 6
            r6 = 0
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 < 0) goto L3a
            long r4 = r11.f34133j
            long r4 = r0 - r4
            long r4 = r4 / r2
            long r2 = r11.f34129f
            long r2 = r2 + r4
            boolean r4 = r11.m4633d(r2, r14)
            if (r4 == 0) goto L33
            r11.f34131h = r6
            goto L42
        L33:
            long r4 = r11.f34132i
            long r4 = r4 + r2
            long r6 = r11.f34133j
            long r4 = r4 - r6
            goto L44
        L3a:
            boolean r2 = r11.m4633d(r0, r14)
            if (r2 == 0) goto L42
            r11.f34131h = r6
        L42:
            r4 = r14
            r2 = r0
        L44:
            boolean r6 = r11.f34131h
            r7 = 0
            if (r6 != 0) goto L53
            r11.f34133j = r0
            r11.f34132i = r14
            r11.f34134k = r7
            r14 = 1
            r11.f34131h = r14
        L53:
            r11.f34128e = r12
            r11.f34130g = r2
            r4.xl r12 = r11.f34124a
            if (r12 == 0) goto L86
            long r12 = r12.f33627a
            int r14 = (r12 > r7 ? 1 : (r12 == r7 ? 0 : -1))
            if (r14 != 0) goto L62
            goto L86
        L62:
            r4.xl r12 = r11.f34124a
            long r12 = r12.f33627a
            long r14 = r11.f34126c
            long r0 = r4 - r12
            long r0 = r0 / r14
            long r0 = r0 * r14
            long r12 = r12 + r0
            int r0 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r0 > 0) goto L75
            long r14 = r12 - r14
            goto L79
        L75:
            long r14 = r14 + r12
            r9 = r12
            r12 = r14
            r14 = r9
        L79:
            long r0 = r12 - r4
            long r4 = r4 - r14
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 >= 0) goto L81
            goto L82
        L81:
            r12 = r14
        L82:
            long r14 = r11.f34127d
            long r12 = r12 - r14
            return r12
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6470yl.m4634c(long, long):long");
    }
}
