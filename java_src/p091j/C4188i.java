package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import p021c.C1008a;
import p021c.C1010c;
import p021c.C1012e;
import p046e.C3335b;
import p091j.C4191i1;
import p199v.C6947a;
/* renamed from: j.i */
/* loaded from: classes.dex */
public final class C4188i {

    /* renamed from: b */
    public static final PorterDuff.Mode f17891b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    public static C4188i f17892c;

    /* renamed from: a */
    public C4191i1 f17893a;

    /* renamed from: j.i$a */
    /* loaded from: classes.dex */
    public class C4189a implements C4191i1.InterfaceC4196e {

        /* renamed from: a */
        public final int[] f17894a = {C1012e.f2570S, C1012e.f2568Q, C1012e.f2572a};

        /* renamed from: b */
        public final int[] f17895b = {C1012e.f2586o, C1012e.f2553B, C1012e.f2591t, C1012e.f2587p, C1012e.f2588q, C1012e.f2590s, C1012e.f2589r};

        /* renamed from: c */
        public final int[] f17896c = {C1012e.f2567P, C1012e.f2569R, C1012e.f2582k, C1012e.f2560I, C1012e.f2561J, C1012e.f2563L, C1012e.f2565N, C1012e.f2562K, C1012e.f2564M, C1012e.f2566O};

        /* renamed from: d */
        public final int[] f17897d = {C1012e.f2594w, C1012e.f2580i, C1012e.f2593v};

        /* renamed from: e */
        public final int[] f17898e = {C1012e.f2559H, C1012e.f2571T};

        /* renamed from: f */
        public final int[] f17899f = {C1012e.f2574c, C1012e.f2578g, C1012e.f2575d, C1012e.f2579h};

        /* renamed from: f */
        public final boolean m17178f(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: g */
        public final ColorStateList m17177g(Context context) {
            return m17176h(context, 0);
        }

        /* renamed from: h */
        public final ColorStateList m17176h(Context context, int i) {
            int m17031c = C4220o1.m17031c(context, C1008a.f2526v);
            return new ColorStateList(new int[][]{C4220o1.f17988b, C4220o1.f17991e, C4220o1.f17989c, C4220o1.f17995i}, new int[]{C4220o1.m17032b(context, C1008a.f2524t), C6947a.m2957b(m17031c, i), C6947a.m2957b(m17031c, i), i});
        }

        /* renamed from: k */
        public final ColorStateList m17173k(Context context) {
            int[][] iArr = new int[3];
            int[] iArr2 = new int[3];
            int i = C1008a.f2528x;
            ColorStateList m17029e = C4220o1.m17029e(context, i);
            if (m17029e != null && m17029e.isStateful()) {
                int[] iArr3 = C4220o1.f17988b;
                iArr[0] = iArr3;
                iArr2[0] = m17029e.getColorForState(iArr3, 0);
                iArr[1] = C4220o1.f17992f;
                iArr2[1] = C4220o1.m17031c(context, C1008a.f2525u);
                iArr[2] = C4220o1.f17995i;
                iArr2[2] = m17029e.getDefaultColor();
            } else {
                iArr[0] = C4220o1.f17988b;
                iArr2[0] = C4220o1.m17032b(context, i);
                iArr[1] = C4220o1.f17992f;
                iArr2[1] = C4220o1.m17031c(context, C1008a.f2525u);
                iArr[2] = C4220o1.f17995i;
                iArr2[2] = C4220o1.m17031c(context, i);
            }
            return new ColorStateList(iArr, iArr2);
        }

        @Override // p091j.C4191i1.InterfaceC4196e
        /* renamed from: a */
        public Drawable mo17143a(C4191i1 c4191i1, Context context, int i) {
            if (i == C1012e.f2581j) {
                return new LayerDrawable(new Drawable[]{c4191i1.m17161j(context, C1012e.f2580i), c4191i1.m17161j(context, C1012e.f2582k)});
            }
            return null;
        }

        @Override // p091j.C4191i1.InterfaceC4196e
        /* renamed from: c */
        public PorterDuff.Mode mo17141c(int i) {
            if (i == C1012e.f2557F) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override // p091j.C4191i1.InterfaceC4196e
        /* renamed from: d */
        public ColorStateList mo17140d(Context context, int i) {
            if (i == C1012e.f2584m) {
                return C3335b.m19102c(context, C1010c.f2536e);
            }
            if (i == C1012e.f2558G) {
                return C3335b.m19102c(context, C1010c.f2539h);
            }
            if (i == C1012e.f2557F) {
                return m17173k(context);
            }
            if (i == C1012e.f2577f) {
                return m17174j(context);
            }
            if (i == C1012e.f2573b) {
                return m17177g(context);
            }
            if (i == C1012e.f2576e) {
                return m17175i(context);
            }
            if (i != C1012e.f2555D && i != C1012e.f2556E) {
                if (m17178f(this.f17895b, i)) {
                    return C4220o1.m17029e(context, C1008a.f2527w);
                }
                if (m17178f(this.f17898e, i)) {
                    return C3335b.m19102c(context, C1010c.f2535d);
                }
                if (m17178f(this.f17899f, i)) {
                    return C3335b.m19102c(context, C1010c.f2534c);
                }
                if (i == C1012e.f2552A) {
                    return C3335b.m19102c(context, C1010c.f2537f);
                }
                return null;
            }
            return C3335b.m19102c(context, C1010c.f2538g);
        }

        @Override // p091j.C4191i1.InterfaceC4196e
        /* renamed from: e */
        public boolean mo17139e(Context context, int i, Drawable drawable) {
            if (i == C1012e.f2554C) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908288);
                int i2 = C1008a.f2527w;
                m17172l(findDrawableByLayerId, C4220o1.m17031c(context, i2), C4188i.f17891b);
                m17172l(layerDrawable.findDrawableByLayerId(16908303), C4220o1.m17031c(context, i2), C4188i.f17891b);
                m17172l(layerDrawable.findDrawableByLayerId(16908301), C4220o1.m17031c(context, C1008a.f2525u), C4188i.f17891b);
                return true;
            } else if (i != C1012e.f2596y && i != C1012e.f2595x && i != C1012e.f2597z) {
                return false;
            } else {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                m17172l(layerDrawable2.findDrawableByLayerId(16908288), C4220o1.m17032b(context, C1008a.f2527w), C4188i.f17891b);
                Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(16908303);
                int i3 = C1008a.f2525u;
                m17172l(findDrawableByLayerId2, C4220o1.m17031c(context, i3), C4188i.f17891b);
                m17172l(layerDrawable2.findDrawableByLayerId(16908301), C4220o1.m17031c(context, i3), C4188i.f17891b);
                return true;
            }
        }

        /* renamed from: i */
        public final ColorStateList m17175i(Context context) {
            return m17176h(context, C4220o1.m17031c(context, C1008a.f2523s));
        }

        /* renamed from: j */
        public final ColorStateList m17174j(Context context) {
            return m17176h(context, C4220o1.m17031c(context, C1008a.f2524t));
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0061 A[RETURN] */
        @Override // p091j.C4191i1.InterfaceC4196e
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo17142b(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
            /*
                r6 = this;
                android.graphics.PorterDuff$Mode r0 = p091j.C4188i.m17187a()
                int[] r1 = r6.f17894a
                boolean r1 = r6.m17178f(r1, r8)
                r2 = 16842801(0x1010031, float:2.3693695E-38)
                r3 = -1
                r4 = 0
                r5 = 1
                if (r1 == 0) goto L17
                int r2 = p021c.C1008a.f2527w
            L14:
                r8 = -1
            L15:
                r1 = 1
                goto L44
            L17:
                int[] r1 = r6.f17896c
                boolean r1 = r6.m17178f(r1, r8)
                if (r1 == 0) goto L22
                int r2 = p021c.C1008a.f2525u
                goto L14
            L22:
                int[] r1 = r6.f17897d
                boolean r1 = r6.m17178f(r1, r8)
                if (r1 == 0) goto L2d
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                goto L14
            L2d:
                int r1 = p021c.C1012e.f2592u
                if (r8 != r1) goto L3c
                r2 = 16842800(0x1010030, float:2.3693693E-38)
                r8 = 1109603123(0x42233333, float:40.8)
                int r8 = java.lang.Math.round(r8)
                goto L15
            L3c:
                int r1 = p021c.C1012e.f2583l
                if (r8 != r1) goto L41
                goto L14
            L41:
                r8 = -1
                r1 = 0
                r2 = 0
            L44:
                if (r1 == 0) goto L61
                boolean r1 = p091j.C4237u0.m16958a(r9)
                if (r1 == 0) goto L50
                android.graphics.drawable.Drawable r9 = r9.mutate()
            L50:
                int r7 = p091j.C4220o1.m17031c(r7, r2)
                android.graphics.PorterDuffColorFilter r7 = p091j.C4188i.m17183e(r7, r0)
                r9.setColorFilter(r7)
                if (r8 == r3) goto L60
                r9.setAlpha(r8)
            L60:
                return r5
            L61:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: p091j.C4188i.C4189a.mo17142b(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }

        /* renamed from: l */
        public final void m17172l(Drawable drawable, int i, PorterDuff.Mode mode) {
            if (C4237u0.m16958a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = C4188i.f17891b;
            }
            drawable.setColorFilter(C4188i.m17183e(i, mode));
        }
    }

    /* renamed from: e */
    public static synchronized PorterDuffColorFilter m17183e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m17159l;
        synchronized (C4188i.class) {
            m17159l = C4191i1.m17159l(i, mode);
        }
        return m17159l;
    }

    /* renamed from: i */
    public static void m17179i(Drawable drawable, C4229r1 c4229r1, int[] iArr) {
        C4191i1.m17148w(drawable, c4229r1, iArr);
    }

    /* renamed from: c */
    public synchronized Drawable m17185c(Context context, int i) {
        return this.f17893a.m17161j(context, i);
    }

    /* renamed from: d */
    public synchronized Drawable m17184d(Context context, int i, boolean z) {
        return this.f17893a.m17160k(context, i, z);
    }

    /* renamed from: f */
    public synchronized ColorStateList m17182f(Context context, int i) {
        return this.f17893a.m17158m(context, i);
    }

    /* renamed from: g */
    public synchronized void m17181g(Context context) {
        this.f17893a.m17152s(context);
    }

    /* renamed from: b */
    public static synchronized C4188i m17186b() {
        C4188i c4188i;
        synchronized (C4188i.class) {
            if (f17892c == null) {
                m17180h();
            }
            c4188i = f17892c;
        }
        return c4188i;
    }

    /* renamed from: h */
    public static synchronized void m17180h() {
        synchronized (C4188i.class) {
            if (f17892c == null) {
                C4188i c4188i = new C4188i();
                f17892c = c4188i;
                c4188i.f17893a = C4191i1.m17163h();
                f17892c.f17893a.m17150u(new C4189a());
            }
        }
    }
}
