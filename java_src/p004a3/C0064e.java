package p004a3;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: a3.e */
/* loaded from: classes.dex */
public final class C0064e extends AbstractC7408a {
    public static final Parcelable.Creator<C0064e> CREATOR = new C0063d();

    /* renamed from: a */
    public final String f100a;

    /* renamed from: b */
    public final String f101b;

    /* renamed from: d */
    public final String f102d;

    /* renamed from: k */
    public final String f103k;

    /* renamed from: p */
    public final String f104p;

    /* renamed from: q */
    public final String f105q;

    /* renamed from: r */
    public final String f106r;

    /* renamed from: s */
    public final Intent f107s;

    /* renamed from: t */
    public final InterfaceC0081v f108t;

    /* renamed from: u */
    public final boolean f109u;

    public C0064e(Intent intent, InterfaceC0081v interfaceC0081v) {
        this(null, null, null, null, null, null, null, intent, BinderC3514b.m18741L0(interfaceC0081v).asBinder(), false);
    }

    public C0064e(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent, IBinder iBinder, boolean z) {
        this.f100a = str;
        this.f101b = str2;
        this.f102d = str3;
        this.f103k = str4;
        this.f104p = str5;
        this.f105q = str6;
        this.f106r = str7;
        this.f107s = intent;
        this.f108t = (InterfaceC0081v) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder));
        this.f109u = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f100a, false);
        C7411c.m1473r(parcel, 3, this.f101b, false);
        C7411c.m1473r(parcel, 4, this.f102d, false);
        C7411c.m1473r(parcel, 5, this.f103k, false);
        C7411c.m1473r(parcel, 6, this.f104p, false);
        C7411c.m1473r(parcel, 7, this.f105q, false);
        C7411c.m1473r(parcel, 8, this.f106r, false);
        C7411c.m1474q(parcel, 9, this.f107s, i, false);
        C7411c.m1480k(parcel, 10, BinderC3514b.m18741L0(this.f108t).asBinder(), false);
        C7411c.m1488c(parcel, 11, this.f109u);
        C7411c.m1489b(parcel, m1490a);
    }

    public C0064e(String str, String str2, String str3, String str4, String str5, String str6, String str7, InterfaceC0081v interfaceC0081v) {
        this(str, str2, str3, str4, str5, str6, str7, null, BinderC3514b.m18741L0(interfaceC0081v).asBinder(), false);
    }
}
