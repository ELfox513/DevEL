package p070g5;

import android.content.SharedPreferences;
import p220x3.C7297q;
/* renamed from: g5.e4 */
/* loaded from: classes2.dex */
public final class C3646e4 {

    /* renamed from: a */
    public final String f16445a;

    /* renamed from: b */
    public boolean f16446b;

    /* renamed from: c */
    public String f16447c;

    /* renamed from: d */
    public final /* synthetic */ C3670g4 f16448d;

    public C3646e4(C3670g4 c3670g4, String str, String str2) {
        this.f16448d = c3670g4;
        C7297q.m1887f(str);
        this.f16445a = str;
    }

    /* renamed from: a */
    public final String m18388a() {
        if (!this.f16446b) {
            this.f16446b = true;
            this.f16447c = this.f16448d.m18352j().getString(this.f16445a, null);
        }
        return this.f16447c;
    }

    /* renamed from: b */
    public final void m18387b(String str) {
        SharedPreferences.Editor edit = this.f16448d.m18352j().edit();
        edit.putString(this.f16445a, str);
        edit.apply();
        this.f16447c = str;
    }
}
