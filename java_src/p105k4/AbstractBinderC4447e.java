package p105k4;

import android.os.Parcel;
import p006a5.BinderC0087a;
import p006a5.C0100n;
import p006a5.C0109w;
/* renamed from: k4.e */
/* loaded from: classes.dex */
public abstract class AbstractBinderC4447e extends BinderC0087a implements InterfaceC4444b {
    public AbstractBinderC4447e() {
        super("com.google.android.gms.games.internal.IGamesClient");
    }

    @Override // p006a5.BinderC0087a
    /* renamed from: j0 */
    public final boolean mo16478j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1001) {
            C0109w mo16449F0 = mo16449F0();
            parcel2.writeNoException();
            C0100n.m27672e(parcel2, mo16449F0);
            return true;
        }
        return false;
    }
}
