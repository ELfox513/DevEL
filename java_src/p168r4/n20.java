package p168r4;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.n20 */
/* loaded from: classes2.dex */
public final class n20 extends C6155q2 implements p20 {
    public n20(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // p168r4.p20
    /* renamed from: a */
    public final InterfaceC3512a mo4484a() {
        Parcel m8073o0 = m8073o0(1, m8074j0());
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m18742o0;
    }

    @Override // p168r4.p20
    /* renamed from: b */
    public final Uri mo4483b() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        Uri uri = (Uri) C6229s2.m7249c(m8073o0, Uri.CREATOR);
        m8073o0.recycle();
        return uri;
    }

    @Override // p168r4.p20
    /* renamed from: c */
    public final int mo4482c() {
        Parcel m8073o0 = m8073o0(4, m8074j0());
        int readInt = m8073o0.readInt();
        m8073o0.recycle();
        return readInt;
    }

    @Override // p168r4.p20
    /* renamed from: d */
    public final int mo4481d() {
        Parcel m8073o0 = m8073o0(5, m8074j0());
        int readInt = m8073o0.readInt();
        m8073o0.recycle();
        return readInt;
    }

    @Override // p168r4.p20
    /* renamed from: e */
    public final double mo4480e() {
        Parcel m8073o0 = m8073o0(3, m8074j0());
        double readDouble = m8073o0.readDouble();
        m8073o0.recycle();
        return readDouble;
    }
}
