package p168r4;

import android.os.RemoteException;
/* renamed from: r4.kp */
/* loaded from: classes2.dex */
public final class C5955kp {

    /* renamed from: a */
    public final byte[] f26508a;

    /* renamed from: b */
    public int f26509b;

    /* renamed from: c */
    public final /* synthetic */ C6029mp f26510c;

    public /* synthetic */ C5955kp(C6029mp c6029mp, byte[] bArr, C5992lp c5992lp) {
        this.f26510c = c6029mp;
        this.f26508a = bArr;
    }

    /* renamed from: a */
    public final synchronized void m9964a() {
        try {
            C6029mp c6029mp = this.f26510c;
            if (c6029mp.f27840b) {
                c6029mp.f27839a.mo8364C4(this.f26508a);
                this.f26510c.f27839a.mo8363I0(0);
                this.f26510c.f27839a.mo8362K0(this.f26509b);
                this.f26510c.f27839a.mo8361N3(null);
                this.f26510c.f27839a.mo8359d();
            }
        } catch (RemoteException e) {
            cm0.m12441b("Clearcut log failed", e);
        }
    }

    /* renamed from: b */
    public final C5955kp m9963b(int i) {
        this.f26509b = i;
        return this;
    }
}
