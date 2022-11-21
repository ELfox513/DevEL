package p168r4;

import java.util.Collections;
import java.util.Set;
/* renamed from: r4.y11 */
/* loaded from: classes2.dex */
public final class y11 implements vr3<Set<ve1<InterfaceC6064nm>>> {

    /* renamed from: a */
    public final o11 f33836a;

    /* renamed from: b */
    public final is3<z21> f33837b;

    public y11(o11 o11Var, is3<z21> is3Var) {
        this.f33836a = o11Var;
        this.f33837b = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Set singleton = Collections.singleton(new ve1(this.f33837b.mo4079a(), qm0.f30195f));
        ds3.m11980b(singleton);
        return singleton;
    }
}
