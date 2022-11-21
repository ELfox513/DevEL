package p168r4;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.io.InputStream;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.qo */
/* loaded from: classes2.dex */
public final class C6177qo extends AbstractC7408a {
    public static final Parcelable.Creator<C6177qo> CREATOR = new C6214ro();

    /* renamed from: a */
    public ParcelFileDescriptor f30218a;

    /* renamed from: b */
    public final boolean f30219b;

    /* renamed from: d */
    public final boolean f30220d;

    /* renamed from: k */
    public final long f30221k;

    /* renamed from: p */
    public final boolean f30222p;

    public C6177qo() {
        this(null, false, false, 0L, false);
    }

    /* renamed from: X0 */
    public final synchronized InputStream m7771X0() {
        ParcelFileDescriptor parcelFileDescriptor = this.f30218a;
        if (parcelFileDescriptor == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        this.f30218a = null;
        return autoCloseInputStream;
    }

    /* renamed from: Y0 */
    public final synchronized ParcelFileDescriptor m7770Y0() {
        return this.f30218a;
    }

    /* renamed from: Z0 */
    public final synchronized long m7769Z0() {
        return this.f30221k;
    }

    /* renamed from: c */
    public final synchronized boolean m7768c() {
        return this.f30220d;
    }

    /* renamed from: e */
    public final synchronized boolean m7767e() {
        return this.f30219b;
    }

    /* renamed from: g */
    public final synchronized boolean m7766g() {
        return this.f30222p;
    }

    public final synchronized boolean zza() {
        return this.f30218a != null;
    }

    public C6177qo(ParcelFileDescriptor parcelFileDescriptor, boolean z, boolean z2, long j, boolean z3) {
        this.f30218a = parcelFileDescriptor;
        this.f30219b = z;
        this.f30220d = z2;
        this.f30221k = j;
        this.f30222p = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1474q(parcel, 2, m7770Y0(), i, false);
        C7411c.m1488c(parcel, 3, m7767e());
        C7411c.m1488c(parcel, 4, m7768c());
        C7411c.m1476o(parcel, 5, m7769Z0());
        C7411c.m1488c(parcel, 6, m7766g());
        C7411c.m1489b(parcel, m1490a);
    }
}
