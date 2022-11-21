package p091j;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import p021c.C1017j;
import p056f0.C3452t;
/* renamed from: j.p */
/* loaded from: classes.dex */
public class C4221p extends PopupWindow {

    /* renamed from: b */
    public static final boolean f17997b;

    /* renamed from: a */
    public boolean f17998a;

    static {
        f17997b = Build.VERSION.SDK_INT < 21;
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (f17997b && this.f17998a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    /* renamed from: a */
    public final void m17027a(Context context, AttributeSet attributeSet, int i, int i2) {
        C4235t1 m16966u = C4235t1.m16966u(context, attributeSet, C1017j.f2799b2, i, i2);
        int i3 = C1017j.f2809d2;
        if (m16966u.m16969r(i3)) {
            m17026b(m16966u.m16986a(i3, false));
        }
        setBackgroundDrawable(m16966u.m16981f(C1017j.f2804c2));
        m16966u.m16965v();
    }

    /* renamed from: b */
    public final void m17026b(boolean z) {
        if (f17997b) {
            this.f17998a = z;
        } else {
            C3452t.m18817a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (f17997b && this.f17998a) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }

    public C4221p(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m17027a(context, attributeSet, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (f17997b && this.f17998a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }
}
