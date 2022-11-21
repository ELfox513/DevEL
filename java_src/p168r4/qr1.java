package p168r4;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.qr1 */
/* loaded from: classes2.dex */
public final class qr1 implements vr3<Set<ve1<nt2>>> {

    /* renamed from: a */
    public final is3<String> f30295a;

    /* renamed from: b */
    public final is3<Context> f30296b;

    /* renamed from: c */
    public final is3<Executor> f30297c;

    /* renamed from: d */
    public final is3<Map<gt2, sr1>> f30298d;

    public qr1(is3<String> is3Var, is3<Context> is3Var2, is3<Executor> is3Var3, is3<Map<gt2, sr1>> is3Var4) {
        this.f30295a = is3Var;
        this.f30296b = is3Var2;
        this.f30297c = is3Var3;
        this.f30298d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Set emptySet;
        final String m10024b = ((ki2) this.f30295a).m10024b();
        Context m11050b = ((gu0) this.f30296b).m11050b();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        Map mo4079a = ((zr3) this.f30298d).mo4079a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31085o3)).booleanValue()) {
            C5882ip c5882ip = new C5882ip(new C6029mp(m11050b));
            c5882ip.m10582b(new InterfaceC5845hp(m10024b) { // from class: r4.rr1

                /* renamed from: a */
                public final String f30670a;

                {
                    this.f30670a = m10024b;
                }

                @Override // p168r4.InterfaceC5845hp
                /* renamed from: a */
                public final void mo6727a(C6438xq c6438xq) {
                    c6438xq.m5171x(this.f30670a);
                }
            });
            emptySet = Collections.singleton(new ve1(new tr1(c5882ip, mo4079a), i83Var));
        } else {
            emptySet = Collections.emptySet();
        }
        ds3.m11980b(emptySet);
        return emptySet;
    }
}
