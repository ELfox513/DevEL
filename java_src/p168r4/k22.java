package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.k22 */
/* loaded from: classes2.dex */
public final class k22 implements vr3<j22> {

    /* renamed from: a */
    public final is3<j01> f26259a;

    /* renamed from: b */
    public final is3<Context> f26260b;

    /* renamed from: c */
    public final is3<Executor> f26261c;

    /* renamed from: d */
    public final is3<rp1> f26262d;

    public k22(is3<j01> is3Var, is3<Context> is3Var2, is3<Executor> is3Var3, is3<rp1> is3Var4) {
        this.f26259a = is3Var;
        this.f26260b = is3Var2;
        this.f26261c = is3Var3;
        this.f26262d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new j22(this.f26259a.mo4079a(), this.f26260b.mo4079a(), this.f26261c.mo4079a(), this.f26262d.mo4079a());
    }
}
