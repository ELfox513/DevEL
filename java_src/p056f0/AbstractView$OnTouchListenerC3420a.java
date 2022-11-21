package p056f0;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import p038d0.C3218s0;
/* renamed from: f0.a */
/* loaded from: classes.dex */
public abstract class AbstractView$OnTouchListenerC3420a implements View.OnTouchListener {

    /* renamed from: C */
    public static final int f15844C = ViewConfiguration.getTapTimeout();

    /* renamed from: A */
    public boolean f15845A;

    /* renamed from: B */
    public boolean f15846B;

    /* renamed from: d */
    public final View f15849d;

    /* renamed from: k */
    public Runnable f15850k;

    /* renamed from: r */
    public int f15853r;

    /* renamed from: s */
    public int f15854s;

    /* renamed from: w */
    public boolean f15858w;

    /* renamed from: x */
    public boolean f15859x;

    /* renamed from: y */
    public boolean f15860y;

    /* renamed from: z */
    public boolean f15861z;

    /* renamed from: a */
    public final C3421a f15847a = new C3421a();

    /* renamed from: b */
    public final Interpolator f15848b = new AccelerateInterpolator();

    /* renamed from: p */
    public float[] f15851p = {0.0f, 0.0f};

    /* renamed from: q */
    public float[] f15852q = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: t */
    public float[] f15855t = {0.0f, 0.0f};

    /* renamed from: u */
    public float[] f15856u = {0.0f, 0.0f};

    /* renamed from: v */
    public float[] f15857v = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: f0.a$a */
    /* loaded from: classes.dex */
    public static class C3421a {

        /* renamed from: a */
        public int f15862a;

        /* renamed from: b */
        public int f15863b;

        /* renamed from: c */
        public float f15864c;

        /* renamed from: d */
        public float f15865d;

        /* renamed from: j */
        public float f15871j;

        /* renamed from: k */
        public int f15872k;

        /* renamed from: e */
        public long f15866e = Long.MIN_VALUE;

        /* renamed from: i */
        public long f15870i = -1;

        /* renamed from: f */
        public long f15867f = 0;

        /* renamed from: g */
        public int f15868g = 0;

        /* renamed from: h */
        public int f15869h = 0;

        /* renamed from: b */
        public int m18878b() {
            return this.f15868g;
        }

        /* renamed from: c */
        public int m18877c() {
            return this.f15869h;
        }

        /* renamed from: d */
        public int m18876d() {
            float f = this.f15864c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: f */
        public int m18874f() {
            float f = this.f15865d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: g */
        public final float m18873g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: j */
        public void m18870j(int i) {
            this.f15863b = i;
        }

        /* renamed from: k */
        public void m18869k(int i) {
            this.f15862a = i;
        }

        /* renamed from: a */
        public void m18879a() {
            if (this.f15867f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float m18873g = m18873g(m18875e(currentAnimationTimeMillis));
                this.f15867f = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - this.f15867f)) * m18873g;
                this.f15868g = (int) (this.f15864c * f);
                this.f15869h = (int) (f * this.f15865d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        /* renamed from: e */
        public final float m18875e(long j) {
            long j2 = this.f15866e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f15870i;
            if (j3 >= 0 && j >= j3) {
                float f = this.f15871j;
                return (1.0f - f) + (f * AbstractView$OnTouchListenerC3420a.m18892e(((float) (j - j3)) / this.f15872k, 0.0f, 1.0f));
            }
            return AbstractView$OnTouchListenerC3420a.m18892e(((float) (j - j2)) / this.f15862a, 0.0f, 1.0f) * 0.5f;
        }

        /* renamed from: h */
        public boolean m18872h() {
            if (this.f15870i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f15870i + this.f15872k) {
                return true;
            }
            return false;
        }

        /* renamed from: l */
        public void m18868l(float f, float f2) {
            this.f15864c = f;
            this.f15865d = f2;
        }

        /* renamed from: i */
        public void m18871i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f15872k = AbstractView$OnTouchListenerC3420a.m18891g((int) (currentAnimationTimeMillis - this.f15866e), 0, this.f15863b);
            this.f15871j = m18875e(currentAnimationTimeMillis);
            this.f15870i = currentAnimationTimeMillis;
        }

        /* renamed from: m */
        public void m18867m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f15866e = currentAnimationTimeMillis;
            this.f15870i = -1L;
            this.f15867f = currentAnimationTimeMillis;
            this.f15871j = 0.5f;
            this.f15868g = 0;
            this.f15869h = 0;
        }
    }

    /* renamed from: f0.a$b */
    /* loaded from: classes.dex */
    public class RunnableC3422b implements Runnable {
        public RunnableC3422b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC3420a abstractView$OnTouchListenerC3420a = AbstractView$OnTouchListenerC3420a.this;
            if (!abstractView$OnTouchListenerC3420a.f15861z) {
                return;
            }
            if (abstractView$OnTouchListenerC3420a.f15859x) {
                abstractView$OnTouchListenerC3420a.f15859x = false;
                abstractView$OnTouchListenerC3420a.f15847a.m18867m();
            }
            C3421a c3421a = AbstractView$OnTouchListenerC3420a.this.f15847a;
            if (!c3421a.m18872h() && AbstractView$OnTouchListenerC3420a.this.m18896C()) {
                AbstractView$OnTouchListenerC3420a abstractView$OnTouchListenerC3420a2 = AbstractView$OnTouchListenerC3420a.this;
                if (abstractView$OnTouchListenerC3420a2.f15860y) {
                    abstractView$OnTouchListenerC3420a2.f15860y = false;
                    abstractView$OnTouchListenerC3420a2.m18894c();
                }
                c3421a.m18879a();
                AbstractView$OnTouchListenerC3420a.this.mo18823r(c3421a.m18878b(), c3421a.m18877c());
                C3218s0.m19368C(AbstractView$OnTouchListenerC3420a.this.f15849d, this);
                return;
            }
            AbstractView$OnTouchListenerC3420a.this.f15861z = false;
        }
    }

    /* renamed from: e */
    public static float m18892e(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: g */
    public static int m18891g(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: a */
    public abstract boolean mo18825a(int i);

    /* renamed from: b */
    public abstract boolean mo18824b(int i);

    /* renamed from: j */
    public final float m18890j(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f15853r;
        if (i != 0 && i != 1) {
            if (i == 2 && f < 0.0f) {
                return f / (-f2);
            }
        } else if (f < f2) {
            if (f >= 0.0f) {
                return 1.0f - (f / f2);
            }
            if (this.f15861z && i == 1) {
                return 1.0f;
            }
        }
        return 0.0f;
    }

    /* renamed from: r */
    public abstract void mo18823r(int i, int i2);

    /* renamed from: s */
    public AbstractView$OnTouchListenerC3420a m18887s(int i) {
        this.f15854s = i;
        return this;
    }

    /* renamed from: t */
    public AbstractView$OnTouchListenerC3420a m18886t(int i) {
        this.f15853r = i;
        return this;
    }

    /* renamed from: y */
    public AbstractView$OnTouchListenerC3420a m18881y(int i) {
        this.f15847a.m18870j(i);
        return this;
    }

    /* renamed from: z */
    public AbstractView$OnTouchListenerC3420a m18880z(int i) {
        this.f15847a.m18869k(i);
        return this;
    }

    /* renamed from: A */
    public AbstractView$OnTouchListenerC3420a m18898A(float f, float f2) {
        float[] fArr = this.f15851p;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: B */
    public AbstractView$OnTouchListenerC3420a m18897B(float f, float f2) {
        float[] fArr = this.f15855t;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: C */
    public boolean m18896C() {
        C3421a c3421a = this.f15847a;
        int m18874f = c3421a.m18874f();
        int m18876d = c3421a.m18876d();
        if ((m18874f != 0 && mo18824b(m18874f)) || (m18876d != 0 && mo18825a(m18876d))) {
            return true;
        }
        return false;
    }

    /* renamed from: D */
    public final void m18895D() {
        int i;
        if (this.f15850k == null) {
            this.f15850k = new RunnableC3422b();
        }
        this.f15861z = true;
        this.f15859x = true;
        if (!this.f15858w && (i = this.f15854s) > 0) {
            C3218s0.m19367D(this.f15849d, this.f15850k, i);
        } else {
            this.f15850k.run();
        }
        this.f15858w = true;
    }

    /* renamed from: d */
    public final float m18893d(int i, float f, float f2, float f3) {
        float m18889l = m18889l(this.f15851p[i], f2, this.f15852q[i], f);
        if (m18889l == 0.0f) {
            return 0.0f;
        }
        float f4 = this.f15855t[i];
        float f5 = this.f15856u[i];
        float f6 = this.f15857v[i];
        float f7 = f4 * f3;
        if (m18889l > 0.0f) {
            return m18892e(m18889l * f7, f5, f6);
        }
        return -m18892e((-m18889l) * f7, f5, f6);
    }

    /* renamed from: l */
    public final float m18889l(float f, float f2, float f3, float f4) {
        float interpolation;
        float m18892e = m18892e(f * f2, 0.0f, f3);
        float m18890j = m18890j(f2 - f4, m18892e) - m18890j(f4, m18892e);
        if (m18890j < 0.0f) {
            interpolation = -this.f15848b.getInterpolation(-m18890j);
        } else if (m18890j <= 0.0f) {
            return 0.0f;
        } else {
            interpolation = this.f15848b.getInterpolation(m18890j);
        }
        return m18892e(interpolation, -1.0f, 1.0f);
    }

    /* renamed from: n */
    public final void m18888n() {
        if (this.f15859x) {
            this.f15861z = false;
        } else {
            this.f15847a.m18871i();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
        if (r0 != 3) goto L12;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.f15845A
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.m18888n()
            goto L58
        L1a:
            r5.f15860y = r2
            r5.f15858w = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f15849d
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.m18893d(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f15849d
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.m18893d(r2, r7, r6, r3)
            f0.a$a r7 = r5.f15847a
            r7.m18868l(r0, r6)
            boolean r6 = r5.f15861z
            if (r6 != 0) goto L58
            boolean r6 = r5.m18896C()
            if (r6 == 0) goto L58
            r5.m18895D()
        L58:
            boolean r6 = r5.f15846B
            if (r6 == 0) goto L61
            boolean r6 = r5.f15861z
            if (r6 == 0) goto L61
            r1 = 1
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p056f0.AbstractView$OnTouchListenerC3420a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: u */
    public AbstractView$OnTouchListenerC3420a m18885u(boolean z) {
        if (this.f15845A && !z) {
            m18888n();
        }
        this.f15845A = z;
        return this;
    }

    /* renamed from: v */
    public AbstractView$OnTouchListenerC3420a m18884v(float f, float f2) {
        float[] fArr = this.f15852q;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* renamed from: w */
    public AbstractView$OnTouchListenerC3420a m18883w(float f, float f2) {
        float[] fArr = this.f15857v;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* renamed from: x */
    public AbstractView$OnTouchListenerC3420a m18882x(float f, float f2) {
        float[] fArr = this.f15856u;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    public AbstractView$OnTouchListenerC3420a(View view) {
        this.f15849d = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = (int) ((1575.0f * f) + 0.5f);
        m18883w(f2, f2);
        float f3 = (int) ((f * 315.0f) + 0.5f);
        m18882x(f3, f3);
        m18886t(1);
        m18884v(Float.MAX_VALUE, Float.MAX_VALUE);
        m18898A(0.2f, 0.2f);
        m18897B(1.0f, 1.0f);
        m18887s(f15844C);
        m18880z(500);
        m18881y(500);
    }

    /* renamed from: c */
    public void m18894c() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f15849d.onTouchEvent(obtain);
        obtain.recycle();
    }
}
