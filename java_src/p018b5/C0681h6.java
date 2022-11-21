package p018b5;

import android.net.Uri;
import p145p.C5270a;
/* renamed from: b5.h6 */
/* loaded from: classes2.dex */
public final class C0681h6 {

    /* renamed from: a */
    public static final C5270a<String, Uri> f1845a = new C5270a<>();

    /* renamed from: a */
    public static synchronized Uri m25870a(String str) {
        Uri uri;
        String str2;
        synchronized (C0681h6.class) {
            C5270a<String, Uri> c5270a = f1845a;
            uri = c5270a.get("com.google.android.gms.measurement");
            if (uri == null) {
                String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                if (valueOf.length() != 0) {
                    str2 = "content://com.google.android.gms.phenotype/".concat(valueOf);
                } else {
                    str2 = new String("content://com.google.android.gms.phenotype/");
                }
                uri = Uri.parse(str2);
                c5270a.put("com.google.android.gms.measurement", uri);
            }
        }
        return uri;
    }
}
