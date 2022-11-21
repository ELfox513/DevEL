package p167r3;

import android.os.Parcel;
import p204v4.BinderC7064c;
/* renamed from: r3.u */
/* loaded from: classes.dex */
public abstract class AbstractBinderC5554u extends BinderC7064c implements InterfaceC5551r {
    public AbstractBinderC5554u() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // p204v4.BinderC7064c
    /* renamed from: j0 */
    public final boolean mo2576j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            mo13069m();
        } else {
            mo13067o();
        }
        return true;
    }
}
