package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.sw */
/* loaded from: classes2.dex */
public final class C6259sw extends C6155q2 implements InterfaceC6333uw {
    public C6259sw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    @Override // p168r4.InterfaceC6333uw
    /* renamed from: c */
    public final String mo6324c() {
        Parcel m8073o0 = m8073o0(1, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.InterfaceC6333uw
    /* renamed from: d */
    public final String mo6323d() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }
}
