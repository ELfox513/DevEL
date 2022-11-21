package p077h3;

import java.util.concurrent.Executor;
import p168r4.ds3;
import p168r4.i83;
import p168r4.is3;
import p168r4.qm0;
import p168r4.rw1;
import p168r4.sw1;
import p168r4.vr3;
/* renamed from: h3.i */
/* loaded from: classes.dex */
public final class C4001i implements vr3<C3999h> {

    /* renamed from: a */
    public final is3<Executor> f17477a;

    /* renamed from: b */
    public final is3<rw1> f17478b;

    public C4001i(is3<Executor> is3Var, is3<rw1> is3Var2) {
        this.f17477a = is3Var;
        this.f17478b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final C3999h mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new C3999h(i83Var, ((sw1) this.f17478b).mo4079a());
    }
}
