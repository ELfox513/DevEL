package p168r4;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: r4.vb3 */
/* loaded from: classes2.dex */
public final class vb3 {

    /* renamed from: a */
    public static final Logger f32680a = Logger.getLogger(vb3.class.getName());

    /* renamed from: b */
    public static final AtomicBoolean f32681b = new AtomicBoolean(false);

    /* renamed from: a */
    public static boolean m6175a() {
        return f32681b.get();
    }

    /* renamed from: b */
    public static Boolean m6174b() {
        try {
            return (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            f32680a.logp(Level.INFO, "com.google.crypto.tink.config.internal.TinkFipsUtil", "checkConscryptIsAvailableAndUsesFipsBoringSsl", "Conscrypt is not available or does not support checking for FIPS build.");
            return Boolean.FALSE;
        }
    }
}
