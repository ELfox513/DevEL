package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import p021c.C1008a;
import p038d0.InterfaceC3265z;
import p046e.C3335b;
/* renamed from: j.o */
/* loaded from: classes.dex */
public class C4215o extends MultiAutoCompleteTextView implements InterfaceC3265z {

    /* renamed from: d */
    public static final int[] f17970d = {16843126};

    /* renamed from: a */
    public final C4172d f17971a;

    /* renamed from: b */
    public final C4199j0 f17972b;

    public C4215o(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2520p);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C4202k.m17108a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C3335b.m19101d(getContext(), i));
    }

    public C4215o(Context context, AttributeSet attributeSet, int i) {
        super(C4226q1.m17018b(context), attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4235t1 m16966u = C4235t1.m16966u(getContext(), attributeSet, f17970d, i, 0);
        if (m16966u.m16969r(0)) {
            setDropDownBackgroundDrawable(m16966u.m16981f(0));
        }
        m16966u.m16965v();
        C4172d c4172d = new C4172d(this);
        this.f17971a = c4172d;
        c4172d.m17218e(attributeSet, i);
        C4199j0 c4199j0 = new C4199j0(this);
        this.f17972b = c4199j0;
        c4199j0.m17123m(attributeSet, i);
        c4199j0.m17134b();
    }

    @Override // p038d0.InterfaceC3265z
    public ColorStateList getSupportBackgroundTintList() {
        C4172d c4172d = this.f17971a;
        if (c4172d != null) {
            return c4172d.m17220c();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C4172d c4172d = this.f17971a;
        if (c4172d != null) {
            return c4172d.m17219d();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C4172d c4172d = this.f17971a;
        if (c4172d != null) {
            c4172d.m17214i(colorStateList);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C4172d c4172d = this.f17971a;
        if (c4172d != null) {
            c4172d.m17213j(mode);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C4172d c4172d = this.f17971a;
        if (c4172d != null) {
            c4172d.m17221b();
        }
        C4199j0 c4199j0 = this.f17972b;
        if (c4199j0 != null) {
            c4199j0.m17134b();
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C4172d c4172d = this.f17971a;
        if (c4172d != null) {
            c4172d.m17217f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C4172d c4172d = this.f17971a;
        if (c4172d != null) {
            c4172d.m17216g(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C4199j0 c4199j0 = this.f17972b;
        if (c4199j0 != null) {
            c4199j0.m17119q(context, i);
        }
    }
}
