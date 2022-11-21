package p168r4;

import android.os.Build;
import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* renamed from: r4.p */
/* loaded from: classes2.dex */
public final class C6115p {

    /* renamed from: c */
    public static final ConditionVariable f29286c = new ConditionVariable();

    /* renamed from: d */
    public static volatile lz2 f29287d = null;

    /* renamed from: e */
    public static volatile Random f29288e = null;

    /* renamed from: a */
    public final C6338v0 f29289a;

    /* renamed from: b */
    public volatile Boolean f29290b;

    public C6115p(C6338v0 c6338v0) {
        this.f29289a = c6338v0;
        c6338v0.m6281e().execute(new RunnableC6078o(this));
    }

    /* renamed from: d */
    public static final int m8545d() {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                return ThreadLocalRandom.current().nextInt();
            }
            return m8544e().nextInt();
        } catch (RuntimeException unused) {
            return m8544e().nextInt();
        }
    }

    /* renamed from: e */
    public static Random m8544e() {
        if (f29288e == null) {
            synchronized (C6115p.class) {
                if (f29288e == null) {
                    f29288e = new Random();
                }
            }
        }
        return f29288e;
    }

    /* renamed from: c */
    public final void m8546c(int i, int i2, long j, String str, Exception exc) {
        try {
            f29286c.block();
            if (this.f29290b.booleanValue() && f29287d != null) {
                ka4 m8852C = oa4.m8852C();
                m8852C.m10074v(this.f29289a.f32515a.getPackageName());
                m8852C.m10073x(j);
                if (str != null) {
                    m8852C.m10077B(str);
                }
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    rk3.m7478c(exc, new PrintWriter(stringWriter));
                    m8852C.m10072z(stringWriter.toString());
                    m8852C.m10078A(exc.getClass().getName());
                }
                jz2 m9532a = f29287d.m9532a(m8852C.m9614o().mo6490t());
                m9532a.m10129c(i);
                if (i2 != -1) {
                    m9532a.m10130b(i2);
                }
                m9532a.m10131a();
            }
        } catch (Exception unused) {
        }
    }
}
