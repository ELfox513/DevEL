package p168r4;

import java.util.HashMap;
/* renamed from: r4.jq0 */
/* loaded from: classes2.dex */
public final class jq0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f26094a;

    /* renamed from: b */
    public final /* synthetic */ String f26095b;

    /* renamed from: d */
    public final /* synthetic */ int f26096d;

    /* renamed from: k */
    public final /* synthetic */ int f26097k;

    /* renamed from: p */
    public final /* synthetic */ qq0 f26098p;

    public jq0(qq0 qq0Var, String str, String str2, int i, int i2, boolean z) {
        this.f26098p = qq0Var;
        this.f26094a = str;
        this.f26095b = str2;
        this.f26096d = i;
        this.f26097k = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f26094a);
        hashMap.put("cachedSrc", this.f26095b);
        hashMap.put("bytesLoaded", Integer.toString(this.f26096d));
        hashMap.put("totalBytes", Integer.toString(this.f26097k));
        hashMap.put("cacheReady", "0");
        qq0.m7699s(this.f26098p, "onPrecacheEvent", hashMap);
    }
}
