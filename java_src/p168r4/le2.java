package p168r4;

import android.content.Context;
import java.util.Set;
/* renamed from: r4.le2 */
/* loaded from: classes2.dex */
public final class le2 implements vr3<je2> {

    /* renamed from: a */
    public final is3<i83> f27194a;

    /* renamed from: b */
    public final is3<Context> f27195b;

    /* renamed from: c */
    public final is3<Set<String>> f27196c;

    public le2(is3<i83> is3Var, is3<Context> is3Var2, is3<Set<String>> is3Var3) {
        this.f27194a = is3Var;
        this.f27195b = is3Var2;
        this.f27196c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new je2(i83Var, ((mq2) this.f27195b).m9281b(), this.f27196c.mo4079a());
    }
}
