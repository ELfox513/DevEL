package p168r4;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: r4.ju0 */
/* loaded from: classes2.dex */
public final class ju0 implements vr3<Set<ve1<ie1>>> {

    /* renamed from: a */
    public final is3<nz1> f26151a;

    /* renamed from: b */
    public final is3<Executor> f26152b;

    public ju0(is3<nz1> is3Var, is3<Executor> is3Var2) {
        this.f26151a = is3Var;
        this.f26152b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Set emptySet;
        nz1 mo4079a = this.f26151a.mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31107r1)).booleanValue()) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
                emptySet = Collections.singleton(new ve1(mo4079a, i83Var));
                ds3.m11980b(emptySet);
                return emptySet;
            }
        }
        emptySet = Collections.emptySet();
        ds3.m11980b(emptySet);
        return emptySet;
    }
}
