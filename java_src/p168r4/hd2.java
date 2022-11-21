package p168r4;

import java.util.concurrent.Callable;
import p077h3.C4011p;
/* renamed from: r4.hd2 */
/* loaded from: classes2.dex */
public final class hd2 implements eg2<id2> {

    /* renamed from: a */
    public final i83 f24551a;

    /* renamed from: b */
    public final hp2 f24552b;

    public hd2(i83 i83Var, hp2 hp2Var) {
        this.f24551a = i83Var;
        this.f24552b = hp2Var;
    }

    @Override // p168r4.eg2
    public final h83<id2> zza() {
        return this.f24551a.mo8015c(new Callable(this) { // from class: r4.gd2

            /* renamed from: a */
            public final hd2 f24005a;

            {
                this.f24005a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f24005a.m10946a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ id2 m10946a() {
        return new id2("requester_type_2".equals(C4011p.m17551d(this.f24552b)));
    }
}
