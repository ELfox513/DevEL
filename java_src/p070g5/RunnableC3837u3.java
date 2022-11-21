package p070g5;

import java.util.List;
import java.util.Map;
import p220x3.C7297q;
/* renamed from: g5.u3 */
/* loaded from: classes2.dex */
public final class RunnableC3837u3 implements Runnable {

    /* renamed from: a */
    public final InterfaceC3813s3 f16977a;

    /* renamed from: b */
    public final int f16978b;

    /* renamed from: d */
    public final Throwable f16979d;

    /* renamed from: k */
    public final byte[] f16980k;

    /* renamed from: p */
    public final String f16981p;

    /* renamed from: q */
    public final Map<String, List<String>> f16982q;

    public /* synthetic */ RunnableC3837u3(String str, InterfaceC3813s3 interfaceC3813s3, int i, Throwable th, byte[] bArr, Map map, C3825t3 c3825t3) {
        C7297q.m1883j(interfaceC3813s3);
        this.f16977a = interfaceC3813s3;
        this.f16978b = i;
        this.f16979d = th;
        this.f16980k = bArr;
        this.f16981p = str;
        this.f16982q = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16977a.mo17927a(this.f16981p, this.f16978b, this.f16979d, this.f16980k, this.f16982q);
    }
}
