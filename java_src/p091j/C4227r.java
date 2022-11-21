package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import p021c.C1008a;
import p038d0.InterfaceC3265z;
import p046e.C3335b;
import p056f0.InterfaceC3438h0;
/* renamed from: j.r */
/* loaded from: classes.dex */
public class C4227r extends RadioButton implements InterfaceC3438h0, InterfaceC3265z {

    /* renamed from: a */
    public final C4184h f18006a;

    /* renamed from: b */
    public final C4172d f18007b;

    /* renamed from: d */
    public final C4199j0 f18008d;

    public C4227r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2497E);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C4184h c4184h = this.f18006a;
        if (c4184h != null) {
            c4184h.m17198f();
        }
    }

    public C4227r(Context context, AttributeSet attributeSet, int i) {
        super(C4226q1.m17018b(context), attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4184h c4184h = new C4184h(this);
        this.f18006a = c4184h;
        c4184h.m17199e(attributeSet, i);
        C4172d c4172d = new C4172d(this);
        this.f18007b = c4172d;
        c4172d.m17218e(attributeSet, i);
        C4199j0 c4199j0 = new C4199j0(this);
        this.f18008d = c4199j0;
        c4199j0.m17123m(attributeSet, i);
    }

    @Override // p038d0.InterfaceC3265z
    public ColorStateList getSupportBackgroundTintList() {
        C4172d c4172d = this.f18007b;
        if (c4172d != null) {
            return c4172d.m17220c();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C4172d c4172d = this.f18007b;
        if (c4172d != null) {
            return c4172d.m17219d();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        C4184h c4184h = this.f18006a;
        if (c4184h != null) {
            return c4184h.m17201c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C4184h c4184h = this.f18006a;
        if (c4184h != null) {
            return c4184h.m17200d();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C4172d c4172d = this.f18007b;
        if (c4172d != null) {
            c4172d.m17214i(colorStateList);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C4172d c4172d = this.f18007b;
        if (c4172d != null) {
            c4172d.m17213j(mode);
        }
    }

    @Override // p056f0.InterfaceC3438h0
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C4184h c4184h = this.f18006a;
        if (c4184h != null) {
            c4184h.m17197g(colorStateList);
        }
    }

    @Override // p056f0.InterfaceC3438h0
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C4184h c4184h = this.f18006a;
        if (c4184h != null) {
            c4184h.m17196h(mode);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C4172d c4172d = this.f18007b;
        if (c4172d != null) {
            c4172d.m17221b();
        }
        C4199j0 c4199j0 = this.f18008d;
        if (c4199j0 != null) {
            c4199j0.m17134b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C4184h c4184h = this.f18006a;
        if (c4184h != null) {
            return c4184h.m17202b(compoundPaddingLeft);
        }
        return compoundPaddingLeft;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C4172d c4172d = this.f18007b;
        if (c4172d != null) {
            c4172d.m17217f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C4172d c4172d = this.f18007b;
        if (c4172d != null) {
            c4172d.m17216g(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C3335b.m19101d(getContext(), i));
    }
}
