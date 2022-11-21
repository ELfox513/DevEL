package p168r4;

import android.content.Context;
import p060f4.BinderC3514b;
/* renamed from: r4.ou */
/* loaded from: classes2.dex */
public final class C6109ou extends AbstractC6442xu<InterfaceC6369vv> {

    /* renamed from: b */
    public final /* synthetic */ Context f29134b;

    /* renamed from: c */
    public final /* synthetic */ C6478yt f29135c;

    /* renamed from: d */
    public final /* synthetic */ String f29136d;

    /* renamed from: e */
    public final /* synthetic */ fb0 f29137e;

    /* renamed from: f */
    public final /* synthetic */ C6405wu f29138f;

    public C6109ou(C6405wu c6405wu, Context context, C6478yt c6478yt, String str, fb0 fb0Var) {
        this.f29138f = c6405wu;
        this.f29134b = context;
        this.f29135c = c6478yt;
        this.f29136d = str;
        this.f29137e = fb0Var;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4976b() {
        C6256st c6256st;
        c6256st = this.f29138f.f33322a;
        return c6256st.m7014c(this.f29134b, this.f29135c, this.f29136d, this.f29137e, 1);
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4977a() {
        C6405wu.m5574g(this.f29134b, "banner");
        return new BinderC6038my();
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11347P3(BinderC3514b.m18741L0(this.f29134b), this.f29135c, this.f29136d, this.f29137e, 213806000);
    }
}
