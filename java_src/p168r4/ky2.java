package p168r4;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
/* renamed from: r4.ky2 */
/* loaded from: classes2.dex */
public final class ky2 {
    /* renamed from: a */
    public static boolean m9837a(int i) {
        int i2 = i - 1;
        return i2 == 2 || i2 == 4 || i2 == 5 || i2 == 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0123  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int m9836b(android.content.Context r13, p168r4.hx2 r14) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.ky2.m9836b(android.content.Context, r4.hx2):int");
    }

    /* renamed from: c */
    public static final void m9835c(byte[] bArr, String str, Context context, hx2 hx2Var) {
        StringBuilder sb = new StringBuilder();
        sb.append("os.arch:");
        sb.append(k13.OS_ARCH.m10112c());
        sb.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb.append("supported_abis:");
                sb.append(Arrays.toString(strArr));
                sb.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sb.append("CPU_ABI:");
        sb.append(Build.CPU_ABI);
        sb.append(";CPU_ABI2:");
        sb.append(Build.CPU_ABI2);
        sb.append(";");
        if (bArr != null) {
            sb.append("ELF:");
            sb.append(Arrays.toString(bArr));
            sb.append(";");
        }
        if (str != null) {
            sb.append("dbg:");
            sb.append(str);
            sb.append(";");
        }
        hx2Var.m10764e(4007, sb.toString());
    }

    /* renamed from: d */
    public static final String m9834d(Context context, hx2 hx2Var) {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String m10112c = k13.OS_ARCH.m10112c();
        if (!TextUtils.isEmpty(m10112c) && hashSet.contains(m10112c)) {
            return m10112c;
        }
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null && strArr.length > 0) {
                return strArr[0];
            }
        } catch (IllegalAccessException e) {
            hx2Var.m10766c(2024, 0L, e);
        } catch (NoSuchFieldException e2) {
            hx2Var.m10766c(2024, 0L, e2);
        }
        String str = Build.CPU_ABI;
        if (str != null) {
            return str;
        }
        return Build.CPU_ABI2;
    }
}
