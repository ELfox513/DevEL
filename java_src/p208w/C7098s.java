package p208w;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
/* renamed from: w.s */
/* loaded from: classes.dex */
public class C7098s extends Drawable implements Drawable.Callback, InterfaceC7097r, InterfaceC7096q {

    /* renamed from: r */
    public static final PorterDuff.Mode f36078r = PorterDuff.Mode.SRC_IN;

    /* renamed from: a */
    public int f36079a;

    /* renamed from: b */
    public PorterDuff.Mode f36080b;

    /* renamed from: d */
    public boolean f36081d;

    /* renamed from: k */
    public C7101v f36082k;

    /* renamed from: p */
    public boolean f36083p;

    /* renamed from: q */
    public Drawable f36084q;

    public C7098s(C7101v c7101v, Resources resources) {
        this.f36082k = c7101v;
        m2531e(resources);
    }

    @Override // p208w.InterfaceC7097r
    /* renamed from: b */
    public final Drawable mo2533b() {
        return this.f36084q;
    }

    /* renamed from: c */
    public boolean mo2528c() {
        return true;
    }

    /* renamed from: d */
    public final C7101v m2532d() {
        return new C7101v(this.f36082k);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f36084q.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f36084q.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f36084q.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f36084q.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getLayoutDirection() {
        return C7089j.m2552e(this.f36084q);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f36084q.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f36084q.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f36084q.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f36084q.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f36084q.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f36084q.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return C7089j.m2550g(this.f36084q);
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f36084q.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return C7089j.m2545l(this.f36084q, i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        return this.f36084q.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f36084q.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        C7089j.m2548i(this.f36084q, z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f36084q.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f36084q.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f36084q.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f36084q.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f36084q.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    @Override // p208w.InterfaceC7097r
    /* renamed from: a */
    public final void mo2534a(Drawable drawable) {
        Drawable drawable2 = this.f36084q;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f36084q = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C7101v c7101v = this.f36082k;
            if (c7101v != null) {
                c7101v.f36087b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* renamed from: e */
    public final void m2531e(Resources resources) {
        Drawable.ConstantState constantState;
        C7101v c7101v = this.f36082k;
        if (c7101v != null && (constantState = c7101v.f36087b) != null) {
            mo2534a(constantState.newDrawable(resources));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C7101v c7101v = this.f36082k;
        if (c7101v != null && c7101v.m2526a()) {
            this.f36082k.f36086a = getChangingConfigurations();
            return this.f36082k;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable.ConstantState constantState;
        if (!this.f36083p && super.mutate() == this) {
            this.f36082k = m2532d();
            Drawable drawable = this.f36084q;
            if (drawable != null) {
                drawable.mutate();
            }
            C7101v c7101v = this.f36082k;
            if (c7101v != null) {
                Drawable drawable2 = this.f36084q;
                if (drawable2 != null) {
                    constantState = drawable2.getConstantState();
                } else {
                    constantState = null;
                }
                c7101v.f36087b = constantState;
            }
            this.f36083p = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f36084q;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        boolean state = this.f36084q.setState(iArr);
        if (!m2530f(iArr) && !state) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintList(ColorStateList colorStateList) {
        this.f36082k.f36088c = colorStateList;
        m2530f(getState());
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintMode(PorterDuff.Mode mode) {
        this.f36082k.f36089d = mode;
        m2530f(getState());
    }

    /* renamed from: f */
    public final boolean m2530f(int[] iArr) {
        if (!mo2528c()) {
            return false;
        }
        C7101v c7101v = this.f36082k;
        ColorStateList colorStateList = c7101v.f36088c;
        PorterDuff.Mode mode = c7101v.f36089d;
        if (colorStateList != null && mode != null) {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f36081d || colorForState != this.f36079a || mode != this.f36080b) {
                setColorFilter(colorForState, mode);
                this.f36079a = colorForState;
                this.f36080b = mode;
                this.f36081d = true;
                return true;
            }
        } else {
            this.f36081d = false;
            clearColorFilter();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int i;
        int changingConfigurations = super.getChangingConfigurations();
        C7101v c7101v = this.f36082k;
        if (c7101v != null) {
            i = c7101v.getChangingConfigurations();
        } else {
            i = 0;
        }
        return changingConfigurations | i | this.f36084q.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        C7101v c7101v;
        if (mo2528c() && (c7101v = this.f36082k) != null) {
            colorStateList = c7101v.f36088c;
        } else {
            colorStateList = null;
        }
        if ((colorStateList != null && colorStateList.isStateful()) || this.f36084q.isStateful()) {
            return true;
        }
        return false;
    }

    public C7098s(Drawable drawable) {
        this.f36082k = m2532d();
        mo2534a(drawable);
    }
}
