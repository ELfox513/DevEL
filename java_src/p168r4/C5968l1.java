package p168r4;

import java.io.IOException;
import p211w2.C7171a;
/* renamed from: r4.l1 */
/* loaded from: classes2.dex */
public final class C5968l1 extends AbstractCallableC5710e2 {
    public C5968l1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2) {
        super(c6338v0, "NSYe0Ak7CUXd9zFZA3bczJ8pTgBK/kfUu9ICpHR+lQrTNc8+V7Owo49e2WIp0407", "Ux7t0A/7z2bV/IDvLZJgV4tTxr0Vvc1KngWKlG2Szwg=", za4Var, i, 24);
    }

    @Override // p168r4.AbstractCallableC5710e2, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        mo9815b();
        return null;
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        if (!this.f22744b.m6277i()) {
            synchronized (this.f22747e) {
                this.f22747e.m4379W((String) this.f22748f.invoke(null, this.f22744b.m6283c()));
            }
            return;
        }
        m9814c();
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: b */
    public final Void mo9815b() {
        if (this.f22744b.m6282d()) {
            super.mo9815b();
            return null;
        }
        if (this.f22744b.m6277i()) {
            m9814c();
        }
        return null;
    }

    /* renamed from: c */
    public final void m9814c() {
        C7171a m6266t = this.f22744b.m6266t();
        if (m6266t == null) {
            return;
        }
        try {
            C7171a.C7172a m2242c = m6266t.m2242c();
            String m4944a = C6449y0.m4944a(m2242c.m2232a());
            if (m4944a != null) {
                synchronized (this.f22747e) {
                    this.f22747e.m4379W(m4944a);
                    this.f22747e.m4378X(m2242c.m2231b());
                    this.f22747e.m4370f0(6);
                }
            }
        } catch (IOException unused) {
        }
    }
}
