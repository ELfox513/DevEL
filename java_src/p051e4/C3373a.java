package p051e4;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: e4.a */
/* loaded from: classes.dex */
public class C3373a extends AbstractC7408a {
    public static final Parcelable.Creator<C3373a> CREATOR = new C3374b();

    /* renamed from: a */
    public final ParcelFileDescriptor f15743a;

    /* renamed from: b */
    public final int f15744b;

    /* renamed from: d */
    public final int f15745d;

    /* renamed from: k */
    public final DriveId f15746k;

    /* renamed from: p */
    public final boolean f15747p;

    /* renamed from: q */
    public final String f15748q;

    public C3373a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, DriveId driveId, boolean z, String str) {
        this.f15743a = parcelFileDescriptor;
        this.f15744b = i;
        this.f15745d = i2;
        this.f15746k = driveId;
        this.f15747p = z;
        this.f15748q = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1474q(parcel, 2, this.f15743a, i, false);
        C7411c.m1479l(parcel, 3, this.f15744b);
        C7411c.m1479l(parcel, 4, this.f15745d);
        C7411c.m1474q(parcel, 5, this.f15746k, i, false);
        C7411c.m1488c(parcel, 7, this.f15747p);
        C7411c.m1473r(parcel, 8, this.f15748q, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
