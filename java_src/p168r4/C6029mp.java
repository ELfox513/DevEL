package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
/* renamed from: r4.mp */
/* loaded from: classes2.dex */
public final class C6029mp {

    /* renamed from: a */
    public InterfaceC6128pc f27839a;

    /* renamed from: b */
    public boolean f27840b;

    public C6029mp() {
    }

    public C6029mp(Context context) {
        C6225rz.m7278a(context);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31085o3)).booleanValue()) {
            try {
                this.f27839a = (InterfaceC6128pc) gm0.m11109a(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", C5918jp.f26091a);
                BinderC3514b.m18741L0(context);
                this.f27839a.mo8360V4(BinderC3514b.m18741L0(context), "GMA_SDK");
                this.f27840b = true;
            } catch (RemoteException | NullPointerException | fm0 unused) {
                cm0.m12442a("Cannot dynamite load clearcut");
            }
        }
    }
}
