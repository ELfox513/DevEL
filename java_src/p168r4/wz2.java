package p168r4;

import java.net.HttpURLConnection;
/* renamed from: r4.wz2 */
/* loaded from: classes2.dex */
public final class wz2 extends pz2 {

    /* renamed from: a */
    public m13<Integer> f33382a;

    /* renamed from: b */
    public m13<Integer> f33383b;

    /* renamed from: d */
    public vz2 f33384d;

    /* renamed from: k */
    public HttpURLConnection f33385k;

    public wz2() {
        m13<Integer> m13Var = rz2.f31183a;
        m13<Integer> m13Var2 = sz2.f31599a;
        this.f33382a = m13Var;
        this.f33383b = m13Var2;
        this.f33384d = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        HttpURLConnection httpURLConnection = this.f33385k;
        qz2.m7638b();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    /* renamed from: d */
    public final HttpURLConnection m5535d(vz2 vz2Var, int i, int i2) {
        this.f33382a = new m13(265) { // from class: r4.tz2
            @Override // p168r4.m13
            public final Object zza() {
                return 265;
            }
        };
        this.f33383b = new m13(-1) { // from class: r4.uz2
            @Override // p168r4.m13
            public final Object zza() {
                return -1;
            }
        };
        this.f33384d = vz2Var;
        qz2.m7639a(this.f33382a.zza().intValue(), this.f33383b.zza().intValue());
        vz2 vz2Var2 = this.f33384d;
        vz2Var2.getClass();
        HttpURLConnection httpURLConnection = (HttpURLConnection) vz2Var2.zza();
        this.f33385k = httpURLConnection;
        return httpURLConnection;
    }
}
