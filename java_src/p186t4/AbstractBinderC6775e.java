package p186t4;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import p122m3.C4632f;
/* renamed from: t4.e */
/* loaded from: classes2.dex */
public abstract class AbstractBinderC6775e extends BinderC6772b implements InterfaceC6776f {
    public AbstractBinderC6775e() {
        super("com.google.android.gms.appset.internal.IAppSetIdCallback");
    }

    @Override // p186t4.BinderC6772b
    /* renamed from: j0 */
    public final boolean mo3447j0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo3438G6((Status) C6773c.m3450a(parcel, Status.CREATOR), (C4632f) C6773c.m3450a(parcel, C4632f.CREATOR));
            return true;
        }
        return false;
    }
}
