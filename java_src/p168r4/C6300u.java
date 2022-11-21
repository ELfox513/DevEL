package p168r4;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
/* renamed from: r4.u */
/* loaded from: classes2.dex */
public final class C6300u {

    /* renamed from: d */
    public static final String[] f32095d = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: a */
    public final String f32096a = "ad.doubleclick.net";

    /* renamed from: b */
    public final String[] f32097b = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* renamed from: c */
    public final InterfaceC6152q f32098c;

    @Deprecated
    public C6300u(InterfaceC6152q interfaceC6152q) {
        this.f32098c = interfaceC6152q;
    }

    @Deprecated
    /* renamed from: b */
    public final InterfaceC6152q m6683b() {
        return this.f32098c;
    }

    @Deprecated
    /* renamed from: d */
    public final void m6681d(MotionEvent motionEvent) {
        this.f32098c.mo1014g(motionEvent);
    }

    @Deprecated
    /* renamed from: c */
    public final Uri m6682c(Uri uri, Context context) {
        return m6678g(uri, this.f32098c.mo1020a(context));
    }

    @Deprecated
    /* renamed from: e */
    public final Uri m6680e(Uri uri, Context context, View view, Activity activity) {
        try {
            return m6678g(uri, this.f32098c.mo1016e(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new C6337v("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: g */
    public final Uri m6678g(Uri uri, String str) {
        uri.getClass();
        try {
            try {
                if (uri.getHost().equals(this.f32096a)) {
                    if (!uri.toString().contains("dc_ms=")) {
                        String uri2 = uri.toString();
                        int indexOf = uri2.indexOf(";adurl");
                        if (indexOf != -1) {
                            int i = indexOf + 1;
                            return Uri.parse(uri2.substring(0, i) + "dc_ms=" + str + ";" + uri2.substring(i));
                        }
                        String encodedPath = uri.getEncodedPath();
                        int indexOf2 = uri2.indexOf(encodedPath);
                        return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ";dc_ms=" + str + ";" + uri2.substring(indexOf2 + encodedPath.length()));
                    }
                    throw new C6337v("Parameter already exists: dc_ms");
                }
            } catch (UnsupportedOperationException unused) {
                throw new C6337v("Provided Uri is not in a valid state");
            }
        } catch (NullPointerException unused2) {
        }
        if (uri.getQueryParameter("ms") == null) {
            String uri3 = uri.toString();
            int indexOf3 = uri3.indexOf("&adurl");
            if (indexOf3 == -1) {
                indexOf3 = uri3.indexOf("?adurl");
            }
            if (indexOf3 != -1) {
                int i2 = indexOf3 + 1;
                return Uri.parse(uri3.substring(0, i2) + "ms=" + str + "&" + uri3.substring(i2));
            }
            return uri.buildUpon().appendQueryParameter("ms", str).build();
        }
        throw new C6337v("Query parameter already exists: ms");
    }

    /* renamed from: a */
    public final boolean m6684a(Uri uri) {
        uri.getClass();
        try {
            String host = uri.getHost();
            String[] strArr = this.f32097b;
            for (int i = 0; i < 3; i++) {
                if (host.endsWith(strArr[i])) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    /* renamed from: f */
    public final boolean m6679f(Uri uri) {
        if (m6684a(uri)) {
            String[] strArr = f32095d;
            for (int i = 0; i < 3; i++) {
                if (uri.getPath().endsWith(strArr[i])) {
                    return true;
                }
            }
        }
        return false;
    }
}
