package p168r4;

import java.util.Map;
/* renamed from: r4.tr1 */
/* loaded from: classes2.dex */
public final class tr1 implements nt2 {

    /* renamed from: a */
    public final Map<gt2, sr1> f31966a;

    /* renamed from: b */
    public final C5882ip f31967b;

    public tr1(C5882ip c5882ip, Map<gt2, sr1> map) {
        this.f31966a = map;
        this.f31967b = c5882ip;
    }

    @Override // p168r4.nt2
    /* renamed from: s */
    public final void mo6740s(gt2 gt2Var, String str) {
    }

    @Override // p168r4.nt2
    /* renamed from: a */
    public final void mo6742a(gt2 gt2Var, String str) {
        if (this.f31966a.containsKey(gt2Var)) {
            this.f31967b.m10581c(this.f31966a.get(gt2Var).f31488b);
        }
    }

    @Override // p168r4.nt2
    /* renamed from: c */
    public final void mo6741c(gt2 gt2Var, String str, Throwable th) {
        if (this.f31966a.containsKey(gt2Var)) {
            this.f31967b.m10581c(this.f31966a.get(gt2Var).f31489c);
        }
    }

    @Override // p168r4.nt2
    /* renamed from: u */
    public final void mo6739u(gt2 gt2Var, String str) {
        if (this.f31966a.containsKey(gt2Var)) {
            this.f31967b.m10581c(this.f31966a.get(gt2Var).f31487a);
        }
    }
}
