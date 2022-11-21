package p168r4;

import java.io.PrintStream;
import java.io.PrintWriter;
/* renamed from: r4.rk3 */
/* loaded from: classes2.dex */
public final class rk3 {

    /* renamed from: a */
    public static final gk3 f30608a;

    static {
        gk3 pk3Var;
        Integer num = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            if (num != null && num.intValue() >= 19) {
                pk3Var = new qk3();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                pk3Var = new ok3();
            } else {
                pk3Var = new pk3();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = pk3.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            pk3Var = new pk3();
        }
        f30608a = pk3Var;
        if (num == null) {
            return;
        }
        num.intValue();
    }

    /* renamed from: a */
    public static void m7480a(Throwable th, Throwable th2) {
        f30608a.mo7805a(th, th2);
    }

    /* renamed from: b */
    public static void m7479b(Throwable th) {
        f30608a.mo7804b(th);
    }

    /* renamed from: c */
    public static void m7478c(Throwable th, PrintWriter printWriter) {
        f30608a.mo7803c(th, printWriter);
    }
}
