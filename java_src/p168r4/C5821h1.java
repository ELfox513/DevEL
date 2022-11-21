package p168r4;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.h1 */
/* loaded from: classes2.dex */
public final class C5821h1 extends AbstractCallableC5710e2 {

    /* renamed from: j */
    public static final C5785g2<gc4> f24392j = new C5785g2<>();

    /* renamed from: i */
    public final Context f24393i;

    public C5821h1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2, Context context, sa4 sa4Var) {
        super(c6338v0, "NK1iwlHEHCICBCLEvTy0TnuhgEeSXovnPs9zKPvVW8trSfaaB+/inefY+5AxSSUI", "/qulcnd5BAOc2NixUFmrPgx+DAD1V/hpoK4nowHOBbg=", za4Var, i, 27);
        this.f24393i = context;
    }

    /* renamed from: c */
    public final String m11012c() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] m4942c = C6449y0.m4942c((String) C5592av.m12935c().m8098c(C6225rz.f30776C1));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(m4942c)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(C6449y0.m4942c((String) C5592av.m12935c().m8098c(C6225rz.f30784D1)))));
            }
            Context context = this.f24393i;
            return C5895j2.m10435a(context, context.getPackageName(), arrayList, this.f22744b.m6281e());
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        Boolean bool;
        int i;
        boolean z;
        String str;
        gc4 gc4Var;
        AtomicReference<gc4> m11311a = f24392j.m11311a(this.f24393i.getPackageName());
        synchronized (m11311a) {
            gc4 gc4Var2 = m11311a.get();
            if (gc4Var2 == null || C6449y0.m4940e(gc4Var2.f23963b) || gc4Var2.f23963b.equals("E") || gc4Var2.f23963b.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (!C6449y0.m4940e(null)) {
                    i = 5;
                } else {
                    if (!C6449y0.m4940e(null)) {
                        bool = Boolean.FALSE;
                    } else {
                        bool = Boolean.FALSE;
                    }
                    if (bool.booleanValue() && this.f22744b.m6275k()) {
                        i = 4;
                    } else {
                        i = 3;
                    }
                }
                if (i == 3) {
                    z = true;
                } else {
                    z = false;
                }
                Boolean valueOf = Boolean.valueOf(z);
                Boolean bool2 = (Boolean) C5592av.m12935c().m8098c(C6225rz.f30768B1);
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30760A1)).booleanValue()) {
                    str = m11012c();
                } else {
                    str = null;
                }
                if (bool2.booleanValue() && this.f22744b.m6275k() && C6449y0.m4940e(str)) {
                    str = m11011d();
                }
                gc4 gc4Var3 = new gc4((String) this.f22748f.invoke(null, this.f24393i, valueOf, str));
                if (C6449y0.m4940e(gc4Var3.f23963b) || gc4Var3.f23963b.equals("E")) {
                    int i2 = i - 1;
                    if (i2 != 3) {
                        if (i2 == 4) {
                            throw null;
                        }
                    } else {
                        String m11011d = m11011d();
                        if (!C6449y0.m4940e(m11011d)) {
                            gc4Var3.f23963b = m11011d;
                        }
                    }
                }
                m11311a.set(gc4Var3);
            }
            gc4Var = m11311a.get();
        }
        synchronized (this.f22747e) {
            if (gc4Var != null) {
                this.f22747e.m4356t0(gc4Var.f23963b);
                this.f22747e.m4347z0(gc4Var.f23964c);
                this.f22747e.m4349y0(gc4Var.f23965d);
                this.f22747e.m4399A(gc4Var.f23966e);
                this.f22747e.m4397B(gc4Var.f23967f);
            }
        }
    }

    /* renamed from: d */
    public final String m11011d() {
        try {
            if (this.f22744b.m6271o() != null) {
                this.f22744b.m6271o().get();
            }
            pb4 m6272n = this.f22744b.m6272n();
            if (m6272n != null && m6272n.m8385f0()) {
                return m6272n.m8371t0();
            }
            return null;
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }
}
