package p168r4;

import com.prineside.tdi2.Config;
import java.util.HashMap;
import p235z2.C7601t;
/* renamed from: r4.kq0 */
/* loaded from: classes2.dex */
public final class kq0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f26516a;

    /* renamed from: b */
    public final /* synthetic */ String f26517b;

    /* renamed from: d */
    public final /* synthetic */ long f26518d;

    /* renamed from: k */
    public final /* synthetic */ long f26519k;

    /* renamed from: p */
    public final /* synthetic */ long f26520p;

    /* renamed from: q */
    public final /* synthetic */ long f26521q;

    /* renamed from: r */
    public final /* synthetic */ long f26522r;

    /* renamed from: s */
    public final /* synthetic */ boolean f26523s;

    /* renamed from: t */
    public final /* synthetic */ int f26524t;

    /* renamed from: u */
    public final /* synthetic */ int f26525u;

    /* renamed from: v */
    public final /* synthetic */ qq0 f26526v;

    public kq0(qq0 qq0Var, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.f26526v = qq0Var;
        this.f26516a = str;
        this.f26517b = str2;
        this.f26518d = j;
        this.f26519k = j2;
        this.f26520p = j3;
        this.f26521q = j4;
        this.f26522r = j5;
        this.f26523s = z;
        this.f26524t = i;
        this.f26525u = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f26516a);
        hashMap.put("cachedSrc", this.f26517b);
        hashMap.put("bufferedDuration", Long.toString(this.f26518d));
        hashMap.put("totalDuration", Long.toString(this.f26519k));
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue()) {
            hashMap.put("qoeLoadedBytes", Long.toString(this.f26520p));
            hashMap.put("qoeCachedBytes", Long.toString(this.f26521q));
            hashMap.put("totalBytes", Long.toString(this.f26522r));
            hashMap.put("reportTime", Long.toString(C7601t.m932k().mo24763a()));
        }
        if (true != this.f26523s) {
            str = "0";
        } else {
            str = Config.SITE_API_VERSION;
        }
        hashMap.put("cacheReady", str);
        hashMap.put("playerCount", Integer.toString(this.f26524t));
        hashMap.put("playerPreparedCount", Integer.toString(this.f26525u));
        qq0.m7699s(this.f26526v, "onPrecacheEvent", hashMap);
    }
}
