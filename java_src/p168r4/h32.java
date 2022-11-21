package p168r4;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: r4.h32 */
/* loaded from: classes2.dex */
public final class h32 implements vr3<g32> {

    /* renamed from: a */
    public final is3<Context> f24430a;

    /* renamed from: b */
    public final is3<Executor> f24431b;

    /* renamed from: c */
    public final is3<vg1> f24432c;

    /* renamed from: d */
    public final is3<mo2> f24433d;

    public h32(is3<Context> is3Var, is3<Executor> is3Var2, is3<vg1> is3Var3, is3<mo2> is3Var4) {
        this.f24430a = is3Var;
        this.f24431b = is3Var2;
        this.f24432c = is3Var3;
        this.f24433d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        return new g32(this.f24430a.mo4079a(), this.f24431b.mo4079a(), this.f24432c.mo4079a(), this.f24433d.mo4079a());
    }
}
