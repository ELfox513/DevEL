package p070g5;

import android.os.Bundle;
/* renamed from: g5.n6 */
/* loaded from: classes2.dex */
public final class RunnableC3756n6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f16759a;

    /* renamed from: b */
    public final /* synthetic */ String f16760b;

    /* renamed from: d */
    public final /* synthetic */ long f16761d;

    /* renamed from: k */
    public final /* synthetic */ Bundle f16762k;

    /* renamed from: p */
    public final /* synthetic */ boolean f16763p;

    /* renamed from: q */
    public final /* synthetic */ boolean f16764q;

    /* renamed from: r */
    public final /* synthetic */ boolean f16765r;

    /* renamed from: s */
    public final /* synthetic */ String f16766s;

    /* renamed from: t */
    public final /* synthetic */ C3697i7 f16767t;

    public RunnableC3756n6(C3697i7 c3697i7, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f16767t = c3697i7;
        this.f16759a = str;
        this.f16760b = str2;
        this.f16761d = j;
        this.f16762k = bundle;
        this.f16763p = z;
        this.f16764q = z2;
        this.f16765r = z3;
        this.f16766s = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16767t.m18214r(this.f16759a, this.f16760b, this.f16761d, this.f16762k, this.f16763p, this.f16764q, this.f16765r, this.f16766s);
    }
}
