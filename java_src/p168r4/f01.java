package p168r4;

import java.util.Collections;
import java.util.Set;
/* renamed from: r4.f01 */
/* loaded from: classes2.dex */
public final class f01 implements vr3<Set<ve1<y81>>> {

    /* renamed from: a */
    public final d01 f23225a;

    /* renamed from: b */
    public final is3<z21> f23226b;

    public f01(d01 d01Var, is3<z21> is3Var) {
        this.f23225a = d01Var;
        this.f23226b = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Set singleton = Collections.singleton(new ve1(this.f23226b.mo4079a(), qm0.f30195f));
        ds3.m11980b(singleton);
        return singleton;
    }
}
