package p168r4;

import java.util.concurrent.Callable;
/* renamed from: r4.xd2 */
/* loaded from: classes2.dex */
public final class xd2 implements eg2<yd2> {

    /* renamed from: a */
    public final i83 f33566a;

    /* renamed from: b */
    public final mo2 f33567b;

    public xd2(i83 i83Var, mo2 mo2Var) {
        this.f33566a = i83Var;
        this.f33567b = mo2Var;
    }

    /* renamed from: a */
    public final /* synthetic */ yd2 m5363a() {
        return new yd2(this.f33567b);
    }

    @Override // p168r4.eg2
    public final h83<yd2> zza() {
        return this.f33566a.mo8015c(new Callable(this) { // from class: r4.wd2

            /* renamed from: a */
            public final xd2 f33179a;

            {
                this.f33179a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f33179a.m5363a();
            }
        });
    }
}
