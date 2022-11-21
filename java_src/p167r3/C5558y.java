package p167r3;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import p204v4.C7065d;
import p204v4.C7066e;
/* renamed from: r3.y */
/* loaded from: classes.dex */
public final class C5558y extends C7065d implements InterfaceC5555v {
    public C5558y(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    @Override // p167r3.InterfaceC5555v
    /* renamed from: D6 */
    public final void mo13066D6(InterfaceC5553t interfaceC5553t, GoogleSignInOptions googleSignInOptions) {
        Parcel m2575j0 = m2575j0();
        C7066e.m2572b(m2575j0, interfaceC5553t);
        C7066e.m2571c(m2575j0, googleSignInOptions);
        m2574o0(102, m2575j0);
    }

    @Override // p167r3.InterfaceC5555v
    /* renamed from: H5 */
    public final void mo13065H5(InterfaceC5553t interfaceC5553t, GoogleSignInOptions googleSignInOptions) {
        Parcel m2575j0 = m2575j0();
        C7066e.m2572b(m2575j0, interfaceC5553t);
        C7066e.m2571c(m2575j0, googleSignInOptions);
        m2574o0(103, m2575j0);
    }

    @Override // p167r3.InterfaceC5555v
    /* renamed from: Q3 */
    public final void mo13064Q3(InterfaceC5553t interfaceC5553t, GoogleSignInOptions googleSignInOptions) {
        Parcel m2575j0 = m2575j0();
        C7066e.m2572b(m2575j0, interfaceC5553t);
        C7066e.m2571c(m2575j0, googleSignInOptions);
        m2574o0(101, m2575j0);
    }
}
