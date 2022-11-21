package p208w;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* renamed from: w.v */
/* loaded from: classes.dex */
public final class C7101v extends Drawable.ConstantState {

    /* renamed from: a */
    public int f36086a;

    /* renamed from: b */
    public Drawable.ConstantState f36087b;

    /* renamed from: c */
    public ColorStateList f36088c;

    /* renamed from: d */
    public PorterDuff.Mode f36089d;

    /* renamed from: a */
    public boolean m2526a() {
        return this.f36087b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i;
        int i2 = this.f36086a;
        Drawable.ConstantState constantState = this.f36087b;
        if (constantState != null) {
            i = constantState.getChangingConfigurations();
        } else {
            i = 0;
        }
        return i2 | i;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new C7100u(this, resources);
        }
        return new C7098s(this, resources);
    }

    public C7101v(C7101v c7101v) {
        this.f36088c = null;
        this.f36089d = C7098s.f36078r;
        if (c7101v != null) {
            this.f36086a = c7101v.f36086a;
            this.f36087b = c7101v.f36087b;
            this.f36088c = c7101v.f36088c;
            this.f36089d = c7101v.f36089d;
        }
    }
}
