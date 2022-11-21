package p168r4;

import java.util.HashMap;
/* renamed from: r4.mq0 */
/* loaded from: classes2.dex */
public final class mq0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f27850a;

    /* renamed from: b */
    public final /* synthetic */ String f27851b;

    /* renamed from: d */
    public final /* synthetic */ int f27852d;

    /* renamed from: k */
    public final /* synthetic */ qq0 f27853k;

    public mq0(qq0 qq0Var, String str, String str2, int i) {
        this.f27853k = qq0Var;
        this.f27850a = str;
        this.f27851b = str2;
        this.f27852d = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f27850a);
        hashMap.put("cachedSrc", this.f27851b);
        hashMap.put("totalBytes", Integer.toString(this.f27852d));
        qq0.m7699s(this.f27853k, "onPrecacheEvent", hashMap);
    }
}
