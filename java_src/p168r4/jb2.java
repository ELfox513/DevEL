package p168r4;

import java.util.concurrent.Callable;
/* renamed from: r4.jb2 */
/* loaded from: classes2.dex */
public final class jb2 implements eg2<kb2> {

    /* renamed from: a */
    public final i83 f25987a;

    /* renamed from: b */
    public final hp2 f25988b;

    /* renamed from: c */
    public final im0 f25989c;

    /* renamed from: d */
    public final rl0 f25990d;

    public jb2(i83 i83Var, hp2 hp2Var, im0 im0Var, rl0 rl0Var) {
        this.f25987a = i83Var;
        this.f25988b = hp2Var;
        this.f25989c = im0Var;
        this.f25990d = rl0Var;
    }

    /* renamed from: a */
    public final /* synthetic */ kb2 m10349a() {
        return new kb2(this.f25988b.f24785j, this.f25989c, this.f25990d.m7466i());
    }

    @Override // p168r4.eg2
    public final h83<kb2> zza() {
        return this.f25987a.mo8015c(new Callable(this) { // from class: r4.ib2

            /* renamed from: a */
            public final jb2 f25027a;

            {
                this.f25027a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f25027a.m10349a();
            }
        });
    }
}
