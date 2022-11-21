package p191u0;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import p145p.C5270a;
import p190u.C6830j;
import p208w.C7089j;
/* renamed from: u0.b */
/* loaded from: classes.dex */
public class C6832b extends AbstractC6842h implements Animatable {

    /* renamed from: b */
    public C6834b f35573b;

    /* renamed from: d */
    public Context f35574d;

    /* renamed from: k */
    public ArgbEvaluator f35575k;

    /* renamed from: p */
    public Animator.AnimatorListener f35576p;

    /* renamed from: q */
    public ArrayList<Object> f35577q;

    /* renamed from: r */
    public final Drawable.Callback f35578r;

    /* renamed from: u0.b$a */
    /* loaded from: classes.dex */
    public class C6833a implements Drawable.Callback {
        public C6833a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            C6832b.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C6832b.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C6832b.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: u0.b$b */
    /* loaded from: classes.dex */
    public static class C6834b extends Drawable.ConstantState {

        /* renamed from: a */
        public int f35580a;

        /* renamed from: b */
        public C6843i f35581b;

        /* renamed from: c */
        public AnimatorSet f35582c;

        /* renamed from: d */
        public ArrayList<Animator> f35583d;

        /* renamed from: e */
        public C5270a<Animator, String> f35584e;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f35580a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        /* renamed from: a */
        public void m3283a() {
            if (this.f35582c == null) {
                this.f35582c = new AnimatorSet();
            }
            this.f35582c.playTogether(this.f35583d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public C6834b(Context context, C6834b c6834b, Drawable.Callback callback, Resources resources) {
            if (c6834b != null) {
                this.f35580a = c6834b.f35580a;
                C6843i c6843i = c6834b.f35581b;
                if (c6843i != null) {
                    Drawable.ConstantState constantState = c6843i.getConstantState();
                    if (resources != null) {
                        this.f35581b = (C6843i) constantState.newDrawable(resources);
                    } else {
                        this.f35581b = (C6843i) constantState.newDrawable();
                    }
                    C6843i c6843i2 = (C6843i) this.f35581b.mutate();
                    this.f35581b = c6843i2;
                    c6843i2.setCallback(callback);
                    this.f35581b.setBounds(c6834b.f35581b.getBounds());
                    this.f35581b.m3247h(false);
                }
                ArrayList<Animator> arrayList = c6834b.f35583d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f35583d = new ArrayList<>(size);
                    this.f35584e = new C5270a<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = c6834b.f35583d.get(i);
                        Animator clone = animator.clone();
                        String str = c6834b.f35584e.get(animator);
                        clone.setTarget(this.f35581b.m3251d(str));
                        this.f35583d.add(clone);
                        this.f35584e.put(clone, str);
                    }
                    m3283a();
                }
            }
        }
    }

    public C6832b() {
        this(null, null, null);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2551f(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35565e);
                    int resourceId = m3288k.getResourceId(0, 0);
                    if (resourceId != 0) {
                        C6843i m3253b = C6843i.m3253b(resources, resourceId, theme);
                        m3253b.m3247h(false);
                        m3253b.setCallback(this.f35578r);
                        C6843i c6843i = this.f35573b.f35581b;
                        if (c6843i != null) {
                            c6843i.setCallback(null);
                        }
                        this.f35573b.f35581b = m3253b;
                    }
                    m3288k.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C6831a.f35566f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f35574d;
                        if (context != null) {
                            m3285b(string, C6838e.m3271i(context, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f35573b.m3283a();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    /* renamed from: u0.b$c */
    /* loaded from: classes.dex */
    public static class C6835c extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f35585a;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            boolean canApplyTheme;
            canApplyTheme = this.f35585a.canApplyTheme();
            return canApplyTheme;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f35585a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C6832b c6832b = new C6832b();
            Drawable newDrawable = this.f35585a.newDrawable();
            c6832b.f35590a = newDrawable;
            newDrawable.setCallback(c6832b.f35578r);
            return c6832b;
        }

        public C6835c(Drawable.ConstantState constantState) {
            this.f35585a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C6832b c6832b = new C6832b();
            Drawable newDrawable = this.f35585a.newDrawable(resources);
            c6832b.f35590a = newDrawable;
            newDrawable.setCallback(c6832b.f35578r);
            return c6832b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            Drawable newDrawable;
            C6832b c6832b = new C6832b();
            newDrawable = this.f35585a.newDrawable(resources, theme);
            c6832b.f35590a = newDrawable;
            newDrawable.setCallback(c6832b.f35578r);
            return c6832b;
        }
    }

    public C6832b(Context context) {
        this(context, null, null);
    }

    /* renamed from: a */
    public static C6832b m3286a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C6832b c6832b = new C6832b(context);
        c6832b.inflate(resources, xmlPullParser, attributeSet, theme);
        return c6832b;
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2556a(drawable, theme);
        }
    }

    /* renamed from: b */
    public final void m3285b(String str, Animator animator) {
        animator.setTarget(this.f35573b.f35581b.m3251d(str));
        if (Build.VERSION.SDK_INT < 21) {
            m3284c(animator);
        }
        C6834b c6834b = this.f35573b;
        if (c6834b.f35583d == null) {
            c6834b.f35583d = new ArrayList<>();
            this.f35573b.f35584e = new C5270a<>();
        }
        this.f35573b.f35583d.add(animator);
        this.f35573b.f35584e.put(animator, str);
    }

    /* renamed from: c */
    public final void m3284c(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                m3284c(childAnimations.get(i));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f35575k == null) {
                    this.f35575k = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f35575k);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return C7089j.m2555b(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f35573b.f35581b.draw(canvas);
        if (this.f35573b.f35582c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return C7089j.m2554c(drawable);
        }
        return this.f35573b.f35581b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f35573b.f35580a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return C7089j.m2553d(drawable);
        }
        return this.f35573b.f35581b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f35590a != null && Build.VERSION.SDK_INT >= 24) {
            return new C6835c(this.f35590a.getConstantState());
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return this.f35573b.f35581b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.f35573b.f35581b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return this.f35573b.f35581b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return C7089j.m2550g(drawable);
        }
        return this.f35573b.f35581b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.f35573b.f35582c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.f35573b.f35581b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f35573b.f35581b.setBounds(rect);
        }
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        return this.f35573b.f35581b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.f35573b.f35581b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f35573b.f35581b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2548i(drawable, z);
        } else {
            this.f35573b.f35581b.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f35573b.f35581b.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTint(int i) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2544m(drawable, i);
        } else {
            this.f35573b.f35581b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2543n(drawable, colorStateList);
        } else {
            this.f35573b.f35581b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2542o(drawable, mode);
        } else {
            this.f35573b.f35581b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f35573b.f35581b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else if (this.f35573b.f35582c.isStarted()) {
        } else {
            this.f35573b.f35582c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f35573b.f35582c.end();
        }
    }

    public C6832b(Context context, C6834b c6834b, Resources resources) {
        this.f35575k = null;
        this.f35576p = null;
        this.f35577q = null;
        C6833a c6833a = new C6833a();
        this.f35578r = c6833a;
        this.f35574d = context;
        if (c6834b != null) {
            this.f35573b = c6834b;
        } else {
            this.f35573b = new C6834b(context, c6834b, c6833a, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
