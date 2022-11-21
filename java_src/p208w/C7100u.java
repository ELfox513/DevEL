package p208w;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: w.u */
/* loaded from: classes.dex */
public class C7100u extends C7098s {

    /* renamed from: s */
    public static Method f36085s;

    public C7100u(Drawable drawable) {
        super(drawable);
        m2527g();
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        Rect dirtyBounds;
        dirtyBounds = this.f36084q.getDirtyBounds();
        return dirtyBounds;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f36084q.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.f36084q.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f36084q.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p208w.C7098s
    /* renamed from: c */
    public boolean mo2528c() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f36084q;
        if (!(drawable instanceof GradientDrawable) && !(drawable instanceof DrawableContainer) && !(drawable instanceof InsetDrawable) && !(drawable instanceof RippleDrawable)) {
            return false;
        }
        return true;
    }

    /* renamed from: g */
    public final void m2527g() {
        if (f36085s == null) {
            try {
                f36085s = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.f36084q;
        if (drawable != null && (method = f36085s) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception e) {
                Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e);
            }
        }
        return false;
    }

    public C7100u(C7101v c7101v, Resources resources) {
        super(c7101v, resources);
        m2527g();
    }

    @Override // p208w.C7098s, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (super.setState(iArr)) {
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // p208w.C7098s, android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTint(int i) {
        if (mo2528c()) {
            super.setTint(i);
        } else {
            this.f36084q.setTint(i);
        }
    }

    @Override // p208w.C7098s, android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintList(ColorStateList colorStateList) {
        if (mo2528c()) {
            super.setTintList(colorStateList);
        } else {
            this.f36084q.setTintList(colorStateList);
        }
    }

    @Override // p208w.C7098s, android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintMode(PorterDuff.Mode mode) {
        if (mo2528c()) {
            super.setTintMode(mode);
        } else {
            this.f36084q.setTintMode(mode);
        }
    }
}
