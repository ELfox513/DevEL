package p167r3;

import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import p005a4.C0086a;
import p194u3.AbstractC6904h;
import p194u3.C6906i;
import p203v3.C7038p;
import p220x3.C7297q;
/* renamed from: r3.g */
/* loaded from: classes.dex */
public final class RunnableC5540g implements Runnable {

    /* renamed from: d */
    public static final C0086a f20306d = new C0086a("RevokeAccessOperation", new String[0]);

    /* renamed from: a */
    public final String f20307a;

    /* renamed from: b */
    public final C7038p f20308b = new C7038p(null);

    /* renamed from: a */
    public static AbstractC6904h<Status> m13089a(String str) {
        if (str == null) {
            return C6906i.m3037a(new Status(4), null);
        }
        RunnableC5540g runnableC5540g = new RunnableC5540g(str);
        new Thread(runnableC5540g).start();
        return runnableC5540g.f20308b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        String str2;
        String str3;
        Status status = Status.f7711s;
        try {
            String valueOf = String.valueOf(this.f20307a);
            if (valueOf.length() != 0) {
                str3 = "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf);
            } else {
                str3 = new String("https://accounts.google.com/o/oauth2/revoke?token=");
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str3).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f7709q;
            } else {
                f20306d.m27685b("Unable to revoke access!", new Object[0]);
            }
            C0086a c0086a = f20306d;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Response Code: ");
            sb.append(responseCode);
            c0086a.m27686a(sb.toString(), new Object[0]);
        } catch (IOException e) {
            C0086a c0086a2 = f20306d;
            String valueOf2 = String.valueOf(e.toString());
            if (valueOf2.length() != 0) {
                str2 = "IOException when revoking access: ".concat(valueOf2);
            } else {
                str2 = new String("IOException when revoking access: ");
            }
            c0086a2.m27685b(str2, new Object[0]);
        } catch (Exception e2) {
            C0086a c0086a3 = f20306d;
            String valueOf3 = String.valueOf(e2.toString());
            if (valueOf3.length() != 0) {
                str = "Exception when revoking access: ".concat(valueOf3);
            } else {
                str = new String("Exception when revoking access: ");
            }
            c0086a3.m27685b(str, new Object[0]);
        }
        this.f20308b.m23029h(status);
    }

    public RunnableC5540g(String str) {
        this.f20307a = C7297q.m1887f(str);
    }
}
