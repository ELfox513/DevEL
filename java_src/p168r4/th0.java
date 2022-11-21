package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.th0 */
/* loaded from: classes2.dex */
public final class th0 extends C6155q2 implements vh0 {
    public th0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // p168r4.vh0
    /* renamed from: c */
    public final String mo6150c() {
        Parcel m8073o0 = m8073o0(1, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.vh0
    /* renamed from: d */
    public final int mo6149d() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        int readInt = m8073o0.readInt();
        m8073o0.recycle();
        return readInt;
    }
}
