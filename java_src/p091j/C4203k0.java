package p091j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p013b0.C0421g;
import p038d0.InterfaceC3265z;
import p046e.C3335b;
import p056f0.C3435g0;
import p056f0.InterfaceC3424b;
import p056f0.InterfaceC3440i0;
import p199v.C6952d;
/* renamed from: j.k0 */
/* loaded from: classes.dex */
public class C4203k0 extends TextView implements InterfaceC3265z, InterfaceC3440i0, InterfaceC3424b {

    /* renamed from: a */
    public final C4172d f17930a;

    /* renamed from: b */
    public final C4199j0 f17931b;

    /* renamed from: d */
    public final C4265y f17932d;

    /* renamed from: k */
    public Future<C0421g> f17933k;

    public C4203k0(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return C3435g0.m18853a(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return C3435g0.m18852b(this);
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17931b.m17126j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17931b.m17125k();
    }

    public C0421g.C0422a getTextMetricsParamsCompat() {
        return C3435g0.m18849e(this);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C4202k.m17108a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17120p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17120p();
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i) {
        C3435g0.m18844j(this, i);
    }

    public void setPrecomputedText(C0421g c0421g) {
        C3435g0.m18843k(this, c0421g);
    }

    public void setTextMetricsParamsCompat(C0421g.C0422a c0422a) {
        C3435g0.m18842l(this, c0422a);
    }

    public C4203k0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    /* renamed from: e */
    public final void m17107e() {
        Future<C0421g> future = this.f17933k;
        if (future != null) {
            try {
                this.f17933k = null;
                C3435g0.m18843k(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (InterfaceC3424b.f15874m) {
            return super.getAutoSizeMaxTextSize();
        }
        C4199j0 c4199j0 = this.f17931b;
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
        C4199j0 c4199j0 = this.f17931b;
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
        C4199j0 c4199j0 = this.f17931b;
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
        C4199j0 c4199j0 = this.f17931b;
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
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 == null) {
            return 0;
        }
        return c4199j0.m17127i();
    }

    @Override // p038d0.InterfaceC3265z
    public ColorStateList getSupportBackgroundTintList() {
        C4172d c4172d = this.f17930a;
        if (c4172d != null) {
            return c4172d.m17220c();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C4172d c4172d = this.f17930a;
        if (c4172d != null) {
            return c4172d.m17219d();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C4265y c4265y;
        if (Build.VERSION.SDK_INT < 28 && (c4265y = this.f17932d) != null) {
            return c4265y.m16892a();
        }
        return super.getTextClassifier();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (InterfaceC3424b.f15874m) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C4199j0 c4199j0 = this.f17931b;
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
        C4199j0 c4199j0 = this.f17931b;
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
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17115u(i);
        }
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            C3435g0.m18846h(this, i);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            C3435g0.m18845i(this, i);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C4172d c4172d = this.f17930a;
        if (c4172d != null) {
            c4172d.m17214i(colorStateList);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C4172d c4172d = this.f17930a;
        if (c4172d != null) {
            c4172d.m17213j(mode);
        }
    }

    @Override // p056f0.InterfaceC3440i0
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f17931b.m17114v(colorStateList);
        this.f17931b.m17134b();
    }

    @Override // p056f0.InterfaceC3440i0
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f17931b.m17113w(mode);
        this.f17931b.m17134b();
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C4265y c4265y;
        if (Build.VERSION.SDK_INT < 28 && (c4265y = this.f17932d) != null) {
            c4265y.m16891b(textClassifier);
        } else {
            super.setTextClassifier(textClassifier);
        }
    }

    public void setTextFuture(Future<C0421g> future) {
        this.f17933k = future;
        if (future != null) {
            requestLayout();
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (InterfaceC3424b.f15874m) {
            super.setTextSize(i, f);
            return;
        }
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17110z(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i) {
        Typeface typeface2;
        if (typeface != null && i > 0) {
            typeface2 = C6952d.m2934a(getContext(), typeface, i);
        } else {
            typeface2 = null;
        }
        if (typeface2 != null) {
            typeface = typeface2;
        }
        super.setTypeface(typeface, i);
    }

    public C4203k0(Context context, AttributeSet attributeSet, int i) {
        super(C4226q1.m17018b(context), attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4172d c4172d = new C4172d(this);
        this.f17930a = c4172d;
        c4172d.m17218e(attributeSet, i);
        C4199j0 c4199j0 = new C4199j0(this);
        this.f17931b = c4199j0;
        c4199j0.m17123m(attributeSet, i);
        c4199j0.m17134b();
        this.f17932d = new C4265y(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C4172d c4172d = this.f17930a;
        if (c4172d != null) {
            c4172d.m17221b();
        }
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17134b();
        }
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m17107e();
        return super.getText();
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17121o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m17107e();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null && !InterfaceC3424b.f15874m && c4199j0.m17124l()) {
            this.f17931b.m17133c();
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C4172d c4172d = this.f17930a;
        if (c4172d != null) {
            c4172d.m17217f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C4172d c4172d = this.f17930a;
        if (c4172d != null) {
            c4172d.m17216g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17120p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17120p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3435g0.m18841m(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17119q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? C3335b.m19101d(context, i) : null, i2 != 0 ? C3335b.m19101d(context, i2) : null, i3 != 0 ? C3335b.m19101d(context, i3) : null, i4 != 0 ? C3335b.m19101d(context, i4) : null);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17120p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? C3335b.m19101d(context, i) : null, i2 != 0 ? C3335b.m19101d(context, i2) : null, i3 != 0 ? C3335b.m19101d(context, i3) : null, i4 != 0 ? C3335b.m19101d(context, i4) : null);
        C4199j0 c4199j0 = this.f17931b;
        if (c4199j0 != null) {
            c4199j0.m17120p();
        }
    }
}
