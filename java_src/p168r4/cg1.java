package p168r4;

import java.util.Collections;
import java.util.Set;
/* renamed from: r4.cg1 */
/* loaded from: classes2.dex */
public final class cg1 implements vr3<Set<ve1<z71>>> {

    /* renamed from: a */
    public final bg1 f21515a;

    /* renamed from: b */
    public final is3<i61> f21516b;

    public cg1(bg1 bg1Var, is3<i61> is3Var) {
        this.f21515a = bg1Var;
        this.f21516b = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Set singleton = Collections.singleton(new ve1(this.f21516b.mo4079a(), qm0.f30195f));
        ds3.m11980b(singleton);
        return singleton;
    }
}
