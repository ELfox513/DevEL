package p070g5;

import android.content.SharedPreferences;
import android.util.Pair;
import p220x3.C7297q;
/* renamed from: g5.d4 */
/* loaded from: classes2.dex */
public final class C3634d4 {

    /* renamed from: a */
    public final String f16424a;

    /* renamed from: b */
    public final String f16425b;

    /* renamed from: c */
    public final String f16426c;

    /* renamed from: d */
    public final long f16427d;

    /* renamed from: e */
    public final /* synthetic */ C3670g4 f16428e;

    /* renamed from: c */
    public final long m18421c() {
        return this.f16428e.m18352j().getLong(this.f16424a, 0L);
    }

    public /* synthetic */ C3634d4(C3670g4 c3670g4, String str, long j, C3622c4 c3622c4) {
        boolean z;
        this.f16428e = c3670g4;
        C7297q.m1887f("health_monitor");
        if (j > 0) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1892a(z);
        this.f16424a = "health_monitor:start";
        this.f16425b = "health_monitor:count";
        this.f16426c = "health_monitor:value";
        this.f16427d = j;
    }

    /* renamed from: a */
    public final Pair<String, Long> m18423a() {
        long abs;
        this.f16428e.mo17839c();
        this.f16428e.mo17839c();
        long m18421c = m18421c();
        if (m18421c == 0) {
            m18420d();
            abs = 0;
        } else {
            abs = Math.abs(m18421c - this.f16428e.f17008a.mo17854Q().mo24763a());
        }
        long j = this.f16427d;
        if (abs < j) {
            return null;
        }
        if (abs > j + j) {
            m18420d();
            return null;
        }
        String string = this.f16428e.m18352j().getString(this.f16426c, null);
        long j2 = this.f16428e.m18352j().getLong(this.f16425b, 0L);
        m18420d();
        if (string != null && j2 > 0) {
            return new Pair<>(string, Long.valueOf(j2));
        }
        return C3670g4.f16495x;
    }

    /* renamed from: b */
    public final void m18422b(String str, long j) {
        this.f16428e.mo17839c();
        if (m18421c() == 0) {
            m18420d();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.f16428e.m18352j().getLong(this.f16425b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f16428e.m18352j().edit();
            edit.putString(this.f16426c, str);
            edit.putLong(this.f16425b, 1L);
            edit.apply();
            return;
        }
        long nextLong = this.f16428e.f17008a.m18538K().m18165o().nextLong();
        long j3 = j2 + 1;
        SharedPreferences.Editor edit2 = this.f16428e.m18352j().edit();
        if ((nextLong & Long.MAX_VALUE) < Long.MAX_VALUE / j3) {
            edit2.putString(this.f16426c, str);
        }
        edit2.putLong(this.f16425b, j3);
        edit2.apply();
    }

    /* renamed from: d */
    public final void m18420d() {
        this.f16428e.mo17839c();
        long mo24763a = this.f16428e.f17008a.mo17854Q().mo24763a();
        SharedPreferences.Editor edit = this.f16428e.m18352j().edit();
        edit.remove(this.f16425b);
        edit.remove(this.f16426c);
        edit.putLong(this.f16424a, mo24763a);
        edit.apply();
    }
}
