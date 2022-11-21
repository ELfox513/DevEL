package p168r4;

import java.util.concurrent.Callable;
import p235z2.C7601t;
/* renamed from: r4.pd2 */
/* loaded from: classes2.dex */
public final class pd2 implements eg2<qd2> {

    /* renamed from: a */
    public final i83 f29435a;

    /* renamed from: b */
    public final iv1 f29436b;

    public pd2(i83 i83Var, iv1 iv1Var) {
        this.f29435a = i83Var;
        this.f29436b = iv1Var;
    }

    @Override // p168r4.eg2
    public final h83<qd2> zza() {
        return this.f29435a.mo8015c(new Callable(this) { // from class: r4.od2

            /* renamed from: a */
            public final pd2 f28961a;

            {
                this.f28961a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f28961a.m8339a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ qd2 m8339a() {
        return new qd2(this.f29436b.m10501g(), this.f29436b.m10504d(), C7601t.m929n().m26402k());
    }
}
