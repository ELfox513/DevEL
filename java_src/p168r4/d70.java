package p168r4;

import android.os.Bundle;
import android.os.DeadObjectException;
import p220x3.AbstractC7246c;
/* renamed from: r4.d70 */
/* loaded from: classes2.dex */
public final class d70 implements AbstractC7246c.InterfaceC7247a {

    /* renamed from: a */
    public final /* synthetic */ vm0 f22139a;

    /* renamed from: b */
    public final /* synthetic */ f70 f22140b;

    public d70(f70 f70Var, vm0 vm0Var) {
        this.f22140b = f70Var;
        this.f22139a = vm0Var;
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: j0 */
    public final void mo1948j0(int i) {
        vm0 vm0Var = this.f22139a;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i);
        vm0Var.m6085f(new RuntimeException(sb.toString()));
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        r60 r60Var;
        try {
            vm0 vm0Var = this.f22139a;
            r60Var = this.f22140b.f23402a;
            vm0Var.m6086e(r60Var.m7607h0());
        } catch (DeadObjectException e) {
            this.f22139a.m6085f(e);
        }
    }
}
