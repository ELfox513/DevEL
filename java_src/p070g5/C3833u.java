package p070g5;

import android.os.Parcel;
import android.os.Parcelable;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
/* renamed from: g5.u */
/* loaded from: classes2.dex */
public final class C3833u extends AbstractC7408a {
    public static final Parcelable.Creator<C3833u> CREATOR = new C3845v();

    /* renamed from: a */
    public final String f16970a;

    /* renamed from: b */
    public final C3809s f16971b;

    /* renamed from: d */
    public final String f16972d;

    /* renamed from: k */
    public final long f16973k;

    public C3833u(C3833u c3833u, long j) {
        C7297q.m1883j(c3833u);
        this.f16970a = c3833u.f16970a;
        this.f16971b = c3833u.f16971b;
        this.f16972d = c3833u.f16972d;
        this.f16973k = j;
    }

    public final String toString() {
        String str = this.f16972d;
        String str2 = this.f16970a;
        String valueOf = String.valueOf(this.f16971b);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 21 + String.valueOf(str2).length() + valueOf.length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C3845v.m17932a(this, parcel, i);
    }

    public C3833u(String str, C3809s c3809s, String str2, long j) {
        this.f16970a = str;
        this.f16971b = c3809s;
        this.f16972d = str2;
        this.f16973k = j;
    }
}
