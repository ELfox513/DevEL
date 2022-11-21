package p168r4;

import com.prineside.tdi2.Config;
import java.util.HashMap;
/* renamed from: r4.lq0 */
/* loaded from: classes2.dex */
public final class lq0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f27316a;

    /* renamed from: b */
    public final /* synthetic */ String f27317b;

    /* renamed from: d */
    public final /* synthetic */ int f27318d;

    /* renamed from: k */
    public final /* synthetic */ int f27319k;

    /* renamed from: p */
    public final /* synthetic */ long f27320p;

    /* renamed from: q */
    public final /* synthetic */ long f27321q;

    /* renamed from: r */
    public final /* synthetic */ boolean f27322r;

    /* renamed from: s */
    public final /* synthetic */ int f27323s;

    /* renamed from: t */
    public final /* synthetic */ int f27324t;

    /* renamed from: u */
    public final /* synthetic */ qq0 f27325u;

    public lq0(qq0 qq0Var, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f27325u = qq0Var;
        this.f27316a = str;
        this.f27317b = str2;
        this.f27318d = i;
        this.f27319k = i2;
        this.f27320p = j;
        this.f27321q = j2;
        this.f27322r = z;
        this.f27323s = i3;
        this.f27324t = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f27316a);
        hashMap.put("cachedSrc", this.f27317b);
        hashMap.put("bytesLoaded", Integer.toString(this.f27318d));
        hashMap.put("totalBytes", Integer.toString(this.f27319k));
        hashMap.put("bufferedDuration", Long.toString(this.f27320p));
        hashMap.put("totalDuration", Long.toString(this.f27321q));
        if (true != this.f27322r) {
            str = "0";
        } else {
            str = Config.SITE_API_VERSION;
        }
        hashMap.put("cacheReady", str);
        hashMap.put("playerCount", Integer.toString(this.f27323s));
        hashMap.put("playerPreparedCount", Integer.toString(this.f27324t));
        qq0.m7699s(this.f27325u, "onPrecacheEvent", hashMap);
    }
}
