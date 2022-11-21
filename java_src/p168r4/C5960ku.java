package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.ku */
/* loaded from: classes2.dex */
public final class C5960ku extends AbstractC6442xu<vk0> {

    /* renamed from: b */
    public final /* synthetic */ Context f26552b;

    /* renamed from: c */
    public final /* synthetic */ fb0 f26553c;

    public C5960ku(C6405wu c6405wu, Context context, fb0 fb0Var) {
        this.f26552b = context;
        this.f26553c = fb0Var;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ vk0 mo4977a() {
        return null;
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ vk0 mo4976b() {
        try {
            return ((yk0) gm0.m11109a(this.f26552b, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", C5923ju.f26150a)).mo4657Q0(BinderC3514b.m18741L0(this.f26552b), this.f26553c, 213806000);
        } catch (RemoteException | NullPointerException | fm0 unused) {
            return null;
        }
    }

    @Override // p168r4.AbstractC6442xu
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ vk0 mo4975c(InterfaceC5778fw interfaceC5778fw) {
        return interfaceC5778fw.mo11352A6(BinderC3514b.m18741L0(this.f26552b), this.f26553c, 213806000);
    }
}
