package p222x5;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import net.bytebuddy.asm.Advice;
import p196u5.C6930f;
/* renamed from: x5.g */
/* loaded from: classes2.dex */
public class C7341g {

    /* renamed from: a */
    public static final char[] f36837a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', Advice.OffsetMapping.ForOrigin.Renderer.ForDescriptor.SYMBOL, 'e', 'f'};

    /* renamed from: b */
    public static long f36838b = -1;

    /* renamed from: x5.g$a */
    /* loaded from: classes2.dex */
    public enum EnumC7342a {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;
        

        /* renamed from: v */
        public static final Map<String, EnumC7342a> f36849v;

        static {
            EnumC7342a enumC7342a = X86_32;
            EnumC7342a enumC7342a2 = ARMV6;
            EnumC7342a enumC7342a3 = ARMV7;
            EnumC7342a enumC7342a4 = ARM64;
            HashMap hashMap = new HashMap(4);
            f36849v = hashMap;
            hashMap.put("armeabi-v7a", enumC7342a3);
            hashMap.put("armeabi", enumC7342a2);
            hashMap.put("arm64-v8a", enumC7342a4);
            hashMap.put("x86", enumC7342a);
        }

        /* renamed from: c */
        public static EnumC7342a m1769c() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                C6930f.m3016f().m3013i("Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            EnumC7342a enumC7342a = f36849v.get(str.toLowerCase(Locale.US));
            if (enumC7342a == null) {
                return UNKNOWN;
            }
            return enumC7342a;
        }
    }

    /* renamed from: d */
    public static boolean m1792d(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: g */
    public static long m1789g(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    /* renamed from: h */
    public static String m1788h(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList();
        for (String str : strArr) {
            if (str != null) {
                arrayList.add(str.replace("-", "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            sb.append(str2);
        }
        String sb2 = sb.toString();
        if (sb2.length() > 0) {
            return m1770z(sb2);
        }
        return null;
    }

    /* renamed from: l */
    public static int m1784l() {
        return EnumC7342a.m1769c().ordinal();
    }

    /* renamed from: r */
    public static SharedPreferences m1778r(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    /* renamed from: t */
    public static String m1776t(String str, String str2) {
        return m1775u(str.getBytes(), str2);
    }

    /* renamed from: v */
    public static String m1774v(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & DefaultClassResolver.NAME;
            int i3 = i * 2;
            char[] cArr2 = f36837a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: w */
    public static boolean m1773w() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    /* renamed from: z */
    public static String m1770z(String str) {
        return m1776t(str, "SHA-1");
    }

    /* renamed from: A */
    public static String m1796A(InputStream inputStream) {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        if (useDelimiter.hasNext()) {
            return useDelimiter.next();
        }
        return "";
    }

    /* renamed from: a */
    public static long m1795a(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    /* renamed from: b */
    public static long m1794b(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (blockSize * statFs.getAvailableBlocks());
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: c */
    public static boolean m1793c(Context context) {
        if (!m1792d(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public static void m1791e(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C6930f.m3016f().m3017e(str, e);
            }
        }
    }

    /* renamed from: f */
    public static void m1790f(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r2 = r3[1];
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1787i(java.io.File r6, java.lang.String r7) {
        /*
            java.lang.String r0 = "Failed to close system file reader."
            boolean r1 = r6.exists()
            r2 = 0
            if (r1 == 0) goto L5f
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            r3.<init>(r6)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            r4 = 1024(0x400, float:1.435E-42)
            r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
        L15:
            java.lang.String r3 = r1.readLine()     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L59
            if (r3 == 0) goto L36
            java.lang.String r4 = "\\s*:\\s*"
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L59
            r5 = 2
            java.lang.String[] r3 = r4.split(r3, r5)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L59
            int r4 = r3.length     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L59
            r5 = 1
            if (r4 <= r5) goto L15
            r4 = 0
            r4 = r3[r4]     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L59
            boolean r4 = r4.equals(r7)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L59
            if (r4 == 0) goto L15
            r6 = r3[r5]     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L59
            r2 = r6
        L36:
            m1791e(r1, r0)
            goto L5f
        L3a:
            r7 = move-exception
            goto L40
        L3c:
            r6 = move-exception
            goto L5b
        L3e:
            r7 = move-exception
            r1 = r2
        L40:
            u5.f r3 = p196u5.C6930f.m3016f()     // Catch: java.lang.Throwable -> L59
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L59
            r4.<init>()     // Catch: java.lang.Throwable -> L59
            java.lang.String r5 = "Error parsing "
            r4.append(r5)     // Catch: java.lang.Throwable -> L59
            r4.append(r6)     // Catch: java.lang.Throwable -> L59
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L59
            r3.m3017e(r6, r7)     // Catch: java.lang.Throwable -> L59
            goto L36
        L59:
            r6 = move-exception
            r2 = r1
        L5b:
            m1791e(r2, r0)
            throw r6
        L5f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p222x5.C7341g.m1787i(java.io.File, java.lang.String):java.lang.String");
    }

    /* renamed from: j */
    public static ActivityManager.RunningAppProcessInfo m1786j(String str, Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    return runningAppProcessInfo;
                }
            }
        }
        return null;
    }

    /* renamed from: k */
    public static boolean m1785k(Context context, String str, boolean z) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int m1779q = m1779q(context, str, "bool");
            if (m1779q > 0) {
                return resources.getBoolean(m1779q);
            }
            int m1779q2 = m1779q(context, str, "string");
            if (m1779q2 > 0) {
                return Boolean.parseBoolean(context.getString(m1779q2));
            }
        }
        return z;
    }

    /* renamed from: n */
    public static String m1782n(Context context) {
        int m1779q = m1779q(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        if (m1779q == 0) {
            m1779q = m1779q(context, "com.crashlytics.android.build_id", "string");
        }
        if (m1779q != 0) {
            return context.getResources().getString(m1779q);
        }
        return null;
    }

    /* renamed from: s */
    public static synchronized long m1777s() {
        long j;
        synchronized (C7341g.class) {
            if (f36838b == -1) {
                long j2 = 0;
                String m1787i = m1787i(new File("/proc/meminfo"), "MemTotal");
                if (!TextUtils.isEmpty(m1787i)) {
                    String upperCase = m1787i.toUpperCase(Locale.US);
                    try {
                        if (upperCase.endsWith("KB")) {
                            j2 = m1789g(upperCase, "KB", 1024);
                        } else if (upperCase.endsWith("MB")) {
                            j2 = m1789g(upperCase, "MB", 1048576);
                        } else if (upperCase.endsWith("GB")) {
                            j2 = m1789g(upperCase, "GB", 1073741824);
                        } else {
                            C6930f m3016f = C6930f.m3016f();
                            m3016f.m3011k("Unexpected meminfo format while computing RAM: " + upperCase);
                        }
                    } catch (NumberFormatException e) {
                        C6930f m3016f2 = C6930f.m3016f();
                        m3016f2.m3017e("Unexpected meminfo format while computing RAM: " + upperCase, e);
                    }
                }
                f36838b = j2;
            }
            j = f36838b;
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* renamed from: m */
    public static int m1783m(Context context) {
        boolean m1772x = m1772x(context);
        ?? r0 = m1772x;
        if (m1771y(context)) {
            r0 = (m1772x ? 1 : 0) | true;
        }
        if (m1773w()) {
            return r0 | 4;
        }
        return r0;
    }

    /* renamed from: o */
    public static boolean m1781o(Context context) {
        if (m1772x(context) || ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) == null) {
            return false;
        }
        return true;
    }

    /* renamed from: p */
    public static String m1780p(Context context) {
        int i = context.getApplicationContext().getApplicationInfo().icon;
        if (i > 0) {
            try {
                String resourcePackageName = context.getResources().getResourcePackageName(i);
                if ("android".equals(resourcePackageName)) {
                    return context.getPackageName();
                }
                return resourcePackageName;
            } catch (Resources.NotFoundException unused) {
                return context.getPackageName();
            }
        }
        return context.getPackageName();
    }

    /* renamed from: q */
    public static int m1779q(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, m1780p(context));
    }

    /* renamed from: u */
    public static String m1775u(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return m1774v(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            C6930f m3016f = C6930f.m3016f();
            m3016f.m3017e("Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    /* renamed from: x */
    public static boolean m1772x(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (!Build.PRODUCT.contains("sdk")) {
            String str = Build.HARDWARE;
            if (!str.contains("goldfish") && !str.contains("ranchu") && string != null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: y */
    public static boolean m1771y(Context context) {
        boolean m1772x = m1772x(context);
        String str = Build.TAGS;
        if ((!m1772x && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        File file = new File("/system/xbin/su");
        if (!m1772x && file.exists()) {
            return true;
        }
        return false;
    }
}
