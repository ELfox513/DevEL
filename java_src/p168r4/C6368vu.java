package p168r4;

import android.content.Context;
import p060f4.BinderC3514b;
/* renamed from: r4.vu */
/* loaded from: classes2.dex */
public final class C6368vu extends AbstractC6442xu<yh0> {

    /* renamed from: b */
    public final /* synthetic */ Context f32818b;

    /* renamed from: c */
    public final /* synthetic */ String f32819c;

    /* renamed from: d */
    public final /* synthetic */ fb0 f32820d;

    /* renamed from: e */
    public final /* synthetic */ C6405wu f32821e;

    public C6368vu(C6405wu c6405wu, Context context, String str, fb0 fb0Var) {
        this.f32821e = c6405wu;
        this.f32818b = context;
        this.f32819c = str;
        this.f32820d = fb0Var;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ yh0 mo4976b() {
        return li0.m9658a(this.f32818b, this.f32819c, this.f32820d);
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ yh0 mo4977a() {
        C6405wu.m5574g(this.f32818b, "rewarded");
        return new BinderC6187qy();
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ yh0 mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11339x5(BinderC3514b.m18741L0(this.f32818b), this.f32819c, this.f32820d, 213806000);
    }
}
