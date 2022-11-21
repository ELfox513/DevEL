package p099j7;

import java.net.URL;
import java.net.URLConnection;
/* renamed from: j7.j */
/* loaded from: classes2.dex */
public class C4384j {

    /* renamed from: a */
    public final URL f18296a;

    /* renamed from: a */
    public URLConnection m16725a() {
        return this.f18296a.openConnection();
    }

    public String toString() {
        return this.f18296a.toString();
    }

    public C4384j(URL url) {
        this.f18296a = url;
    }
}
