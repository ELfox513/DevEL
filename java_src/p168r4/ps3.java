package p168r4;

import android.os.Handler;
import java.util.HashMap;
/* renamed from: r4.ps3 */
/* loaded from: classes2.dex */
public abstract class ps3<T> extends so3 {

    /* renamed from: g */
    public final HashMap<T, os3<T>> f29569g = new HashMap<>();

    /* renamed from: h */
    public Handler f29570h;

    /* renamed from: i */
    public InterfaceC5844ho f29571i;

    /* renamed from: B */
    public abstract ft3 mo6014B(T t, ft3 ft3Var);

    @Override // p168r4.so3
    /* renamed from: m */
    public void mo6011m(InterfaceC5844ho interfaceC5844ho) {
        this.f29571i = interfaceC5844ho;
        this.f29570h = C5979lc.m9724M(null);
    }

    /* renamed from: z */
    public abstract void mo6007z(T t, ht3 ht3Var, AbstractC5717e8 abstractC5717e8);

    /* renamed from: A */
    public final void m8216A(final T t, ht3 ht3Var) {
        C5903ja.m10374a(!this.f29569g.containsKey(t));
        gt3 gt3Var = new gt3(this, t) { // from class: r4.ms3

            /* renamed from: a */
            public final ps3 f27867a;

            /* renamed from: b */
            public final Object f27868b;

            {
                this.f27867a = this;
                this.f27868b = t;
            }

            @Override // p168r4.gt3
            /* renamed from: a */
            public final void mo9274a(ht3 ht3Var2, AbstractC5717e8 abstractC5717e8) {
                this.f27867a.mo6007z(this.f27868b, ht3Var2, abstractC5717e8);
            }
        };
        ns3 ns3Var = new ns3(this, t);
        this.f29569g.put(t, new os3<>(ht3Var, gt3Var, ns3Var));
        Handler handler = this.f29570h;
        handler.getClass();
        ht3Var.mo7091d(handler, ns3Var);
        Handler handler2 = this.f29570h;
        handler2.getClass();
        ht3Var.mo7093a(handler2, ns3Var);
        ht3Var.mo7087j(gt3Var, this.f29571i);
        if (!m7076y()) {
            ht3Var.mo7089f(gt3Var);
        }
    }

    @Override // p168r4.so3
    /* renamed from: l */
    public final void mo7085l() {
        for (os3<T> os3Var : this.f29569g.values()) {
            os3Var.f29118a.mo7090e(os3Var.f29119b);
        }
    }

    @Override // p168r4.so3
    /* renamed from: o */
    public final void mo7083o() {
        for (os3<T> os3Var : this.f29569g.values()) {
            os3Var.f29118a.mo7089f(os3Var.f29119b);
        }
    }

    @Override // p168r4.so3
    /* renamed from: p */
    public void mo6010p() {
        for (os3<T> os3Var : this.f29569g.values()) {
            os3Var.f29118a.mo7088g(os3Var.f29119b);
            os3Var.f29118a.mo7086k(os3Var.f29120c);
            os3Var.f29118a.mo7092c(os3Var.f29120c);
        }
        this.f29569g.clear();
    }

    @Override // p168r4.ht3
    /* renamed from: t */
    public void mo6009t() {
        for (os3<T> os3Var : this.f29569g.values()) {
            os3Var.f29118a.mo6009t();
        }
    }
}
