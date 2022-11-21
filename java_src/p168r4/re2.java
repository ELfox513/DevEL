package p168r4;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: r4.re2 */
/* loaded from: classes2.dex */
public final class re2 implements eg2<se2> {

    /* renamed from: a */
    public final i83 f30547a;

    /* renamed from: b */
    public final Bundle f30548b;

    public re2(i83 i83Var, Bundle bundle) {
        this.f30547a = i83Var;
        this.f30548b = bundle;
    }

    /* renamed from: a */
    public final /* synthetic */ se2 m7520a() {
        return new se2(this.f30548b);
    }

    @Override // p168r4.eg2
    public final h83<se2> zza() {
        return this.f30547a.mo8015c(new Callable(this) { // from class: r4.qe2

            /* renamed from: a */
            public final re2 f30098a;

            {
                this.f30098a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f30098a.m7520a();
            }
        });
    }
}
