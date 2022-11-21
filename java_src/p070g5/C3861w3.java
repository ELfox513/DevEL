package p070g5;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: g5.w3 */
/* loaded from: classes2.dex */
public final class C3861w3 extends AbstractC3807r9 {

    /* renamed from: d */
    public final SSLSocketFactory f17023d;

    @Override // p070g5.AbstractC3807r9
    /* renamed from: g */
    public final boolean mo17810g() {
        return false;
    }

    public C3861w3(C3616ba c3616ba) {
        super(c3616ba);
        C3736la c3736la;
        if (Build.VERSION.SDK_INT < 19) {
            c3736la = new C3736la(HttpsURLConnection.getDefaultSSLSocketFactory());
        } else {
            c3736la = null;
        }
        this.f17023d = c3736la;
    }

    /* renamed from: h */
    public final HttpURLConnection m17925h(URL url) {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            SSLSocketFactory sSLSocketFactory = this.f17023d;
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

    /* renamed from: i */
    public final boolean m17924i() {
        m18000d();
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f17008a.mo17856O().getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        return false;
    }
}
