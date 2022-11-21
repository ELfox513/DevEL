package p168r4;

import android.content.Context;
import p060f4.BinderC3514b;
/* renamed from: r4.pu */
/* loaded from: classes2.dex */
public final class C6146pu extends AbstractC6442xu<InterfaceC6369vv> {

    /* renamed from: b */
    public final /* synthetic */ Context f29575b;

    /* renamed from: c */
    public final /* synthetic */ C6478yt f29576c;

    /* renamed from: d */
    public final /* synthetic */ String f29577d;

    /* renamed from: e */
    public final /* synthetic */ C6405wu f29578e;

    public C6146pu(C6405wu c6405wu, Context context, C6478yt c6478yt, String str) {
        this.f29578e = c6405wu;
        this.f29575b = context;
        this.f29576c = c6478yt;
        this.f29577d = str;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4976b() {
        C6256st c6256st;
        c6256st = this.f29578e.f33322a;
        return c6256st.m7014c(this.f29575b, this.f29576c, this.f29577d, null, 3);
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4977a() {
        C6405wu.m5574g(this.f29575b, "search");
        return new BinderC6038my();
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11350I3(BinderC3514b.m18741L0(this.f29575b), this.f29576c, this.f29577d, 213806000);
    }
}
