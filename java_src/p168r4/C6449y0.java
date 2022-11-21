package p168r4;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.UUID;
/* renamed from: r4.y0 */
/* loaded from: classes2.dex */
public final class C6449y0 {

    /* renamed from: a */
    public static final char[] f33821a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    public static String m4943b(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & DefaultClassResolver.NAME;
            int i3 = i + i;
            char[] cArr2 = f33821a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: e */
    public static boolean m4940e(String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: f */
    public static boolean m4939f() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: g */
    public static boolean m4938g(DisplayMetrics displayMetrics) {
        return (displayMetrics == null || displayMetrics.density == 0.0f) ? false : true;
    }

    /* renamed from: h */
    public static long m4937h(double d, int i, DisplayMetrics displayMetrics) {
        double d2 = displayMetrics.density;
        Double.isNaN(d2);
        return Math.round(d / d2);
    }

    /* renamed from: a */
    public static String m4944a(String str) {
        if (str != null && str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            UUID fromString = UUID.fromString(str);
            byte[] bArr = new byte[16];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.putLong(fromString.getMostSignificantBits());
            wrap.putLong(fromString.getLeastSignificantBits());
            return fc4.m11575a(bArr, true);
        }
        return str;
    }

    /* renamed from: d */
    public static String m4941d(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        rk3.m7478c(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* renamed from: c */
    public static byte[] m4942c(String str) {
        int length = str.length();
        if (length % 2 == 0) {
            byte[] bArr = new byte[length / 2];
            for (int i = 0; i < length; i += 2) {
                bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
            }
            return bArr;
        }
        throw new IllegalArgumentException("String must be of even-length");
    }

    /* renamed from: i */
    public static Activity m4936i(View view) {
        View rootView = view.getRootView();
        if (rootView != null) {
            view = rootView;
        }
        Context context = view.getContext();
        for (int i = 0; (context instanceof ContextWrapper) && i < 10; i++) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
