package p088i5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import java.util.List;
import p194u3.InterfaceC6909l;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: i5.h */
/* loaded from: classes2.dex */
public final class C4134h extends AbstractC7408a implements InterfaceC6909l {
    public static final Parcelable.Creator<C4134h> CREATOR = new C4135i();

    /* renamed from: a */
    public final List<String> f17744a;

    /* renamed from: b */
    public final String f17745b;

    public C4134h(List<String> list, String str) {
        this.f17744a = list;
        this.f17745b = str;
    }

    @Override // p194u3.InterfaceC6909l
    public final Status getStatus() {
        if (this.f17745b != null) {
            return Status.f7709q;
        }
        return Status.f7713u;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1471t(parcel, 1, this.f17744a, false);
        C7411c.m1473r(parcel, 2, this.f17745b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
