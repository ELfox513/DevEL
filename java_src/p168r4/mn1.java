package p168r4;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.List;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p145p.C5270a;
import p145p.C5283g;
import p235z2.C7601t;
/* renamed from: r4.mn1 */
/* loaded from: classes2.dex */
public final class mn1 extends f30 {

    /* renamed from: a */
    public final Context f27792a;

    /* renamed from: b */
    public final ej1 f27793b;

    /* renamed from: d */
    public ek1 f27794d;

    /* renamed from: k */
    public zi1 f27795k;

    public mn1(Context context, ej1 ej1Var, ek1 ek1Var, zi1 zi1Var) {
        this.f27792a = context;
        this.f27793b = ej1Var;
        this.f27794d = ek1Var;
        this.f27795k = zi1Var;
    }

    @Override // p168r4.g30
    /* renamed from: H */
    public final String mo9334H(String str) {
        return this.f27793b.m11737y().get(str);
    }

    @Override // p168r4.g30
    /* renamed from: P0 */
    public final void mo9333P0(String str) {
        zi1 zi1Var = this.f27795k;
        if (zi1Var != null) {
            zi1Var.m4239A(str);
        }
    }

    @Override // p168r4.g30
    /* renamed from: f */
    public final String mo9331f() {
        return this.f27793b.m11745q();
    }

    @Override // p168r4.g30
    /* renamed from: h */
    public final void mo9328h() {
        zi1 zi1Var = this.f27795k;
        if (zi1Var != null) {
            zi1Var.m4238B();
        }
    }

    @Override // p168r4.g30
    /* renamed from: i */
    public final InterfaceC6000lx mo9327i() {
        return this.f27793b.m11760e0();
    }

    @Override // p168r4.g30
    /* renamed from: k */
    public final void mo9325k() {
        zi1 zi1Var = this.f27795k;
        if (zi1Var != null) {
            zi1Var.mo4220b();
        }
        this.f27795k = null;
        this.f27794d = null;
    }

    @Override // p168r4.g30
    /* renamed from: l */
    public final InterfaceC3512a mo9324l() {
        return BinderC3514b.m18741L0(this.f27792a);
    }

    @Override // p168r4.g30
    /* renamed from: s */
    public final p20 mo9321s(String str) {
        return this.f27793b.m11740v().get(str);
    }

    @Override // p168r4.g30
    /* renamed from: g */
    public final List<String> mo9330g() {
        C5283g<String, z10> m11740v = this.f27793b.m11740v();
        C5283g<String, String> m11737y = this.f27793b.m11737y();
        String[] strArr = new String[m11740v.size() + m11737y.size()];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < m11740v.size()) {
            strArr[i3] = m11740v.m13660i(i2);
            i2++;
            i3++;
        }
        while (i < m11737y.size()) {
            strArr[i3] = m11737y.m13660i(i);
            i++;
            i3++;
        }
        return Arrays.asList(strArr);
    }

    @Override // p168r4.g30
    /* renamed from: o */
    public final boolean mo9323o() {
        InterfaceC3512a m11741u = this.f27793b.m11741u();
        if (m11741u != null) {
            C7601t.m924s().zzf(m11741u);
            if (this.f27793b.m11742t() != null) {
                this.f27793b.m11742t().mo5125H0("onSdkLoaded", new C5270a());
                return true;
            }
            return true;
        }
        cm0.m12437f("Trying to start OMID session before creation.");
        return false;
    }

    @Override // p168r4.g30
    /* renamed from: q */
    public final boolean mo9322q() {
        zi1 zi1Var = this.f27795k;
        if ((zi1Var != null && !zi1Var.m4213m()) || this.f27793b.m11742t() == null || this.f27793b.m11744r() != null) {
            return false;
        }
        return true;
    }

    @Override // p168r4.g30
    /* renamed from: w */
    public final void mo9320w() {
        String m11738x = this.f27793b.m11738x();
        if ("Google".equals(m11738x)) {
            cm0.m12437f("Illegal argument specified for omid partner name.");
        } else if (TextUtils.isEmpty(m11738x)) {
            cm0.m12437f("Not starting OMID session. OM partner name has not been configured.");
        } else {
            zi1 zi1Var = this.f27795k;
            if (zi1Var != null) {
                zi1Var.m4214l(m11738x, false);
            }
        }
    }

    @Override // p168r4.g30
    /* renamed from: c7 */
    public final void mo9332c7(InterfaceC3512a interfaceC3512a) {
        zi1 zi1Var;
        Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
        if ((m18740t0 instanceof View) && this.f27793b.m11741u() != null && (zi1Var = this.f27795k) != null) {
            zi1Var.m4212n((View) m18740t0);
        }
    }

    @Override // p168r4.g30
    /* renamed from: i0 */
    public final boolean mo9326i0(InterfaceC3512a interfaceC3512a) {
        ek1 ek1Var;
        Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
        if (!(m18740t0 instanceof ViewGroup) || (ek1Var = this.f27794d) == null || !ek1Var.m11723d((ViewGroup) m18740t0)) {
            return false;
        }
        this.f27793b.m11744r().mo5109R0(new ln1(this));
        return true;
    }
}
