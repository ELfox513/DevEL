package p070g5;

import android.os.Parcel;
import android.os.Parcelable;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
/* renamed from: g5.ea */
/* loaded from: classes2.dex */
public final class C3652ea extends AbstractC7408a {
    public static final Parcelable.Creator<C3652ea> CREATOR = new C3664fa();

    /* renamed from: a */
    public final int f16462a;

    /* renamed from: b */
    public final String f16463b;

    /* renamed from: d */
    public final long f16464d;

    /* renamed from: k */
    public final Long f16465k;

    /* renamed from: p */
    public final String f16466p;

    /* renamed from: q */
    public final String f16467q;

    /* renamed from: r */
    public final Double f16468r;

    public C3652ea(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        this.f16462a = i;
        this.f16463b = str;
        this.f16464d = j;
        this.f16465k = l;
        if (i == 1) {
            this.f16468r = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.f16468r = d;
        }
        this.f16466p = str2;
        this.f16467q = str3;
    }

    /* renamed from: X0 */
    public final Object m18386X0() {
        Long l = this.f16465k;
        if (l != null) {
            return l;
        }
        Double d = this.f16468r;
        if (d != null) {
            return d;
        }
        String str = this.f16466p;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C3664fa.m18380a(this, parcel, i);
    }

    public C3652ea(C3676ga c3676ga) {
        this(c3676ga.f16560c, c3676ga.f16561d, c3676ga.f16562e, c3676ga.f16559b);
    }

    public C3652ea(String str, long j, Object obj, String str2) {
        C7297q.m1887f(str);
        this.f16462a = 2;
        this.f16463b = str;
        this.f16464d = j;
        this.f16467q = str2;
        if (obj == null) {
            this.f16465k = null;
            this.f16468r = null;
            this.f16466p = null;
        } else if (obj instanceof Long) {
            this.f16465k = (Long) obj;
            this.f16468r = null;
            this.f16466p = null;
        } else if (obj instanceof String) {
            this.f16465k = null;
            this.f16468r = null;
            this.f16466p = (String) obj;
        } else if (obj instanceof Double) {
            this.f16465k = null;
            this.f16468r = (Double) obj;
            this.f16466p = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
