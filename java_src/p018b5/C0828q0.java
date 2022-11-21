package p018b5;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* renamed from: b5.q0 */
/* loaded from: classes2.dex */
public final class C0828q0 {

    /* renamed from: a */
    public static final ClassLoader f2162a = C0828q0.class.getClassLoader();

    /* renamed from: b */
    public static HashMap m25478b(Parcel parcel) {
        return parcel.readHashMap(f2162a);
    }

    /* renamed from: c */
    public static void m25477c(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: d */
    public static void m25476d(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: f */
    public static boolean m25474f(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: e */
    public static void m25475e(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m25479a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }
}
