package p070g5;

import android.content.SharedPreferences;
import p220x3.C7297q;
/* renamed from: g5.z3 */
/* loaded from: classes2.dex */
public final class C3897z3 {

    /* renamed from: a */
    public final String f17124a;

    /* renamed from: b */
    public final boolean f17125b;

    /* renamed from: c */
    public boolean f17126c;

    /* renamed from: d */
    public boolean f17127d;

    /* renamed from: e */
    public final /* synthetic */ C3670g4 f17128e;

    public C3897z3(C3670g4 c3670g4, String str, boolean z) {
        this.f17128e = c3670g4;
        C7297q.m1887f(str);
        this.f17124a = str;
        this.f17125b = z;
    }

    /* renamed from: b */
    public final boolean m17813b() {
        if (!this.f17126c) {
            this.f17126c = true;
            this.f17127d = this.f17128e.m18352j().getBoolean(this.f17124a, this.f17125b);
        }
        return this.f17127d;
    }

    /* renamed from: a */
    public final void m17814a(boolean z) {
        SharedPreferences.Editor edit = this.f17128e.m18352j().edit();
        edit.putBoolean(this.f17124a, z);
        edit.apply();
        this.f17127d = z;
    }
}
