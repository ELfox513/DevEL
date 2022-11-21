package p168r4;

import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: r4.pu2 */
/* loaded from: classes2.dex */
public final class pu2 {

    /* renamed from: a */
    public final Executor f29596a;

    /* renamed from: b */
    public final hm0 f29597b;

    public pu2(Executor executor, hm0 hm0Var) {
        this.f29596a = executor;
        this.f29597b = hm0Var;
    }

    /* renamed from: b */
    public final void m8184b(final String str) {
        this.f29596a.execute(new Runnable(this, str) { // from class: r4.ou2

            /* renamed from: a */
            public final pu2 f29145a;

            /* renamed from: b */
            public final String f29146b;

            {
                this.f29145a = this;
                this.f29146b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29145a.m8183c(this.f29146b);
            }
        });
    }

    /* renamed from: c */
    public final /* synthetic */ void m8183c(String str) {
        this.f29597b.mo6488q(str);
    }

    /* renamed from: a */
    public final void m8185a(List<String> list) {
        for (String str : list) {
            m8184b(str);
        }
    }
}
