package p168r4;

import android.os.RemoteException;
/* renamed from: r4.vw */
/* loaded from: classes2.dex */
public final class C6370vw {

    /* renamed from: a */
    public final String f32945a;

    /* renamed from: b */
    public final InterfaceC6333uw f32946b;

    public final String toString() {
        return this.f32945a;
    }

    public C6370vw(InterfaceC6333uw interfaceC6333uw) {
        String str;
        this.f32946b = interfaceC6333uw;
        try {
            str = interfaceC6333uw.mo6324c();
        } catch (RemoteException e) {
            cm0.m12439d("", e);
            str = null;
        }
        this.f32945a = str;
    }
}
