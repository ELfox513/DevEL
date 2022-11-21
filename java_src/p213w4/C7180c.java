package p213w4;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: w4.c */
/* loaded from: classes2.dex */
public final class C7180c {

    /* renamed from: a */
    public static final ClassLoader f36464a = C7180c.class.getClassLoader();

    /* renamed from: b */
    public static void m2221b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: c */
    public static void m2220c(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m2222a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }
}
