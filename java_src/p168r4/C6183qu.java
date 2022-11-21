package p168r4;

import android.content.Context;
import p060f4.BinderC3514b;
/* renamed from: r4.qu */
/* loaded from: classes2.dex */
public final class C6183qu extends AbstractC6442xu<InterfaceC6369vv> {

    /* renamed from: b */
    public final /* synthetic */ Context f30311b;

    /* renamed from: c */
    public final /* synthetic */ C6478yt f30312c;

    /* renamed from: d */
    public final /* synthetic */ String f30313d;

    /* renamed from: e */
    public final /* synthetic */ fb0 f30314e;

    /* renamed from: f */
    public final /* synthetic */ C6405wu f30315f;

    public C6183qu(C6405wu c6405wu, Context context, C6478yt c6478yt, String str, fb0 fb0Var) {
        this.f30315f = c6405wu;
        this.f30311b = context;
        this.f30312c = c6478yt;
        this.f30313d = str;
        this.f30314e = fb0Var;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4976b() {
        C6256st c6256st;
        c6256st = this.f30315f.f33322a;
        return c6256st.m7014c(this.f30311b, this.f30312c, this.f30313d, this.f30314e, 2);
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4977a() {
        C6405wu.m5574g(this.f30311b, "interstitial");
        return new BinderC6038my();
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ InterfaceC6369vv mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11349K4(BinderC3514b.m18741L0(this.f30311b), this.f30312c, this.f30313d, this.f30314e, 213806000);
    }
}
