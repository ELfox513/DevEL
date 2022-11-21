package p088i5;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import p194u3.InterfaceC6909l;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: i5.b */
/* loaded from: classes2.dex */
public final class C4128b extends AbstractC7408a implements InterfaceC6909l {
    public static final Parcelable.Creator<C4128b> CREATOR = new C4129c();

    /* renamed from: a */
    public final int f17741a;

    /* renamed from: b */
    public int f17742b;

    /* renamed from: d */
    public Intent f17743d;

    public C4128b() {
        this(2, 0, null);
    }

    public C4128b(int i, int i2, Intent intent) {
        this.f17741a = i;
        this.f17742b = i2;
        this.f17743d = intent;
    }

    @Override // p194u3.InterfaceC6909l
    public final Status getStatus() {
        if (this.f17742b == 0) {
            return Status.f7709q;
        }
        return Status.f7713u;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f17741a);
        C7411c.m1479l(parcel, 2, this.f17742b);
        C7411c.m1474q(parcel, 3, this.f17743d, i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
