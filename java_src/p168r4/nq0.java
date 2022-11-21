package p168r4;

import java.util.HashMap;
/* renamed from: r4.nq0 */
/* loaded from: classes2.dex */
public final class nq0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f28448a;

    /* renamed from: b */
    public final /* synthetic */ String f28449b;

    /* renamed from: d */
    public final /* synthetic */ long f28450d;

    /* renamed from: k */
    public final /* synthetic */ qq0 f28451k;

    public nq0(qq0 qq0Var, String str, String str2, long j) {
        this.f28451k = qq0Var;
        this.f28448a = str;
        this.f28449b = str2;
        this.f28450d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f28448a);
        hashMap.put("cachedSrc", this.f28449b);
        hashMap.put("totalDuration", Long.toString(this.f28450d));
        qq0.m7699s(this.f28451k, "onPrecacheEvent", hashMap);
    }
}
