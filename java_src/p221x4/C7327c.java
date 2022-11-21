package p221x4;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: x4.c */
/* loaded from: classes2.dex */
public final class C7327c {

    /* renamed from: a */
    public static final ClassLoader f36814a = C7327c.class.getClassLoader();

    /* renamed from: a */
    public static boolean m1836a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static void m1835b(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: d */
    public static void m1833d(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: e */
    public static void m1832e(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: c */
    public static <T extends Parcelable> T m1834c(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }
}
