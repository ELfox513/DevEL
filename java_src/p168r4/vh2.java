package p168r4;

import java.util.concurrent.Callable;
/* renamed from: r4.vh2 */
/* loaded from: classes2.dex */
public final class vh2 implements eg2<wh2> {

    /* renamed from: a */
    public final i83 f32727a;

    /* renamed from: b */
    public final String f32728b;

    /* renamed from: c */
    public final bl0 f32729c;

    public vh2(bl0 bl0Var, i83 i83Var, String str, byte[] bArr) {
        this.f32729c = bl0Var;
        this.f32727a = i83Var;
        this.f32728b = str;
    }

    @Override // p168r4.eg2
    public final h83<wh2> zza() {
        new vm0();
        final h83 m4814a = y73.m4814a(null);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31006e4)).booleanValue()) {
            m4814a = y73.m4814a(null);
        }
        final h83 m4814a2 = y73.m4814a(null);
        return y73.m4801n(m4814a, m4814a2).m5812a(new Callable(m4814a, m4814a2) { // from class: r4.uh2

            /* renamed from: a */
            public final h83 f32285a;

            /* renamed from: b */
            public final h83 f32286b;

            {
                this.f32285a = m4814a;
                this.f32286b = m4814a2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new wh2((String) this.f32285a.get(), (String) this.f32286b.get());
            }
        }, qm0.f30190a);
    }
}
