package p168r4;

import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;
import p026c4.InterfaceC1045f;
/* renamed from: r4.f52 */
/* loaded from: classes2.dex */
public final class f52 implements t73 {

    /* renamed from: a */
    public final /* synthetic */ long f23310a;

    /* renamed from: b */
    public final /* synthetic */ String f23311b;

    /* renamed from: c */
    public final /* synthetic */ no2 f23312c;

    /* renamed from: d */
    public final /* synthetic */ so2 f23313d;

    /* renamed from: e */
    public final /* synthetic */ g52 f23314e;

    public f52(g52 g52Var, long j, String str, no2 no2Var, so2 so2Var) {
        this.f23314e = g52Var;
        this.f23310a = j;
        this.f23311b = str;
        this.f23312c = no2Var;
        this.f23313d = so2Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        InterfaceC1045f interfaceC1045f;
        int i;
        boolean z;
        C5996lt c5996lt;
        v12 v12Var;
        h52 h52Var;
        u12 u12Var;
        interfaceC1045f = this.f23314e.f23886a;
        long mo24762b = interfaceC1045f.mo24762b() - this.f23310a;
        if (th instanceof TimeoutException) {
            i = 2;
        } else if (th instanceof v42) {
            i = 3;
        } else if (th instanceof CancellationException) {
            i = 4;
        } else if (th instanceof mp2) {
            i = 5;
        } else if ((th instanceof sv1) && dq2.m11992a(th).f27361a == 3) {
            i = 1;
        } else {
            i = 6;
        }
        g52.m11286f(this.f23314e, this.f23311b, i, mo24762b, this.f23312c.f28409c0);
        z = this.f23314e.f23889d;
        if (z) {
            h52Var = this.f23314e.f23887b;
            so2 so2Var = this.f23313d;
            no2 no2Var = this.f23312c;
            if (th instanceof u12) {
                u12Var = (u12) th;
            } else {
                u12Var = null;
            }
            h52Var.m10982a(so2Var, no2Var, i, u12Var, mo24762b);
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30948X5)).booleanValue()) {
            C5996lt m11992a = dq2.m11992a(th);
            int i2 = m11992a.f27361a;
            if ((i2 == 3 || i2 == 0) && (c5996lt = m11992a.f27364k) != null && !c5996lt.f27363d.equals("com.google.android.gms.ads")) {
                m11992a = dq2.m11992a(new u12(13, m11992a.f27364k));
            }
            v12Var = this.f23314e.f23890e;
            v12Var.m6249c(this.f23312c, mo24762b, m11992a);
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final void mo4626b(Object obj) {
        InterfaceC1045f interfaceC1045f;
        boolean z;
        v12 v12Var;
        h52 h52Var;
        interfaceC1045f = this.f23314e.f23886a;
        long mo24762b = interfaceC1045f.mo24762b() - this.f23310a;
        g52.m11286f(this.f23314e, this.f23311b, 0, mo24762b, this.f23312c.f28409c0);
        z = this.f23314e.f23889d;
        if (z) {
            h52Var = this.f23314e.f23887b;
            h52Var.m10982a(this.f23313d, this.f23312c, 0, null, mo24762b);
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30948X5)).booleanValue()) {
            v12Var = this.f23314e.f23890e;
            v12Var.m6249c(this.f23312c, mo24762b, null);
        }
    }
}
