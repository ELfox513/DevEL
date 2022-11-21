package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.io.InputStream;
import p185t3.C6734b;
import p235z2.C7601t;
/* renamed from: r4.px1 */
/* loaded from: classes2.dex */
public final class px1 extends jx1 {

    /* renamed from: r */
    public String f29842r;

    /* renamed from: s */
    public int f29843s = 1;

    /* renamed from: b */
    public final h83<InputStream> m8104b(og0 og0Var) {
        synchronized (this.f26169b) {
            int i = this.f29843s;
            if (i != 1 && i != 2) {
                return y73.m4812c(new yx1(2));
            } else if (this.f26170d) {
                return this.f26168a;
            } else {
                this.f29843s = 2;
                this.f26170d = true;
                this.f26172p = og0Var;
                this.f26173q.m1985p();
                this.f26168a.mo6087c(new Runnable(this) { // from class: r4.nx1

                    /* renamed from: a */
                    public final px1 f28707a;

                    {
                        this.f28707a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f28707a.m10159a();
                    }
                }, qm0.f30195f);
                return this.f26168a;
            }
        }
    }

    /* renamed from: c */
    public final h83<InputStream> m8103c(String str) {
        synchronized (this.f26169b) {
            int i = this.f29843s;
            if (i != 1 && i != 3) {
                return y73.m4812c(new yx1(2));
            } else if (this.f26170d) {
                return this.f26168a;
            } else {
                this.f29843s = 3;
                this.f26170d = true;
                this.f29842r = str;
                this.f26173q.m1985p();
                this.f26168a.mo6087c(new Runnable(this) { // from class: r4.ox1

                    /* renamed from: a */
                    public final px1 f29261a;

                    {
                        this.f29261a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f29261a.m10159a();
                    }
                }, qm0.f30195f);
                return this.f26168a;
            }
        }
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        synchronized (this.f26169b) {
            if (!this.f26171k) {
                this.f26171k = true;
                try {
                    int i = this.f29843s;
                    if (i == 2) {
                        this.f26173q.m4738h0().mo11168k4(this.f26172p, new gx1(this));
                    } else if (i == 3) {
                        this.f26173q.m4738h0().mo11169c3(this.f29842r, new gx1(this));
                    } else {
                        this.f26168a.m6085f(new yx1(1));
                    }
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.f26168a.m6085f(new yx1(1));
                }
            }
        }
    }

    @Override // p168r4.jx1, p220x3.AbstractC7246c.InterfaceC7248b
    /* renamed from: t0 */
    public final void mo1940t0(C6734b c6734b) {
        cm0.m12442a("Cannot connect to remote service, fallback to local instance.");
        this.f26168a.m6085f(new yx1(1));
    }

    public px1(Context context) {
        this.f26173q = new yf0(context, C7601t.m925r().m26396a(), this, this);
    }
}
