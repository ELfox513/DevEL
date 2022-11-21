package p168r4;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.ar1 */
/* loaded from: classes2.dex */
public final class ar1 implements vr3<Set<ve1<nt2>>> {

    /* renamed from: a */
    public final is3<Executor> f20587a;

    /* renamed from: b */
    public final is3<tr1> f20588b;

    public ar1(is3<Executor> is3Var, is3<tr1> is3Var2) {
        this.f20587a = is3Var;
        this.f20588b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Set emptySet;
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        tr1 mo4079a = ((ur1) this.f20588b).mo4079a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31085o3)).booleanValue()) {
            emptySet = Collections.singleton(new ve1(mo4079a, i83Var));
        } else {
            emptySet = Collections.emptySet();
        }
        ds3.m11980b(emptySet);
        return emptySet;
    }
}
