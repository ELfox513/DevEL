package p220x3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import p185t3.C6734b;
import p220x3.AbstractC7246c;
/* renamed from: x3.e1 */
/* loaded from: classes.dex */
public final class C7260e1 extends AbstractC7301r0 {

    /* renamed from: g */
    public final IBinder f36706g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC7246c f36707h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7260e1(AbstractC7246c abstractC7246c, int i, IBinder iBinder, Bundle bundle) {
        super(abstractC7246c, i, bundle);
        this.f36707h = abstractC7246c;
        this.f36706g = iBinder;
    }

    @Override // p220x3.AbstractC7301r0
    /* renamed from: f */
    public final boolean mo1873f() {
        AbstractC7246c.InterfaceC7247a interfaceC7247a;
        AbstractC7246c.InterfaceC7247a interfaceC7247a2;
        try {
            IBinder iBinder = this.f36706g;
            C7297q.m1883j(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f36707h.mo913C().equals(interfaceDescriptor)) {
                String mo913C = this.f36707h.mo913C();
                StringBuilder sb = new StringBuilder(String.valueOf(mo913C).length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(mo913C);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.e("GmsClient", sb.toString());
                return false;
            }
            IInterface mo909r = this.f36707h.mo909r(this.f36706g);
            if (mo909r == null || (!AbstractC7246c.m1999c0(this.f36707h, 2, 4, mo909r) && !AbstractC7246c.m1999c0(this.f36707h, 3, 4, mo909r))) {
                return false;
            }
            this.f36707h.f36656K = null;
            Bundle mo1982v = this.f36707h.mo1982v();
            interfaceC7247a = this.f36707h.f36651F;
            if (interfaceC7247a != null) {
                interfaceC7247a2 = this.f36707h.f36651F;
                interfaceC7247a2.mo1947o0(mo1982v);
                return true;
            }
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }

    @Override // p220x3.AbstractC7301r0
    /* renamed from: g */
    public final void mo1872g(C6734b c6734b) {
        if (this.f36707h.f36652G != null) {
            this.f36707h.f36652G.mo1940t0(c6734b);
        }
        this.f36707h.mo2020J(c6734b);
    }
}
