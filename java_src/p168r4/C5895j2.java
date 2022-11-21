package p168r4;

import android.content.Context;
import android.content.p009pm.ApkChecksum;
import android.content.p009pm.PackageManager$OnChecksumsReadyListener;
import android.os.Build;
import java.security.cert.Certificate;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: r4.j2 */
/* loaded from: classes2.dex */
public final class C5895j2 {
    /* renamed from: a */
    public static String m10435a(Context context, String str, List<Certificate> list, Executor executor) {
        if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
            return null;
        }
        final p83 m8451E = p83.m8451E();
        context.getPackageManager().requestChecksums(str, false, 8, list, new PackageManager$OnChecksumsReadyListener(m8451E) { // from class: r4.h2

            /* renamed from: a */
            public final p83 f24408a;

            {
                this.f24408a = m8451E;
            }

            public final void onChecksumsReady(List list2) {
                p83 p83Var = this.f24408a;
                if (list2 == null) {
                    p83Var.mo8450u(null);
                    return;
                }
                try {
                    int size = list2.size();
                    for (int i = 0; i < size; i++) {
                        ApkChecksum apkChecksum = (ApkChecksum) list2.get(i);
                        if (apkChecksum.getType() == 8) {
                            p83Var.mo8450u(C6449y0.m4943b(apkChecksum.getValue()));
                            return;
                        }
                    }
                    p83Var.mo8450u(null);
                } catch (Throwable unused) {
                    p83Var.mo8450u(null);
                }
            }
        });
        return (String) m8451E.get();
    }
}
