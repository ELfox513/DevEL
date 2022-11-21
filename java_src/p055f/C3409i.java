package p055f;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import p208w.C7089j;
/* renamed from: f.i */
/* loaded from: classes.dex */
public class C3409i extends Drawable implements Drawable.Callback {

    /* renamed from: a */
    public AbstractC3412c f15791a;

    /* renamed from: b */
    public Rect f15792b;

    /* renamed from: d */
    public Drawable f15793d;

    /* renamed from: k */
    public Drawable f15794k;

    /* renamed from: q */
    public boolean f15796q;

    /* renamed from: s */
    public boolean f15798s;

    /* renamed from: t */
    public Runnable f15799t;

    /* renamed from: u */
    public long f15800u;

    /* renamed from: v */
    public long f15801v;

    /* renamed from: w */
    public C3411b f15802w;

    /* renamed from: p */
    public int f15795p = 255;

    /* renamed from: r */
    public int f15797r = -1;

    /* renamed from: f.i$a */
    /* loaded from: classes.dex */
    public class RunnableC3410a implements Runnable {
        public RunnableC3410a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C3409i.this.m18944a(true);
            C3409i.this.invalidateSelf();
        }
    }

    /* renamed from: f.i$b */
    /* loaded from: classes.dex */
    public static class C3411b implements Drawable.Callback {

        /* renamed from: a */
        public Drawable.Callback f15804a;

        /* renamed from: b */
        public C3411b m18936b(Drawable.Callback callback) {
            this.f15804a = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        /* renamed from: a */
        public Drawable.Callback m18937a() {
            Drawable.Callback callback = this.f15804a;
            this.f15804a = null;
            return callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f15804a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f15804a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: f.i$c */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3412c extends Drawable.ConstantState {

        /* renamed from: A */
        public int f15805A;

        /* renamed from: B */
        public int f15806B;

        /* renamed from: C */
        public boolean f15807C;

        /* renamed from: D */
        public ColorFilter f15808D;

        /* renamed from: E */
        public boolean f15809E;

        /* renamed from: F */
        public ColorStateList f15810F;

        /* renamed from: G */
        public PorterDuff.Mode f15811G;

        /* renamed from: H */
        public boolean f15812H;

        /* renamed from: I */
        public boolean f15813I;

        /* renamed from: a */
        public final C3409i f15814a;

        /* renamed from: b */
        public Resources f15815b;

        /* renamed from: c */
        public int f15816c;

        /* renamed from: d */
        public int f15817d;

        /* renamed from: e */
        public int f15818e;

        /* renamed from: f */
        public SparseArray<Drawable.ConstantState> f15819f;

        /* renamed from: g */
        public Drawable[] f15820g;

        /* renamed from: h */
        public int f15821h;

        /* renamed from: i */
        public boolean f15822i;

        /* renamed from: j */
        public boolean f15823j;

        /* renamed from: k */
        public Rect f15824k;

        /* renamed from: l */
        public boolean f15825l;

        /* renamed from: m */
        public boolean f15826m;

        /* renamed from: n */
        public int f15827n;

        /* renamed from: o */
        public int f15828o;

        /* renamed from: p */
        public int f15829p;

        /* renamed from: q */
        public int f15830q;

        /* renamed from: r */
        public boolean f15831r;

        /* renamed from: s */
        public int f15832s;

        /* renamed from: t */
        public boolean f15833t;

        /* renamed from: u */
        public boolean f15834u;

        /* renamed from: v */
        public boolean f15835v;

        /* renamed from: w */
        public boolean f15836w;

        /* renamed from: x */
        public boolean f15837x;

        /* renamed from: y */
        public boolean f15838y;

        /* renamed from: z */
        public int f15839z;

        /* renamed from: c */
        public synchronized boolean m18933c() {
            if (this.f15835v) {
                return this.f15836w;
            }
            m18931e();
            this.f15835v = true;
            int i = this.f15821h;
            Drawable[] drawableArr = this.f15820g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.f15836w = false;
                    return false;
                }
            }
            this.f15836w = true;
            return true;
        }

        /* renamed from: d */
        public void m18932d() {
            this.f15826m = true;
            m18931e();
            int i = this.f15821h;
            Drawable[] drawableArr = this.f15820g;
            this.f15828o = -1;
            this.f15827n = -1;
            this.f15830q = 0;
            this.f15829p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f15827n) {
                    this.f15827n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f15828o) {
                    this.f15828o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f15829p) {
                    this.f15829p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f15830q) {
                    this.f15830q = minimumHeight;
                }
            }
        }

        /* renamed from: f */
        public final int m18930f() {
            return this.f15820g.length;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f15817d | this.f15818e;
        }

        /* renamed from: h */
        public final int m18928h() {
            return this.f15821h;
        }

        /* renamed from: p */
        public void m18921p() {
            this.f15831r = false;
            this.f15833t = false;
        }

        /* renamed from: q */
        public final boolean m18920q() {
            return this.f15825l;
        }

        /* renamed from: r */
        public abstract void mo18900r();

        /* renamed from: t */
        public final void m18918t(boolean z) {
            this.f15825l = z;
        }

        /* renamed from: u */
        public final void m18917u(int i) {
            this.f15805A = i;
        }

        /* renamed from: v */
        public final void m18916v(int i) {
            this.f15806B = i;
        }

        /* renamed from: x */
        public final void m18914x(boolean z) {
            this.f15822i = z;
        }

        /* renamed from: a */
        public final int m18935a(Drawable drawable) {
            int i = this.f15821h;
            if (i >= this.f15820g.length) {
                mo18901o(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f15814a);
            this.f15820g[i] = drawable;
            this.f15821h++;
            this.f15818e = drawable.getChangingConfigurations() | this.f15818e;
            m18921p();
            this.f15824k = null;
            this.f15823j = false;
            this.f15826m = false;
            this.f15835v = false;
            return i;
        }

        /* renamed from: b */
        public final void m18934b(Resources.Theme theme) {
            Resources resources;
            boolean canApplyTheme;
            if (theme != null) {
                m18931e();
                int i = this.f15821h;
                Drawable[] drawableArr = this.f15820g;
                for (int i2 = 0; i2 < i; i2++) {
                    Drawable drawable = drawableArr[i2];
                    if (drawable != null) {
                        canApplyTheme = drawable.canApplyTheme();
                        if (canApplyTheme) {
                            drawableArr[i2].applyTheme(theme);
                            this.f15818e |= drawableArr[i2].getChangingConfigurations();
                        }
                    }
                }
                resources = theme.getResources();
                m18913y(resources);
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            boolean canApplyTheme;
            boolean canApplyTheme2;
            int i = this.f15821h;
            Drawable[] drawableArr = this.f15820g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    canApplyTheme2 = drawable.canApplyTheme();
                    if (canApplyTheme2) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = this.f15819f.get(i2);
                    if (constantState != null) {
                        canApplyTheme = constantState.canApplyTheme();
                        if (canApplyTheme) {
                            return true;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return false;
        }

        /* renamed from: e */
        public final void m18931e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f15819f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f15820g[this.f15819f.keyAt(i)] = m18919s(this.f15819f.valueAt(i).newDrawable(this.f15815b));
                }
                this.f15819f = null;
            }
        }

        /* renamed from: g */
        public final Drawable m18929g(int i) {
            int indexOfKey;
            Drawable drawable = this.f15820g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f15819f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable m18919s = m18919s(this.f15819f.valueAt(indexOfKey).newDrawable(this.f15815b));
            this.f15820g[i] = m18919s;
            this.f15819f.removeAt(indexOfKey);
            if (this.f15819f.size() == 0) {
                this.f15819f = null;
            }
            return m18919s;
        }

        /* renamed from: i */
        public final int m18927i() {
            if (!this.f15826m) {
                m18932d();
            }
            return this.f15828o;
        }

        /* renamed from: j */
        public final int m18926j() {
            if (!this.f15826m) {
                m18932d();
            }
            return this.f15830q;
        }

        /* renamed from: k */
        public final int m18925k() {
            if (!this.f15826m) {
                m18932d();
            }
            return this.f15829p;
        }

        /* renamed from: l */
        public final Rect m18924l() {
            Rect rect = null;
            if (this.f15822i) {
                return null;
            }
            Rect rect2 = this.f15824k;
            if (rect2 == null && !this.f15823j) {
                m18931e();
                Rect rect3 = new Rect();
                int i = this.f15821h;
                Drawable[] drawableArr = this.f15820g;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getPadding(rect3)) {
                        if (rect == null) {
                            rect = new Rect(0, 0, 0, 0);
                        }
                        int i3 = rect3.left;
                        if (i3 > rect.left) {
                            rect.left = i3;
                        }
                        int i4 = rect3.top;
                        if (i4 > rect.top) {
                            rect.top = i4;
                        }
                        int i5 = rect3.right;
                        if (i5 > rect.right) {
                            rect.right = i5;
                        }
                        int i6 = rect3.bottom;
                        if (i6 > rect.bottom) {
                            rect.bottom = i6;
                        }
                    }
                }
                this.f15823j = true;
                this.f15824k = rect;
                return rect;
            }
            return rect2;
        }

        /* renamed from: m */
        public final int m18923m() {
            if (!this.f15826m) {
                m18932d();
            }
            return this.f15827n;
        }

        /* renamed from: n */
        public final int m18922n() {
            int i;
            if (this.f15831r) {
                return this.f15832s;
            }
            m18931e();
            int i2 = this.f15821h;
            Drawable[] drawableArr = this.f15820g;
            if (i2 > 0) {
                i = drawableArr[0].getOpacity();
            } else {
                i = -2;
            }
            for (int i3 = 1; i3 < i2; i3++) {
                i = Drawable.resolveOpacity(i, drawableArr[i3].getOpacity());
            }
            this.f15832s = i;
            this.f15831r = true;
            return i;
        }

        /* renamed from: o */
        public void mo18901o(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.f15820g, 0, drawableArr, 0, i);
            this.f15820g = drawableArr;
        }

        /* renamed from: s */
        public final Drawable m18919s(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.f15839z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f15814a);
            return mutate;
        }

        /* renamed from: w */
        public final boolean m18915w(int i, int i2) {
            boolean z;
            int i3 = this.f15821h;
            Drawable[] drawableArr = this.f15820g;
            boolean z2 = false;
            for (int i4 = 0; i4 < i3; i4++) {
                Drawable drawable = drawableArr[i4];
                if (drawable != null) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        z = drawable.setLayoutDirection(i);
                    } else {
                        z = false;
                    }
                    if (i4 == i2) {
                        z2 = z;
                    }
                }
            }
            this.f15839z = i;
            return z2;
        }

        /* renamed from: y */
        public final void m18913y(Resources resources) {
            if (resources != null) {
                this.f15815b = resources;
                int m18940f = C3409i.m18940f(resources, this.f15816c);
                int i = this.f15816c;
                this.f15816c = m18940f;
                if (i != m18940f) {
                    this.f15826m = false;
                    this.f15823j = false;
                }
            }
        }

        public AbstractC3412c(AbstractC3412c abstractC3412c, C3409i c3409i, Resources resources) {
            Resources resources2;
            int i;
            this.f15816c = 160;
            this.f15822i = false;
            this.f15825l = false;
            this.f15837x = true;
            this.f15805A = 0;
            this.f15806B = 0;
            this.f15814a = c3409i;
            if (resources != null) {
                resources2 = resources;
            } else if (abstractC3412c != null) {
                resources2 = abstractC3412c.f15815b;
            } else {
                resources2 = null;
            }
            this.f15815b = resources2;
            if (abstractC3412c != null) {
                i = abstractC3412c.f15816c;
            } else {
                i = 0;
            }
            int m18940f = C3409i.m18940f(resources, i);
            this.f15816c = m18940f;
            if (abstractC3412c != null) {
                this.f15817d = abstractC3412c.f15817d;
                this.f15818e = abstractC3412c.f15818e;
                this.f15835v = true;
                this.f15836w = true;
                this.f15822i = abstractC3412c.f15822i;
                this.f15825l = abstractC3412c.f15825l;
                this.f15837x = abstractC3412c.f15837x;
                this.f15838y = abstractC3412c.f15838y;
                this.f15839z = abstractC3412c.f15839z;
                this.f15805A = abstractC3412c.f15805A;
                this.f15806B = abstractC3412c.f15806B;
                this.f15807C = abstractC3412c.f15807C;
                this.f15808D = abstractC3412c.f15808D;
                this.f15809E = abstractC3412c.f15809E;
                this.f15810F = abstractC3412c.f15810F;
                this.f15811G = abstractC3412c.f15811G;
                this.f15812H = abstractC3412c.f15812H;
                this.f15813I = abstractC3412c.f15813I;
                if (abstractC3412c.f15816c == m18940f) {
                    if (abstractC3412c.f15823j) {
                        this.f15824k = new Rect(abstractC3412c.f15824k);
                        this.f15823j = true;
                    }
                    if (abstractC3412c.f15826m) {
                        this.f15827n = abstractC3412c.f15827n;
                        this.f15828o = abstractC3412c.f15828o;
                        this.f15829p = abstractC3412c.f15829p;
                        this.f15830q = abstractC3412c.f15830q;
                        this.f15826m = true;
                    }
                }
                if (abstractC3412c.f15831r) {
                    this.f15832s = abstractC3412c.f15832s;
                    this.f15831r = true;
                }
                if (abstractC3412c.f15833t) {
                    this.f15834u = abstractC3412c.f15834u;
                    this.f15833t = true;
                }
                Drawable[] drawableArr = abstractC3412c.f15820g;
                this.f15820g = new Drawable[drawableArr.length];
                this.f15821h = abstractC3412c.f15821h;
                SparseArray<Drawable.ConstantState> sparseArray = abstractC3412c.f15819f;
                if (sparseArray != null) {
                    this.f15819f = sparseArray.clone();
                } else {
                    this.f15819f = new SparseArray<>(this.f15821h);
                }
                int i2 = this.f15821h;
                for (int i3 = 0; i3 < i2; i3++) {
                    Drawable drawable = drawableArr[i3];
                    if (drawable != null) {
                        Drawable.ConstantState constantState = drawable.getConstantState();
                        if (constantState != null) {
                            this.f15819f.put(i3, constantState);
                        } else {
                            this.f15820g[i3] = drawableArr[i3];
                        }
                    }
                }
                return;
            }
            this.f15820g = new Drawable[10];
            this.f15821h = 0;
        }
    }

    /* renamed from: f */
    public static int m18940f(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m18944a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f15796q = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f15793d
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L38
            long r9 = r13.f15800u
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L3a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f15795p
            r3.setAlpha(r9)
            r13.f15800u = r7
            goto L3a
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            f.i$c r9 = r13.f15791a
            int r9 = r9.f15805A
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.f15795p
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L3b
        L38:
            r13.f15800u = r7
        L3a:
            r3 = 0
        L3b:
            android.graphics.drawable.Drawable r9 = r13.f15794k
            if (r9 == 0) goto L65
            long r10 = r13.f15801v
            int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r12 == 0) goto L67
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L52
            r9.setVisible(r6, r6)
            r0 = 0
            r13.f15794k = r0
            r13.f15801v = r7
            goto L67
        L52:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            f.i$c r4 = r13.f15791a
            int r4 = r4.f15806B
            int r3 = r3 / r4
            int r4 = r13.f15795p
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L68
        L65:
            r13.f15801v = r7
        L67:
            r0 = r3
        L68:
            if (r14 == 0) goto L74
            if (r0 == 0) goto L74
            java.lang.Runnable r14 = r13.f15799t
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p055f.C3409i.m18944a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f15791a.m18934b(theme);
    }

    /* renamed from: b */
    public AbstractC3412c mo18906b() {
        throw null;
    }

    /* renamed from: c */
    public int m18943c() {
        return this.f15797r;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f15791a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f15795p;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f15793d;
    }

    /* renamed from: i */
    public final void m18938i(Resources resources) {
        this.f15791a.m18913y(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f15791a.f15807C;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f15791a.m18915w(i, m18943c());
    }

    /* renamed from: d */
    public final void m18942d(Drawable drawable) {
        if (this.f15802w == null) {
            this.f15802w = new C3411b();
        }
        drawable.setCallback(this.f15802w.m18936b(drawable.getCallback()));
        try {
            if (this.f15791a.f15805A <= 0 && this.f15796q) {
                drawable.setAlpha(this.f15795p);
            }
            AbstractC3412c abstractC3412c = this.f15791a;
            if (abstractC3412c.f15809E) {
                drawable.setColorFilter(abstractC3412c.f15808D);
            } else {
                if (abstractC3412c.f15812H) {
                    C7089j.m2543n(drawable, abstractC3412c.f15810F);
                }
                AbstractC3412c abstractC3412c2 = this.f15791a;
                if (abstractC3412c2.f15813I) {
                    C7089j.m2542o(drawable, abstractC3412c2.f15811G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f15791a.f15837x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (i >= 19) {
                drawable.setAutoMirrored(this.f15791a.f15807C);
            }
            Rect rect = this.f15792b;
            if (i >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f15802w.m18937a());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f15793d;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f15794k;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0073  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m18939g(int r10) {
        /*
            r9 = this;
            int r0 = r9.f15797r
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            f.i$c r0 = r9.f15791a
            int r0 = r0.f15806B
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f15794k
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f15793d
            if (r0 == 0) goto L29
            r9.f15794k = r0
            f.i$c r0 = r9.f15791a
            int r0 = r0.f15806B
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f15801v = r0
            goto L35
        L29:
            r9.f15794k = r4
            r9.f15801v = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f15793d
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            f.i$c r0 = r9.f15791a
            int r1 = r0.f15821h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.m18929g(r10)
            r9.f15793d = r0
            r9.f15797r = r10
            if (r0 == 0) goto L5a
            f.i$c r10 = r9.f15791a
            int r10 = r10.f15805A
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f15800u = r2
        L51:
            r9.m18942d(r0)
            goto L5a
        L55:
            r9.f15793d = r4
            r10 = -1
            r9.f15797r = r10
        L5a:
            long r0 = r9.f15800u
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.f15801v
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L79
        L67:
            java.lang.Runnable r0 = r9.f15799t
            if (r0 != 0) goto L73
            f.i$a r0 = new f.i$a
            r0.<init>()
            r9.f15799t = r0
            goto L76
        L73:
            r9.unscheduleSelf(r0)
        L76:
            r9.m18944a(r10)
        L79:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: p055f.C3409i.m18939g(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f15791a.m18933c()) {
            this.f15791a.f15817d = getChangingConfigurations();
            return this.f15791a;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f15792b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f15791a.m18920q()) {
            return this.f15791a.m18927i();
        }
        Drawable drawable = this.f15793d;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f15791a.m18920q()) {
            return this.f15791a.m18923m();
        }
        Drawable drawable = this.f15793d;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f15791a.m18920q()) {
            return this.f15791a.m18926j();
        }
        Drawable drawable = this.f15793d;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f15791a.m18920q()) {
            return this.f15791a.m18925k();
        }
        Drawable drawable = this.f15793d;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f15793d;
        if (drawable != null && drawable.isVisible()) {
            return this.f15791a.m18922n();
        }
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f15793d;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect m18924l = this.f15791a.m18924l();
        if (m18924l != null) {
            rect.set(m18924l);
            if ((m18924l.right | m18924l.left | m18924l.top | m18924l.bottom) != 0) {
                padding = true;
            } else {
                padding = false;
            }
        } else {
            Drawable drawable = this.f15793d;
            if (drawable != null) {
                padding = drawable.getPadding(rect);
            } else {
                padding = super.getPadding(rect);
            }
        }
        if (m18941e()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    /* renamed from: h */
    public void mo18905h(AbstractC3412c abstractC3412c) {
        this.f15791a = abstractC3412c;
        int i = this.f15797r;
        if (i >= 0) {
            Drawable m18929g = abstractC3412c.m18929g(i);
            this.f15793d = m18929g;
            if (m18929g != null) {
                m18942d(m18929g);
            }
        }
        this.f15794k = null;
    }

    public void invalidateDrawable(Drawable drawable) {
        AbstractC3412c abstractC3412c = this.f15791a;
        if (abstractC3412c != null) {
            abstractC3412c.m18921p();
        }
        if (drawable == this.f15793d && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f15794k;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f15794k = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f15793d;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f15796q) {
                this.f15793d.setAlpha(this.f15795p);
            }
        }
        if (this.f15801v != 0) {
            this.f15801v = 0L;
            z = true;
        }
        if (this.f15800u != 0) {
            this.f15800u = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f15798s && super.mutate() == this) {
            AbstractC3412c mo18906b = mo18906b();
            mo18906b.mo18900r();
            mo18905h(mo18906b);
            this.f15798s = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f15794k;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f15793d;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f15794k;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f15793d;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f15794k;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f15793d;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable == this.f15793d && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (!this.f15796q || this.f15795p != i) {
            this.f15796q = true;
            this.f15795p = i;
            Drawable drawable = this.f15793d;
            if (drawable != null) {
                if (this.f15800u == 0) {
                    drawable.setAlpha(i);
                } else {
                    m18944a(false);
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        AbstractC3412c abstractC3412c = this.f15791a;
        if (abstractC3412c.f15807C != z) {
            abstractC3412c.f15807C = z;
            Drawable drawable = this.f15793d;
            if (drawable != null) {
                C7089j.m2548i(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC3412c abstractC3412c = this.f15791a;
        abstractC3412c.f15809E = true;
        if (abstractC3412c.f15808D != colorFilter) {
            abstractC3412c.f15808D = colorFilter;
            Drawable drawable = this.f15793d;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        AbstractC3412c abstractC3412c = this.f15791a;
        if (abstractC3412c.f15837x != z) {
            abstractC3412c.f15837x = z;
            Drawable drawable = this.f15793d;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f15793d;
        if (drawable != null) {
            C7089j.m2547j(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f15792b;
        if (rect == null) {
            this.f15792b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f15793d;
        if (drawable != null) {
            C7089j.m2546k(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintList(ColorStateList colorStateList) {
        AbstractC3412c abstractC3412c = this.f15791a;
        abstractC3412c.f15812H = true;
        if (abstractC3412c.f15810F != colorStateList) {
            abstractC3412c.f15810F = colorStateList;
            C7089j.m2543n(this.f15793d, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintMode(PorterDuff.Mode mode) {
        AbstractC3412c abstractC3412c = this.f15791a;
        abstractC3412c.f15813I = true;
        if (abstractC3412c.f15811G != mode) {
            abstractC3412c.f15811G = mode;
            C7089j.m2542o(this.f15793d, mode);
        }
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.f15793d && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: e */
    public final boolean m18941e() {
        if (isAutoMirrored() && C7089j.m2552e(this) == 1) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f15791a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f15794k;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f15793d;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }
}
