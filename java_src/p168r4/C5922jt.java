package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.jt */
/* loaded from: classes2.dex */
public final class C5922jt extends AbstractC7408a {
    public static final Parcelable.Creator<C5922jt> CREATOR = new C5959kt();

    /* renamed from: a */
    public final String f26139a;

    /* renamed from: b */
    public final String f26140b;

    public C5922jt(String str, String str2) {
        this.f26139a = str;
        this.f26140b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f26139a, false);
        C7411c.m1473r(parcel, 2, this.f26140b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
