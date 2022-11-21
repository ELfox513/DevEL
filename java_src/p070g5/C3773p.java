package p070g5;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
import p220x3.C7297q;
/* renamed from: g5.p */
/* loaded from: classes2.dex */
public final class C3773p {

    /* renamed from: a */
    public final String f16807a;

    /* renamed from: b */
    public final String f16808b;

    /* renamed from: c */
    public final String f16809c;

    /* renamed from: d */
    public final long f16810d;

    /* renamed from: e */
    public final long f16811e;

    /* renamed from: f */
    public final C3809s f16812f;

    public C3773p(C3611b5 c3611b5, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        C3809s c3809s;
        C7297q.m1887f(str2);
        C7297q.m1887f(str3);
        this.f16807a = str2;
        this.f16808b = str3;
        this.f16809c = true == TextUtils.isEmpty(str) ? null : str;
        this.f16810d = j;
        this.f16811e = j2;
        if (j2 != 0 && j2 > j) {
            c3611b5.mo17858F().m18013r().m18041b("Event created with reverse previous/current timestamps. appId", C3789q3.m18010u(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String str4 = (String) it.next();
                if (str4 == null) {
                    c3611b5.mo17858F().m18018m().m18042a("Param name can't be null");
                    it.remove();
                } else {
                    Object m18175j = c3611b5.m18538K().m18175j(str4, bundle2.get(str4));
                    if (m18175j == null) {
                        c3611b5.mo17858F().m18013r().m18041b("Param value can't be null", c3611b5.m18509y().m18072e(str4));
                        it.remove();
                    } else {
                        c3611b5.m18538K().m18149w(bundle2, str4, m18175j);
                    }
                }
            }
            c3809s = new C3809s(bundle2);
        } else {
            c3809s = new C3809s(new Bundle());
        }
        this.f16812f = c3809s;
    }

    /* renamed from: a */
    public final C3773p m18034a(C3611b5 c3611b5, long j) {
        return new C3773p(c3611b5, this.f16809c, this.f16807a, this.f16808b, this.f16810d, j, this.f16812f);
    }

    public final String toString() {
        String str = this.f16807a;
        String str2 = this.f16808b;
        String valueOf = String.valueOf(this.f16812f);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 33 + String.valueOf(str2).length() + valueOf.length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }

    public C3773p(C3611b5 c3611b5, String str, String str2, String str3, long j, long j2, C3809s c3809s) {
        C7297q.m1887f(str2);
        C7297q.m1887f(str3);
        C7297q.m1883j(c3809s);
        this.f16807a = str2;
        this.f16808b = str3;
        this.f16809c = true == TextUtils.isEmpty(str) ? null : str;
        this.f16810d = j;
        this.f16811e = j2;
        if (j2 != 0 && j2 > j) {
            c3611b5.mo17858F().m18013r().m18040c("Event created with reverse previous/current timestamps. appId, name", C3789q3.m18010u(str2), C3789q3.m18010u(str3));
        }
        this.f16812f = c3809s;
    }
}
