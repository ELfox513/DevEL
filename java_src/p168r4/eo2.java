package p168r4;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import p016b3.C0497k2;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.eo2 */
/* loaded from: classes2.dex */
public final class eo2 extends xh0 {

    /* renamed from: a */
    public final ao2 f23098a;

    /* renamed from: b */
    public final qn2 f23099b;

    /* renamed from: d */
    public final String f23100d;

    /* renamed from: k */
    public final cp2 f23101k;

    /* renamed from: p */
    public final Context f23102p;

    /* renamed from: q */
    public uo1 f23103q;

    /* renamed from: r */
    public boolean f23104r = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31122t0)).booleanValue();

    @Override // p168r4.yh0
    /* renamed from: F3 */
    public final synchronized void mo4714F3(ni0 ni0Var) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        cp2 cp2Var = this.f23101k;
        cp2Var.f21649a = ni0Var.f28298a;
        cp2Var.f21650b = ni0Var.f28299b;
    }

    @Override // p168r4.yh0
    /* renamed from: L2 */
    public final synchronized void mo4713L2(C6293tt c6293tt, fi0 fi0Var) {
        m11701i7(c6293tt, fi0Var, 2);
    }

    @Override // p168r4.yh0
    /* renamed from: M0 */
    public final synchronized void mo4712M0(boolean z) {
        C7297q.m1888e("setImmersiveMode must be called on the main UI thread.");
        this.f23104r = z;
    }

    @Override // p168r4.yh0
    /* renamed from: b0 */
    public final synchronized void mo4710b0(InterfaceC3512a interfaceC3512a) {
        mo4707i1(interfaceC3512a, this.f23104r);
    }

    @Override // p168r4.yh0
    /* renamed from: h */
    public final synchronized String mo4708h() {
        uo1 uo1Var = this.f23103q;
        if (uo1Var == null || uo1Var.m10732d() == null) {
            return null;
        }
        return this.f23103q.m10732d().mo10772c();
    }

    @Override // p168r4.yh0
    /* renamed from: i1 */
    public final synchronized void mo4707i1(InterfaceC3512a interfaceC3512a, boolean z) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        if (this.f23103q == null) {
            cm0.m12437f("Rewarded can not be shown before loaded");
            this.f23099b.mo4410o(dq2.m11989d(9, null, null));
            return;
        }
        this.f23103q.m6465g(z, (Activity) BinderC3514b.m18740t0(interfaceC3512a));
    }

    /* renamed from: i7 */
    public final synchronized void m11701i7(C6293tt c6293tt, fi0 fi0Var, int i) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        this.f23099b.m7773z(fi0Var);
        C7601t.m939d();
        if (C0497k2.m26311k(this.f23102p) && c6293tt.f31988D == null) {
            cm0.m12440c("Failed to load the ad because app ID is missing.");
            this.f23099b.mo5143B(dq2.m11989d(4, null, null));
            return;
        }
        if (this.f23103q != null) {
            return;
        }
        sn2 sn2Var = new sn2(null);
        this.f23098a.m12981i(i);
        this.f23098a.mo6509b(c6293tt, this.f23100d, sn2Var, new do2(this));
    }

    @Override // p168r4.yh0
    /* renamed from: j */
    public final boolean mo4706j() {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        uo1 uo1Var = this.f23103q;
        return (uo1Var == null || uo1Var.m6464h()) ? false : true;
    }

    @Override // p168r4.yh0
    /* renamed from: k */
    public final vh0 mo4705k() {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        uo1 uo1Var = this.f23103q;
        if (uo1Var != null) {
            return uo1Var.m6463i();
        }
        return null;
    }

    @Override // p168r4.yh0
    /* renamed from: r3 */
    public final synchronized void mo4703r3(C6293tt c6293tt, fi0 fi0Var) {
        m11701i7(c6293tt, fi0Var, 3);
    }

    @Override // p168r4.yh0
    /* renamed from: A3 */
    public final void mo4716A3(InterfaceC5631bx interfaceC5631bx) {
        if (interfaceC5631bx == null) {
            this.f23099b.m7778L(null);
        } else {
            this.f23099b.m7778L(new co2(this, interfaceC5631bx));
        }
    }

    @Override // p168r4.yh0
    /* renamed from: D5 */
    public final void mo4715D5(bi0 bi0Var) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        this.f23099b.m7779A(bi0Var);
    }

    @Override // p168r4.yh0
    /* renamed from: M5 */
    public final void mo4711M5(InterfaceC5742ex interfaceC5742ex) {
        C7297q.m1888e("setOnPaidEventListener must be called on the main UI thread.");
        this.f23099b.m7777N(interfaceC5742ex);
    }

    @Override // p168r4.yh0
    /* renamed from: g */
    public final Bundle mo4709g() {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        uo1 uo1Var = this.f23103q;
        if (uo1Var != null) {
            return uo1Var.m6460l();
        }
        return new Bundle();
    }

    @Override // p168r4.yh0
    /* renamed from: l */
    public final InterfaceC5853hx mo4704l() {
        uo1 uo1Var;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30981b5)).booleanValue() || (uo1Var = this.f23103q) == null) {
            return null;
        }
        return uo1Var.m10732d();
    }

    @Override // p168r4.yh0
    /* renamed from: t2 */
    public final void mo4702t2(hi0 hi0Var) {
        C7297q.m1888e("#008 Must be called on the main UI thread.");
        this.f23099b.m7775S(hi0Var);
    }

    public eo2(String str, ao2 ao2Var, Context context, qn2 qn2Var, cp2 cp2Var) {
        this.f23100d = str;
        this.f23098a = ao2Var;
        this.f23099b = qn2Var;
        this.f23101k = cp2Var;
        this.f23102p = context;
    }
}
