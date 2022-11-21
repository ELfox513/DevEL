package p027c5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* renamed from: c5.e */
/* loaded from: classes2.dex */
public final class C1066e extends C1065d implements InterfaceC1064c {
    public C1066e(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: G5 */
    public final Bundle mo24705G5(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(10);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        C1067f.m24693b(m24707j0, bundle);
        C1067f.m24693b(m24707j0, bundle2);
        Parcel m24706o0 = m24706o0(901, m24707j0);
        Bundle bundle3 = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle3;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: K2 */
    public final Bundle mo24704K2(int i, String str, List<String> list, String str2, String str3, String str4) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(5);
        m24707j0.writeString(str);
        m24707j0.writeStringList(list);
        m24707j0.writeString(str2);
        m24707j0.writeString(str3);
        m24707j0.writeString(null);
        Parcel m24706o0 = m24706o0(7, m24707j0);
        Bundle bundle = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: R1 */
    public final Bundle mo24703R1(int i, String str, String str2, String str3) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(3);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        m24707j0.writeString(str3);
        Parcel m24706o0 = m24706o0(4, m24707j0);
        Bundle bundle = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: T6 */
    public final Bundle mo24702T6(int i, String str, String str2, Bundle bundle) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(9);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        C1067f.m24693b(m24707j0, bundle);
        Parcel m24706o0 = m24706o0(902, m24707j0);
        Bundle bundle2 = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle2;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: Y3 */
    public final Bundle mo24701Y3(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(9);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        m24707j0.writeString(str3);
        C1067f.m24693b(m24707j0, bundle);
        Parcel m24706o0 = m24706o0(11, m24707j0);
        Bundle bundle2 = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle2;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: Z3 */
    public final Bundle mo24700Z3(int i, String str, String str2, Bundle bundle) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(3);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        C1067f.m24693b(m24707j0, bundle);
        Parcel m24706o0 = m24706o0(2, m24707j0);
        Bundle bundle2 = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle2;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: d6 */
    public final Bundle mo24699d6(int i, String str, String str2, Bundle bundle) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(9);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        C1067f.m24693b(m24707j0, bundle);
        Parcel m24706o0 = m24706o0(12, m24707j0);
        Bundle bundle2 = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle2;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: d7 */
    public final Bundle mo24698d7(int i, String str, String str2, String str3, String str4, Bundle bundle) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(i);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        m24707j0.writeString(str3);
        m24707j0.writeString(str4);
        C1067f.m24693b(m24707j0, bundle);
        Parcel m24706o0 = m24706o0(8, m24707j0);
        Bundle bundle2 = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle2;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: k6 */
    public final Bundle mo24697k6(int i, String str, String str2, String str3, String str4) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(3);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        m24707j0.writeString(str3);
        m24707j0.writeString(null);
        Parcel m24706o0 = m24706o0(3, m24707j0);
        Bundle bundle = (Bundle) C1067f.m24694a(m24706o0, Bundle.CREATOR);
        m24706o0.recycle();
        return bundle;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: n1 */
    public final int mo24696n1(int i, String str, String str2) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(i);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        Parcel m24706o0 = m24706o0(1, m24707j0);
        int readInt = m24706o0.readInt();
        m24706o0.recycle();
        return readInt;
    }

    @Override // p027c5.InterfaceC1064c
    /* renamed from: n3 */
    public final int mo24695n3(int i, String str, String str2) {
        Parcel m24707j0 = m24707j0();
        m24707j0.writeInt(3);
        m24707j0.writeString(str);
        m24707j0.writeString(str2);
        Parcel m24706o0 = m24706o0(5, m24707j0);
        int readInt = m24706o0.readInt();
        m24706o0.recycle();
        return readInt;
    }
}
