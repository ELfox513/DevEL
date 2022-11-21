package p070g5;

import android.os.Bundle;
/* renamed from: g5.r3 */
/* loaded from: classes2.dex */
public final class C3801r3 {

    /* renamed from: a */
    public final String f16906a;

    /* renamed from: b */
    public final String f16907b;

    /* renamed from: c */
    public final long f16908c;

    /* renamed from: d */
    public final Bundle f16909d;

    public C3801r3(String str, String str2, Bundle bundle, long j) {
        this.f16906a = str;
        this.f16907b = str2;
        this.f16909d = bundle;
        this.f16908c = j;
    }

    /* renamed from: a */
    public final C3833u m18003a() {
        return new C3833u(this.f16906a, new C3809s(new Bundle(this.f16909d)), this.f16907b, this.f16908c);
    }

    public final String toString() {
        String str = this.f16907b;
        String str2 = this.f16906a;
        String valueOf = String.valueOf(this.f16909d);
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

    /* renamed from: b */
    public static C3801r3 m18002b(C3833u c3833u) {
        return new C3801r3(c3833u.f16970a, c3833u.f16972d, c3833u.f16971b.m17990Z0(), c3833u.f16973k);
    }
}
