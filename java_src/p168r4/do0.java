package p168r4;

import android.content.Context;
import android.view.ViewGroup;
import p220x3.C7297q;
/* renamed from: r4.do0 */
/* loaded from: classes2.dex */
public final class do0 {

    /* renamed from: a */
    public final Context f22359a;

    /* renamed from: b */
    public final po0 f22360b;

    /* renamed from: c */
    public final ViewGroup f22361c;

    /* renamed from: d */
    public co0 f22362d;

    public do0(Context context, ViewGroup viewGroup, cs0 cs0Var) {
        this.f22359a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f22361c = viewGroup;
        this.f22360b = cs0Var;
        this.f22362d = null;
    }

    /* renamed from: b */
    public final void m12073b(int i, int i2, int i3, int i4, int i5, boolean z, oo0 oo0Var) {
        if (this.f22362d != null) {
            return;
        }
        C6484yz.m4506a(this.f22360b.mo5064m().m11891c(), this.f22360b.mo5073j(), "vpr2");
        Context context = this.f22359a;
        po0 po0Var = this.f22360b;
        co0 co0Var = new co0(context, po0Var, i5, z, po0Var.mo5064m().m11891c(), oo0Var);
        this.f22362d = co0Var;
        this.f22361c.addView(co0Var, 0, new ViewGroup.LayoutParams(-1, -1));
        this.f22362d.m12385v(i, i2, i3, i4);
        this.f22360b.mo5060n0(false);
    }

    /* renamed from: c */
    public final co0 m12072c() {
        C7297q.m1888e("getAdVideoUnderlay must be called from the UI thread.");
        return this.f22362d;
    }

    /* renamed from: a */
    public final void m12074a(int i, int i2, int i3, int i4) {
        C7297q.m1888e("The underlay may only be modified from the UI thread.");
        co0 co0Var = this.f22362d;
        if (co0Var != null) {
            co0Var.m12385v(i, i2, i3, i4);
        }
    }

    /* renamed from: d */
    public final void m12071d() {
        C7297q.m1888e("onPause must be called from the UI thread.");
        co0 co0Var = this.f22362d;
        if (co0Var != null) {
            co0Var.m12381z();
        }
    }

    /* renamed from: e */
    public final void m12070e() {
        C7297q.m1888e("onDestroy must be called from the UI thread.");
        co0 co0Var = this.f22362d;
        if (co0Var != null) {
            co0Var.m12393n();
            this.f22361c.removeView(this.f22362d);
            this.f22362d = null;
        }
    }

    /* renamed from: f */
    public final void m12069f(int i) {
        C7297q.m1888e("setPlayerBackgroundColor must be called from the UI thread.");
        co0 co0Var = this.f22362d;
        if (co0Var != null) {
            co0Var.m12386u(i);
        }
    }
}
