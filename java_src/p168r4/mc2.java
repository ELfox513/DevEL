package p168r4;

import java.util.concurrent.Callable;
/* renamed from: r4.mc2 */
/* loaded from: classes2.dex */
public final class mc2 implements eg2<nc2> {

    /* renamed from: a */
    public final i83 f27572a;

    /* renamed from: b */
    public final lq1 f27573b;

    /* renamed from: c */
    public final String f27574c;

    /* renamed from: d */
    public final hp2 f27575d;

    public mc2(i83 i83Var, lq1 lq1Var, hp2 hp2Var, String str) {
        this.f27572a = i83Var;
        this.f27573b = lq1Var;
        this.f27575d = hp2Var;
        this.f27574c = str;
    }

    @Override // p168r4.eg2
    public final h83<nc2> zza() {
        return this.f27572a.mo8015c(new Callable(this) { // from class: r4.lc2

            /* renamed from: a */
            public final mc2 f27185a;

            {
                this.f27185a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f27185a.m9410a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ nc2 m9410a() {
        return new nc2(this.f27573b.m9583b(this.f27575d.f24781f, this.f27574c), this.f27573b.m9582c());
    }
}
