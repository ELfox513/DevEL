package p055f;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p055f.C3409i;
import p055f.C3418o;
import p064g.C3538b;
import p091j.C4191i1;
import p145p.C5275d;
import p145p.C5284h;
import p190u.C6830j;
import p191u0.C6832b;
import p191u0.C6843i;
import p208w.InterfaceC7096q;
@SuppressLint({"RestrictedAPI"})
/* renamed from: f.c */
/* loaded from: classes.dex */
public class C3396c extends C3418o implements InterfaceC7096q {

    /* renamed from: E */
    public static final String f15776E = C3396c.class.getSimpleName();

    /* renamed from: A */
    public AbstractC3403g f15777A;

    /* renamed from: B */
    public int f15778B;

    /* renamed from: C */
    public int f15779C;

    /* renamed from: D */
    public boolean f15780D;

    /* renamed from: z */
    public C3399c f15781z;

    /* renamed from: f.c$b */
    /* loaded from: classes.dex */
    public static class C3398b extends AbstractC3403g {

        /* renamed from: a */
        public final Animatable f15782a;

        public C3398b(Animatable animatable) {
            super();
            this.f15782a = animatable;
        }

        @Override // p055f.C3396c.AbstractC3403g
        /* renamed from: c */
        public void mo18951c() {
            this.f15782a.start();
        }

        @Override // p055f.C3396c.AbstractC3403g
        /* renamed from: d */
        public void mo18950d() {
            this.f15782a.stop();
        }
    }

    /* renamed from: f.c$c */
    /* loaded from: classes.dex */
    public static class C3399c extends C3418o.C3419a {

        /* renamed from: K */
        public C5275d<Long> f15783K;

        /* renamed from: L */
        public C5284h<Integer> f15784L;

        /* renamed from: D */
        public static long m18961D(int i, int i2) {
            return i2 | (i << 32);
        }

        /* renamed from: E */
        public int m18960E(int i) {
            if (i < 0) {
                return 0;
            }
            return this.f15784L.m13650i(i, 0).intValue();
        }

        @Override // p055f.C3418o.C3419a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C3396c(this, null);
        }

        @Override // p055f.C3418o.C3419a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C3396c(this, resources);
        }

        @Override // p055f.C3418o.C3419a, p055f.C3409i.AbstractC3412c
        /* renamed from: r */
        public void mo18900r() {
            this.f15783K = this.f15783K.clone();
            this.f15784L = this.f15784L.clone();
        }

        public C3399c(C3399c c3399c, C3396c c3396c, Resources resources) {
            super(c3399c, c3396c, resources);
            if (c3399c != null) {
                this.f15783K = c3399c.f15783K;
                this.f15784L = c3399c.f15784L;
                return;
            }
            this.f15783K = new C5275d<>();
            this.f15784L = new C5284h<>();
        }

        /* renamed from: B */
        public int m18963B(int[] iArr, Drawable drawable, int i) {
            int m18899z = super.m18899z(iArr, drawable);
            this.f15784L.m13647n(m18899z, Integer.valueOf(i));
            return m18899z;
        }

        /* renamed from: C */
        public int m18962C(int i, int i2, Drawable drawable, boolean z) {
            long j;
            int m18935a = super.m18935a(drawable);
            long m18961D = m18961D(i, i2);
            if (z) {
                j = 8589934592L;
            } else {
                j = 0;
            }
            long j2 = m18935a;
            this.f15783K.m13708a(m18961D, Long.valueOf(j2 | j));
            if (z) {
                this.f15783K.m13708a(m18961D(i2, i), Long.valueOf(4294967296L | j2 | j));
            }
            return m18935a;
        }

        /* renamed from: F */
        public int m18959F(int[] iArr) {
            int m18902A = super.m18902A(iArr);
            if (m18902A >= 0) {
                return m18902A;
            }
            return super.m18902A(StateSet.WILD_CARD);
        }

        /* renamed from: G */
        public int m18958G(int i, int i2) {
            return (int) this.f15783K.m13703i(m18961D(i, i2), -1L).longValue();
        }

        /* renamed from: H */
        public boolean m18957H(int i, int i2) {
            if ((this.f15783K.m13703i(m18961D(i, i2), -1L).longValue() & 4294967296L) != 0) {
                return true;
            }
            return false;
        }

        /* renamed from: I */
        public boolean m18956I(int i, int i2) {
            if ((this.f15783K.m13703i(m18961D(i, i2), -1L).longValue() & 8589934592L) != 0) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: f.c$d */
    /* loaded from: classes.dex */
    public static class C3400d extends AbstractC3403g {

        /* renamed from: a */
        public final C6832b f15785a;

        public C3400d(C6832b c6832b) {
            super();
            this.f15785a = c6832b;
        }

        @Override // p055f.C3396c.AbstractC3403g
        /* renamed from: c */
        public void mo18951c() {
            this.f15785a.start();
        }

        @Override // p055f.C3396c.AbstractC3403g
        /* renamed from: d */
        public void mo18950d() {
            this.f15785a.stop();
        }
    }

    /* renamed from: f.c$e */
    /* loaded from: classes.dex */
    public static class C3401e extends AbstractC3403g {

        /* renamed from: a */
        public final ObjectAnimator f15786a;

        /* renamed from: b */
        public final boolean f15787b;

        public C3401e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super();
            int i;
            int i2;
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            if (z) {
                i = numberOfFrames - 1;
            } else {
                i = 0;
            }
            if (z) {
                i2 = 0;
            } else {
                i2 = numberOfFrames - 1;
            }
            C3402f c3402f = new C3402f(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            if (Build.VERSION.SDK_INT >= 18) {
                ofInt.setAutoCancel(true);
            }
            ofInt.setDuration(c3402f.m18955a());
            ofInt.setInterpolator(c3402f);
            this.f15787b = z2;
            this.f15786a = ofInt;
        }

        @Override // p055f.C3396c.AbstractC3403g
        /* renamed from: a */
        public boolean mo18953a() {
            return this.f15787b;
        }

        @Override // p055f.C3396c.AbstractC3403g
        /* renamed from: b */
        public void mo18952b() {
            this.f15786a.reverse();
        }

        @Override // p055f.C3396c.AbstractC3403g
        /* renamed from: c */
        public void mo18951c() {
            this.f15786a.start();
        }

        @Override // p055f.C3396c.AbstractC3403g
        /* renamed from: d */
        public void mo18950d() {
            this.f15786a.cancel();
        }
    }

    /* renamed from: f.c$f */
    /* loaded from: classes.dex */
    public static class C3402f implements TimeInterpolator {

        /* renamed from: a */
        public int[] f15788a;

        /* renamed from: b */
        public int f15789b;

        /* renamed from: c */
        public int f15790c;

        /* renamed from: a */
        public int m18955a() {
            return this.f15790c;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2;
            int i = (int) ((f * this.f15790c) + 0.5f);
            int i2 = this.f15789b;
            int[] iArr = this.f15788a;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            if (i3 < i2) {
                f2 = i / this.f15790c;
            } else {
                f2 = 0.0f;
            }
            return (i3 / i2) + f2;
        }

        public C3402f(AnimationDrawable animationDrawable, boolean z) {
            m18954b(animationDrawable, z);
        }

        /* renamed from: b */
        public int m18954b(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f15789b = numberOfFrames;
            int[] iArr = this.f15788a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f15788a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f15788a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f15790c = i;
            return i;
        }
    }

    /* renamed from: f.c$g */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3403g {
        public AbstractC3403g() {
        }

        /* renamed from: a */
        public boolean mo18953a() {
            return false;
        }

        /* renamed from: b */
        public void mo18952b() {
        }

        /* renamed from: c */
        public abstract void mo18951c();

        /* renamed from: d */
        public abstract void mo18950d();
    }

    public C3396c() {
        this(null, null);
    }

    @Override // p055f.C3418o, p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean canApplyTheme() {
        return super.canApplyTheme();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getChangingConfigurations() {
        return super.getChangingConfigurations();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getHotspotBounds(Rect rect) {
        super.getHotspotBounds(rect);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicHeight() {
        return super.getIntrinsicHeight();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getIntrinsicWidth() {
        return super.getIntrinsicWidth();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void getOutline(Outline outline) {
        super.getOutline(outline);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean isAutoMirrored() {
        return super.isAutoMirrored();
    }

    @Override // p055f.C3418o, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p055f.C3418o
    /* renamed from: l */
    public C3399c mo18904j() {
        return new C3399c(this.f15781z, this, null);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean onLayoutDirectionChanged(int i) {
        return super.onLayoutDirectionChanged(i);
    }

    /* renamed from: p */
    public final void m18968p() {
        onStateChange(getState());
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        super.scheduleDrawable(drawable, runnable, j);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAutoMirrored(boolean z) {
        super.setAutoMirrored(z);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setDither(boolean z) {
        super.setDither(z);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public /* bridge */ /* synthetic */ void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public /* bridge */ /* synthetic */ void setTintMode(PorterDuff.Mode mode) {
        super.setTintMode(mode);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable.Callback
    public /* bridge */ /* synthetic */ void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        super.unscheduleDrawable(drawable, runnable);
    }

    public C3396c(C3399c c3399c, Resources resources) {
        super(null);
        this.f15778B = -1;
        this.f15779C = -1;
        mo18905h(new C3399c(c3399c, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    @Override // p055f.C3418o, p055f.C3409i, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f15780D && super.mutate() == this) {
            this.f15781z.mo18900r();
            this.f15780D = true;
        }
        return this;
    }

    /* renamed from: n */
    public void m18970n(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C3538b.f16041a);
        setVisible(m3288k.getBoolean(C3538b.f16043c, true), true);
        m18964t(m3288k);
        m18938i(resources);
        m3288k.recycle();
        m18969o(context, resources, xmlPullParser, attributeSet, theme);
        m18968p();
    }

    @Override // p055f.C3418o, p055f.C3409i, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z;
        int m18959F = this.f15781z.m18959F(iArr);
        if (m18959F != m18943c() && (m18965s(m18959F) || m18939g(m18959F))) {
            z = true;
        } else {
            z = false;
        }
        Drawable current = getCurrent();
        if (current != null) {
            return z | current.setState(iArr);
        }
        return z;
    }

    /* renamed from: q */
    public final int m18967q(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable;
        int next;
        TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C3538b.f16048h);
        int resourceId = m3288k.getResourceId(C3538b.f16049i, 0);
        int resourceId2 = m3288k.getResourceId(C3538b.f16050j, -1);
        if (resourceId2 > 0) {
            drawable = C4191i1.m17163h().m17161j(context, resourceId2);
        } else {
            drawable = null;
        }
        m3288k.recycle();
        int[] m18903k = m18903k(attributeSet);
        if (drawable == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                if (xmlPullParser.getName().equals("vector")) {
                    drawable = C6843i.m3252c(resources, xmlPullParser, attributeSet, theme);
                } else if (Build.VERSION.SDK_INT >= 21) {
                    drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                } else {
                    drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                }
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
        }
        if (drawable != null) {
            return this.f15781z.m18963B(m18903k, drawable, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    /* renamed from: r */
    public final int m18966r(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable;
        int next;
        TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C3538b.f16051k);
        int resourceId = m3288k.getResourceId(C3538b.f16054n, -1);
        int resourceId2 = m3288k.getResourceId(C3538b.f16053m, -1);
        int resourceId3 = m3288k.getResourceId(C3538b.f16052l, -1);
        if (resourceId3 > 0) {
            drawable = C4191i1.m17163h().m17161j(context, resourceId3);
        } else {
            drawable = null;
        }
        boolean z = m3288k.getBoolean(C3538b.f16055o, false);
        m3288k.recycle();
        if (drawable == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next == 2) {
                if (xmlPullParser.getName().equals("animated-vector")) {
                    drawable = C6832b.m3286a(context, resources, xmlPullParser, attributeSet, theme);
                } else if (Build.VERSION.SDK_INT >= 21) {
                    drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
                } else {
                    drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                }
            } else {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
        }
        if (drawable != null) {
            if (resourceId != -1 && resourceId2 != -1) {
                return this.f15781z.m18962C(resourceId, resourceId2, drawable, z);
            }
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    /* renamed from: s */
    public final boolean m18965s(int i) {
        int m18943c;
        int m18958G;
        AbstractC3403g c3398b;
        AbstractC3403g abstractC3403g = this.f15777A;
        if (abstractC3403g != null) {
            if (i == this.f15778B) {
                return true;
            }
            if (i == this.f15779C && abstractC3403g.mo18953a()) {
                abstractC3403g.mo18952b();
                this.f15778B = this.f15779C;
                this.f15779C = i;
                return true;
            }
            m18943c = this.f15778B;
            abstractC3403g.mo18950d();
        } else {
            m18943c = m18943c();
        }
        this.f15777A = null;
        this.f15779C = -1;
        this.f15778B = -1;
        C3399c c3399c = this.f15781z;
        int m18960E = c3399c.m18960E(m18943c);
        int m18960E2 = c3399c.m18960E(i);
        if (m18960E2 == 0 || m18960E == 0 || (m18958G = c3399c.m18958G(m18960E, m18960E2)) < 0) {
            return false;
        }
        boolean m18956I = c3399c.m18956I(m18960E, m18960E2);
        m18939g(m18958G);
        Drawable current = getCurrent();
        if (current instanceof AnimationDrawable) {
            c3398b = new C3401e((AnimationDrawable) current, c3399c.m18957H(m18960E, m18960E2), m18956I);
        } else if (current instanceof C6832b) {
            c3398b = new C3400d((C6832b) current);
        } else {
            if (current instanceof Animatable) {
                c3398b = new C3398b((Animatable) current);
            }
            return false;
        }
        c3398b.mo18951c();
        this.f15777A = c3398b;
        this.f15779C = m18943c;
        this.f15778B = i;
        return true;
    }

    /* renamed from: t */
    public final void m18964t(TypedArray typedArray) {
        int changingConfigurations;
        C3399c c3399c = this.f15781z;
        if (Build.VERSION.SDK_INT >= 21) {
            int i = c3399c.f15817d;
            changingConfigurations = typedArray.getChangingConfigurations();
            c3399c.f15817d = i | changingConfigurations;
        }
        c3399c.m18914x(typedArray.getBoolean(C3538b.f16044d, c3399c.f15822i));
        c3399c.m18918t(typedArray.getBoolean(C3538b.f16045e, c3399c.f15825l));
        c3399c.m18917u(typedArray.getInt(C3538b.f16046f, c3399c.f15805A));
        c3399c.m18916v(typedArray.getInt(C3538b.f16047g, c3399c.f15806B));
        setDither(typedArray.getBoolean(C3538b.f16042b, c3399c.f15837x));
    }

    /* renamed from: m */
    public static C3396c m18971m(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            C3396c c3396c = new C3396c();
            c3396c.m18970n(context, resources, xmlPullParser, attributeSet, theme);
            return c3396c;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    @Override // p055f.C3418o, p055f.C3409i
    /* renamed from: h */
    public void mo18905h(C3409i.AbstractC3412c abstractC3412c) {
        super.mo18905h(abstractC3412c);
        if (abstractC3412c instanceof C3399c) {
            this.f15781z = (C3399c) abstractC3412c;
        }
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC3403g abstractC3403g = this.f15777A;
        if (abstractC3403g != null) {
            abstractC3403g.mo18950d();
            this.f15777A = null;
            m18939g(this.f15778B);
            this.f15778B = -1;
            this.f15779C = -1;
        }
    }

    /* renamed from: o */
    public final void m18969o(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 >= depth || next != 3) {
                    if (next == 2 && depth2 <= depth) {
                        if (xmlPullParser.getName().equals("item")) {
                            m18967q(context, resources, xmlPullParser, attributeSet, theme);
                        } else if (xmlPullParser.getName().equals("transition")) {
                            m18966r(context, resources, xmlPullParser, attributeSet, theme);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        AbstractC3403g abstractC3403g = this.f15777A;
        if (abstractC3403g != null && (visible || z2)) {
            if (z) {
                abstractC3403g.mo18951c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
