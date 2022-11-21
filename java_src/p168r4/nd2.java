package p168r4;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;
/* renamed from: r4.nd2 */
/* loaded from: classes2.dex */
public final class nd2 implements vr3<ld2> {

    /* renamed from: a */
    public final is3<i83> f28253a;

    /* renamed from: b */
    public final is3<ViewGroup> f28254b;

    /* renamed from: c */
    public final is3<Context> f28255c;

    /* renamed from: d */
    public final is3<Set<String>> f28256d;

    public nd2(is3<i83> is3Var, is3<ViewGroup> is3Var2, is3<Context> is3Var3, is3<Set<String>> is3Var4) {
        this.f28253a = is3Var;
        this.f28254b = is3Var2;
        this.f28255c = is3Var3;
        this.f28256d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new ld2(i83Var, ((f11) this.f28254b).m11646b(), this.f28255c.mo4079a(), ((gs3) this.f28256d).mo4079a());
    }
}
