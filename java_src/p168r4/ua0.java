package p168r4;

import android.app.Activity;
import android.os.Bundle;
import java.util.List;
import java.util.Map;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p061f5.C3518a;
/* renamed from: r4.ua0 */
/* loaded from: classes2.dex */
public final class ua0 extends wt0 {

    /* renamed from: a */
    public final C3518a f32236a;

    public ua0(C3518a c3518a) {
        this.f32236a = c3518a;
    }

    @Override // p168r4.xt0
    /* renamed from: B0 */
    public final void mo5008B0(String str) {
        this.f32236a.m18738a(str);
    }

    @Override // p168r4.xt0
    /* renamed from: B4 */
    public final void mo5007B4(Bundle bundle) {
        this.f32236a.m18724o(bundle);
    }

    @Override // p168r4.xt0
    /* renamed from: G3 */
    public final Bundle mo5006G3(Bundle bundle) {
        return this.f32236a.m18723p(bundle);
    }

    @Override // p168r4.xt0
    /* renamed from: J0 */
    public final void mo5005J0(String str) {
        this.f32236a.m18736c(str);
    }

    @Override // p168r4.xt0
    /* renamed from: O4 */
    public final Map mo5004O4(String str, String str2, boolean z) {
        return this.f32236a.m18726m(str, str2, z);
    }

    @Override // p168r4.xt0
    /* renamed from: Q */
    public final int mo5003Q(String str) {
        return this.f32236a.m18727l(str);
    }

    @Override // p168r4.xt0
    /* renamed from: U2 */
    public final void mo5001U2(String str, String str2, Bundle bundle) {
        this.f32236a.m18737b(str, str2, bundle);
    }

    @Override // p168r4.xt0
    /* renamed from: i */
    public final String mo5000i() {
        return this.f32236a.m18733f();
    }

    @Override // p168r4.xt0
    /* renamed from: i4 */
    public final List mo4999i4(String str, String str2) {
        return this.f32236a.m18732g(str, str2);
    }

    @Override // p168r4.xt0
    /* renamed from: k */
    public final String mo4998k() {
        return this.f32236a.m18729j();
    }

    @Override // p168r4.xt0
    /* renamed from: l */
    public final long mo4997l() {
        return this.f32236a.m18735d();
    }

    @Override // p168r4.xt0
    /* renamed from: l0 */
    public final void mo4996l0(Bundle bundle) {
        this.f32236a.m18721r(bundle);
    }

    @Override // p168r4.xt0
    /* renamed from: n */
    public final String mo4995n() {
        return this.f32236a.m18734e();
    }

    @Override // p168r4.xt0
    /* renamed from: r */
    public final String mo4994r() {
        return this.f32236a.m18731h();
    }

    @Override // p168r4.xt0
    /* renamed from: r0 */
    public final void mo4993r0(Bundle bundle) {
        this.f32236a.m18720s(bundle);
    }

    @Override // p168r4.xt0
    /* renamed from: u1 */
    public final void mo4992u1(String str, String str2, Bundle bundle) {
        this.f32236a.m18725n(str, str2, bundle);
    }

    @Override // p168r4.xt0
    /* renamed from: w */
    public final String mo4991w() {
        return this.f32236a.m18730i();
    }

    @Override // p168r4.xt0
    /* renamed from: R5 */
    public final void mo5002R5(String str, String str2, InterfaceC3512a interfaceC3512a) {
        Object obj;
        C3518a c3518a = this.f32236a;
        if (interfaceC3512a != null) {
            obj = BinderC3514b.m18740t0(interfaceC3512a);
        } else {
            obj = null;
        }
        c3518a.m18718u(str, str2, obj);
    }

    @Override // p168r4.xt0
    /* renamed from: z3 */
    public final void mo4990z3(InterfaceC3512a interfaceC3512a, String str, String str2) {
        Activity activity;
        C3518a c3518a = this.f32236a;
        if (interfaceC3512a != null) {
            activity = (Activity) BinderC3514b.m18740t0(interfaceC3512a);
        } else {
            activity = null;
        }
        c3518a.m18719t(activity, str, str2);
    }
}
