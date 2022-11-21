package p068g3;

import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import p168r4.a20;
import p168r4.c20;
import p184t2.InterfaceC6717n;
/* renamed from: g3.b */
/* loaded from: classes.dex */
public class C3580b extends FrameLayout {

    /* renamed from: a */
    public InterfaceC6717n f16166a;

    /* renamed from: b */
    public boolean f16167b;

    /* renamed from: d */
    public a20 f16168d;

    /* renamed from: k */
    public ImageView.ScaleType f16169k;

    /* renamed from: p */
    public boolean f16170p;

    /* renamed from: q */
    public c20 f16171q;

    /* renamed from: a */
    public final synchronized void m18589a(a20 a20Var) {
        this.f16168d = a20Var;
        if (this.f16167b) {
            a20Var.mo13058a(this.f16166a);
        }
    }

    /* renamed from: b */
    public final synchronized void m18588b(c20 c20Var) {
        this.f16171q = c20Var;
        if (this.f16170p) {
            c20Var.mo12651a(this.f16169k);
        }
    }

    public void setImageScaleType(@RecentlyNonNull ImageView.ScaleType scaleType) {
        this.f16170p = true;
        this.f16169k = scaleType;
        c20 c20Var = this.f16171q;
        if (c20Var != null) {
            c20Var.mo12651a(scaleType);
        }
    }

    public void setMediaContent(@RecentlyNonNull InterfaceC6717n interfaceC6717n) {
        this.f16167b = true;
        this.f16166a = interfaceC6717n;
        a20 a20Var = this.f16168d;
        if (a20Var != null) {
            a20Var.mo13058a(interfaceC6717n);
        }
    }
}
