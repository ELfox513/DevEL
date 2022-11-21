package p070g5;

import android.content.SharedPreferences;
import p220x3.C7297q;
/* renamed from: g5.b4 */
/* loaded from: classes2.dex */
public final class C3610b4 {

    /* renamed from: a */
    public final String f16230a;

    /* renamed from: b */
    public final long f16231b;

    /* renamed from: c */
    public boolean f16232c;

    /* renamed from: d */
    public long f16233d;

    /* renamed from: e */
    public final /* synthetic */ C3670g4 f16234e;

    public C3610b4(C3670g4 c3670g4, String str, long j) {
        this.f16234e = c3670g4;
        C7297q.m1887f(str);
        this.f16230a = str;
        this.f16231b = j;
    }

    /* renamed from: a */
    public final long m18548a() {
        if (!this.f16232c) {
            this.f16232c = true;
            this.f16233d = this.f16234e.m18352j().getLong(this.f16230a, this.f16231b);
        }
        return this.f16233d;
    }

    /* renamed from: b */
    public final void m18547b(long j) {
        SharedPreferences.Editor edit = this.f16234e.m18352j().edit();
        edit.putLong(this.f16230a, j);
        edit.apply();
        this.f16233d = j;
    }
}
