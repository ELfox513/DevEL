package p168r4;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
/* renamed from: r4.so3 */
/* loaded from: classes2.dex */
public abstract class so3 implements ht3 {

    /* renamed from: a */
    public final ArrayList<gt3> f31434a = new ArrayList<>(1);

    /* renamed from: b */
    public final HashSet<gt3> f31435b = new HashSet<>(1);

    /* renamed from: c */
    public final ot3 f31436c = new ot3();

    /* renamed from: d */
    public final po2 f31437d = new po2();

    /* renamed from: e */
    public Looper f31438e;

    /* renamed from: f */
    public AbstractC5717e8 f31439f;

    @Override // p168r4.ht3
    /* renamed from: c */
    public final void mo7092c(qp2 qp2Var) {
        this.f31437d.m8230c(qp2Var);
    }

    @Override // p168r4.ht3
    /* renamed from: k */
    public final void mo7086k(pt3 pt3Var) {
        this.f31436c.m8696c(pt3Var);
    }

    /* renamed from: l */
    public void mo7085l() {
    }

    /* renamed from: m */
    public abstract void mo6011m(InterfaceC5844ho interfaceC5844ho);

    @Override // p168r4.ht3
    /* renamed from: n */
    public final boolean mo7084n() {
        return true;
    }

    /* renamed from: o */
    public void mo7083o() {
    }

    /* renamed from: p */
    public abstract void mo6010p();

    @Override // p168r4.ht3
    /* renamed from: r */
    public final AbstractC5717e8 mo7081r() {
        return null;
    }

    /* renamed from: s */
    public final ot3 m7080s(ft3 ft3Var) {
        return this.f31436c.m8698a(0, ft3Var, 0L);
    }

    /* renamed from: u */
    public final ot3 m7079u(int i, ft3 ft3Var, long j) {
        return this.f31436c.m8698a(i, ft3Var, 0L);
    }

    /* renamed from: w */
    public final po2 m7078w(ft3 ft3Var) {
        return this.f31437d.m8232a(0, ft3Var);
    }

    /* renamed from: x */
    public final po2 m7077x(int i, ft3 ft3Var) {
        return this.f31437d.m8232a(i, ft3Var);
    }

    /* renamed from: y */
    public final boolean m7076y() {
        return !this.f31435b.isEmpty();
    }

    @Override // p168r4.ht3
    /* renamed from: e */
    public final void mo7090e(gt3 gt3Var) {
        this.f31438e.getClass();
        boolean isEmpty = this.f31435b.isEmpty();
        this.f31435b.add(gt3Var);
        if (isEmpty) {
            mo7085l();
        }
    }

    @Override // p168r4.ht3
    /* renamed from: f */
    public final void mo7089f(gt3 gt3Var) {
        boolean isEmpty = this.f31435b.isEmpty();
        this.f31435b.remove(gt3Var);
        if ((!isEmpty) && this.f31435b.isEmpty()) {
            mo7083o();
        }
    }

    @Override // p168r4.ht3
    /* renamed from: g */
    public final void mo7088g(gt3 gt3Var) {
        this.f31434a.remove(gt3Var);
        if (this.f31434a.isEmpty()) {
            this.f31438e = null;
            this.f31439f = null;
            this.f31435b.clear();
            mo6010p();
            return;
        }
        mo7089f(gt3Var);
    }

    /* renamed from: q */
    public final void m7082q(AbstractC5717e8 abstractC5717e8) {
        this.f31439f = abstractC5717e8;
        ArrayList<gt3> arrayList = this.f31434a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo9274a(this, abstractC5717e8);
        }
    }

    @Override // p168r4.ht3
    /* renamed from: a */
    public final void mo7093a(Handler handler, qp2 qp2Var) {
        qp2Var.getClass();
        this.f31437d.m8231b(handler, qp2Var);
    }

    @Override // p168r4.ht3
    /* renamed from: d */
    public final void mo7091d(Handler handler, pt3 pt3Var) {
        pt3Var.getClass();
        this.f31436c.m8697b(handler, pt3Var);
    }

    @Override // p168r4.ht3
    /* renamed from: j */
    public final void mo7087j(gt3 gt3Var, InterfaceC5844ho interfaceC5844ho) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f31438e;
        boolean z = true;
        if (looper != null && looper != myLooper) {
            z = false;
        }
        C5903ja.m10374a(z);
        AbstractC5717e8 abstractC5717e8 = this.f31439f;
        this.f31434a.add(gt3Var);
        if (this.f31438e == null) {
            this.f31438e = myLooper;
            this.f31435b.add(gt3Var);
            mo6011m(interfaceC5844ho);
        } else if (abstractC5717e8 != null) {
            mo7090e(gt3Var);
            gt3Var.mo9274a(this, abstractC5717e8);
        }
    }
}
