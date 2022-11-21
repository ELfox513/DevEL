package p091j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import p021c.C1008a;
import p038d0.InterfaceC3265z;
import p056f0.C3435g0;
import p056f0.InterfaceC3424b;
import p056f0.InterfaceC3440i0;
/* renamed from: j.e */
/* loaded from: classes.dex */
public class C4175e extends Button implements InterfaceC3265z, InterfaceC3424b, InterfaceC3440i0 {

    /* renamed from: a */
    public final C4172d f17872a;

    /* renamed from: b */
    public final C4199j0 f17873b;

    public C4175e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2521q);
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17873b.m17126j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17873b.m17125k();
    }

    public C4175e(Context context, AttributeSet attributeSet, int i) {
        super(C4226q1.m17018b(context), attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4172d c4172d = new C4172d(this);
        this.f17872a = c4172d;
        c4172d.m17218e(attributeSet, i);
        C4199j0 c4199j0 = new C4199j0(this);
        this.f17873b = c4199j0;
        c4199j0.m17123m(attributeSet, i);
        c4199j0.m17134b();
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (InterfaceC3424b.f15874m) {
            return super.getAutoSizeMaxTextSize();
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            return c4199j0.m17131e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (InterfaceC3424b.f15874m) {
            return super.getAutoSizeMinTextSize();
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            return c4199j0.m17130f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (InterfaceC3424b.f15874m) {
            return super.getAutoSizeStepGranularity();
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            return c4199j0.m17129g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (InterfaceC3424b.f15874m) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            return c4199j0.m17128h();
        }
        return new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (InterfaceC3424b.f15874m) {
            if (super.getAutoSizeTextType() != 1) {
                return 0;
            }
            return 1;
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 == null) {
            return 0;
        }
        return c4199j0.m17127i();
    }

    @Override // p038d0.InterfaceC3265z
    public ColorStateList getSupportBackgroundTintList() {
        C4172d c4172d = this.f17872a;
        if (c4172d != null) {
            return c4172d.m17220c();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C4172d c4172d = this.f17872a;
        if (c4172d != null) {
            return c4172d.m17219d();
        }
        return null;
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (InterfaceC3424b.f15874m) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            c4199j0.m17117s(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (InterfaceC3424b.f15874m) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            c4199j0.m17116t(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (InterfaceC3424b.f15874m) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            c4199j0.m17115u(i);
        }
    }

    public void setSupportAllCaps(boolean z) {
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            c4199j0.m17118r(z);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C4172d c4172d = this.f17872a;
        if (c4172d != null) {
            c4172d.m17214i(colorStateList);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C4172d c4172d = this.f17872a;
        if (c4172d != null) {
            c4172d.m17213j(mode);
        }
    }

    @Override // p056f0.InterfaceC3440i0
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f17873b.m17114v(colorStateList);
        this.f17873b.m17134b();
    }

    @Override // p056f0.InterfaceC3440i0
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f17873b.m17113w(mode);
        this.f17873b.m17134b();
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (InterfaceC3424b.f15874m) {
            super.setTextSize(i, f);
            return;
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            c4199j0.m17110z(i, f);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C4172d c4172d = this.f17872a;
        if (c4172d != null) {
            c4172d.m17221b();
        }
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            c4199j0.m17134b();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            c4199j0.m17121o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null && !InterfaceC3424b.f15874m && c4199j0.m17124l()) {
            this.f17873b.m17133c();
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C4172d c4172d = this.f17872a;
        if (c4172d != null) {
            c4172d.m17217f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C4172d c4172d = this.f17872a;
        if (c4172d != null) {
            c4172d.m17216g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3435g0.m18841m(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C4199j0 c4199j0 = this.f17873b;
        if (c4199j0 != null) {
            c4199j0.m17119q(context, i);
        }
    }
}
