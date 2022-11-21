package p168r4;

import java.util.concurrent.Executor;
/* renamed from: r4.tt2 */
/* loaded from: classes2.dex */
public final class tt2 {

    /* renamed from: a */
    public final Executor f32012a;

    /* renamed from: b */
    public final hm0 f32013b;

    public tt2(Executor executor, hm0 hm0Var) {
        this.f32012a = executor;
        this.f32013b = hm0Var;
    }

    /* renamed from: a */
    public final void m6722a(final String str) {
        this.f32012a.execute(new Runnable(this, str) { // from class: r4.st2

            /* renamed from: a */
            public final tt2 f31509a;

            /* renamed from: b */
            public final String f31510b;

            {
                this.f31509a = this;
                this.f31510b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f31509a.m6721b(this.f31510b);
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ void m6721b(String str) {
        this.f32013b.mo6488q(str);
    }
}
