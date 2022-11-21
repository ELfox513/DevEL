package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.fx */
/* loaded from: classes2.dex */
public final class C5779fx extends C6155q2 implements InterfaceC5853hx {
    public C5779fx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // p168r4.InterfaceC5853hx
    /* renamed from: c */
    public final String mo10772c() {
        Parcel m8073o0 = m8073o0(1, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.InterfaceC5853hx
    /* renamed from: d */
    public final String mo10771d() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.InterfaceC5853hx
    /* renamed from: g */
    public final List<C5664cu> mo10770g() {
        Parcel m8073o0 = m8073o0(3, m8074j0());
        ArrayList createTypedArrayList = m8073o0.createTypedArrayList(C5664cu.CREATOR);
        m8073o0.recycle();
        return createTypedArrayList;
    }
}
