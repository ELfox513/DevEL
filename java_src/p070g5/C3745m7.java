package p070g5;

import android.os.Build;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: g5.m7 */
/* loaded from: classes2.dex */
public final class C3745m7 extends AbstractC3863w5 {

    /* renamed from: c */
    public final SSLSocketFactory f16729c;

    @Override // p070g5.AbstractC3863w5
    /* renamed from: e */
    public final boolean mo17838e() {
        return false;
    }

    public C3745m7(C3611b5 c3611b5) {
        super(c3611b5);
        C3736la c3736la;
        if (Build.VERSION.SDK_INT < 19) {
            c3736la = new C3736la(HttpsURLConnection.getDefaultSSLSocketFactory());
        } else {
            c3736la = null;
        }
        this.f16729c = c3736la;
    }

    /* renamed from: j */
    public final HttpURLConnection m18063j(URL url) {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            SSLSocketFactory sSLSocketFactory = this.f16729c;
            if (sSLSocketFactory != null && (openConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) openConnection).setSSLSocketFactory(sSLSocketFactory);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            this.f17008a.m18513u();
            httpURLConnection.setConnectTimeout(60000);
            this.f17008a.m18513u();
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain HTTP connection");
    }
}
