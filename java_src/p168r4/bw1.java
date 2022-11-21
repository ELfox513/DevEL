package p168r4;

import android.content.Context;
import java.util.concurrent.Callable;
/* renamed from: r4.bw1 */
/* loaded from: classes2.dex */
public final class bw1 implements vr3<h83<String>> {

    /* renamed from: a */
    public final is3<C6300u> f21248a;

    /* renamed from: b */
    public final is3<Context> f21249b;

    /* renamed from: c */
    public final is3<i83> f21250c;

    public bw1(is3<C6300u> is3Var, is3<Context> is3Var2, is3<i83> is3Var3) {
        this.f21248a = is3Var;
        this.f21249b = is3Var2;
        this.f21250c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        final C6300u mo4079a = this.f21248a.mo4079a();
        final Context m9281b = ((mq2) this.f21249b).m9281b();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        h83 mo8015c = i83Var.mo8015c(new Callable(mo4079a, m9281b) { // from class: r4.aw1

            /* renamed from: a */
            public final C6300u f20747a;

            /* renamed from: b */
            public final Context f20748b;

            {
                this.f20747a = mo4079a;
                this.f20748b = m9281b;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                C6300u c6300u = this.f20747a;
                return c6300u.m6683b().mo1020a(this.f20748b);
            }
        });
        ds3.m11980b(mo8015c);
        return mo8015c;
    }
}
