package p168r4;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: r4.zh2 */
/* loaded from: classes2.dex */
public final class zh2 implements eg2<ai2> {

    /* renamed from: a */
    public final i83 f34615a;

    /* renamed from: b */
    public final List<String> f34616b;

    /* renamed from: c */
    public final C5632bz f34617c;

    /* JADX WARN: Multi-variable type inference failed */
    public zh2(C5632bz c5632bz, C5632bz c5632bz2, i83 i83Var, List<String> list) {
        this.f34617c = c5632bz;
        this.f34615a = c5632bz2;
        this.f34616b = i83Var;
    }

    @Override // p168r4.eg2
    public final h83<ai2> zza() {
        return this.f34615a.mo8015c(new Callable(this) { // from class: r4.yh2

            /* renamed from: a */
            public final zh2 f34081a;

            {
                this.f34081a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new ai2(this.f34081a.f34616b);
            }
        });
    }
}
