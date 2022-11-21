package p070g5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: g5.s */
/* loaded from: classes2.dex */
public final class C3809s extends AbstractC7408a implements Iterable<String> {
    public static final Parcelable.Creator<C3809s> CREATOR = new C3821t();

    /* renamed from: a */
    public final Bundle f16924a;

    public C3809s(Bundle bundle) {
        this.f16924a = bundle;
    }

    /* renamed from: X0 */
    public final int m17992X0() {
        return this.f16924a.size();
    }

    /* renamed from: Z0 */
    public final Bundle m17990Z0() {
        return new Bundle(this.f16924a);
    }

    /* renamed from: a1 */
    public final Double m17989a1(String str) {
        return Double.valueOf(this.f16924a.getDouble("value"));
    }

    /* renamed from: b1 */
    public final Long m17988b1(String str) {
        return Long.valueOf(this.f16924a.getLong("value"));
    }

    /* renamed from: c1 */
    public final Object m17987c1(String str) {
        return this.f16924a.get(str);
    }

    /* renamed from: d1 */
    public final String m17986d1(String str) {
        return this.f16924a.getString(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new C3797r(this);
    }

    public final String toString() {
        return this.f16924a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1485f(parcel, 2, m17990Z0(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}
