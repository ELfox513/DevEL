package com.badlogic.gdx.utils;

import com.badlogic.gdx.pay.PurchaseManagerConfig;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Random;
import java.util.UUID;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class SharedLibraryLoader {

    /* renamed from: b */
    public static final HashSet<String> f6734b;

    /* renamed from: c */
    public static final Random f6735c;
    public static boolean is64Bit;
    public static boolean isARM;
    public static boolean isAndroid;
    public static boolean isIos;
    public static boolean isLinux;
    public static boolean isMac;
    public static boolean isWindows;

    /* renamed from: a */
    public String f6736a;

    public SharedLibraryLoader() {
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: g */
    public static String m23533g() {
        Random random = f6735c;
        return new UUID(random.nextLong(), random.nextLong()).toString();
    }

    public static synchronized boolean isLoaded(String str) {
        boolean contains;
        synchronized (SharedLibraryLoader.class) {
            contains = f6734b.contains(str);
        }
        return contains;
    }

    /* renamed from: a */
    public final boolean m23539a(File file) {
        try {
            Method method = File.class.getMethod("canExecute", new Class[0]);
            if (((Boolean) method.invoke(file, new Object[0])).booleanValue()) {
                return true;
            }
            Class cls = Boolean.TYPE;
            File.class.getMethod("setExecutable", cls, cls).invoke(file, Boolean.TRUE, Boolean.FALSE);
            return ((Boolean) method.invoke(file, new Object[0])).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: e */
    public final Throwable m23535e(String str, String str2, File file) {
        try {
            System.load(m23537c(str, str2, file).getAbsolutePath());
            return null;
        } catch (Throwable th) {
            return th;
        }
    }

    public void extractFileTo(String str, File file) {
        m23537c(str, crc(m23532h(str)), new File(file, new File(str).getName()));
    }

    static {
        boolean z;
        boolean z2;
        boolean z3;
        isWindows = System.getProperty("os.name").contains(PurchaseManagerConfig.STORE_NAME_DESKTOP_WINDOWS);
        isLinux = System.getProperty("os.name").contains("Linux");
        isMac = System.getProperty("os.name").contains("Mac");
        isIos = false;
        isAndroid = false;
        if (!System.getProperty("os.arch").startsWith("arm") && !System.getProperty("os.arch").startsWith("aarch64")) {
            z = false;
        } else {
            z = true;
        }
        isARM = z;
        if (!System.getProperty("os.arch").contains("64") && !System.getProperty("os.arch").startsWith("armv8")) {
            z2 = false;
        } else {
            z2 = true;
        }
        is64Bit = z2;
        if (System.getProperty("moe.platform.name") != null) {
            z3 = true;
        } else {
            z3 = false;
        }
        String property = System.getProperty("java.runtime.name");
        if (property != null && property.contains("Android Runtime")) {
            isAndroid = true;
            isWindows = false;
            isLinux = false;
            isMac = false;
            is64Bit = false;
        }
        if (z3 || (!isAndroid && !isWindows && !isLinux && !isMac)) {
            isIos = true;
            isAndroid = false;
            isWindows = false;
            isLinux = false;
            isMac = false;
            is64Bit = false;
        }
        f6734b = new HashSet<>();
        f6735c = new Random();
    }

    public SharedLibraryLoader(String str) {
        this.f6736a = str;
    }

    public static synchronized void setLoaded(String str) {
        synchronized (SharedLibraryLoader.class) {
            f6734b.add(str);
        }
    }

    public String crc(InputStream inputStream) {
        if (inputStream != null) {
            CRC32 crc32 = new CRC32();
            byte[] bArr = new byte[4096];
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    crc32.update(bArr, 0, read);
                } catch (Exception unused) {
                } catch (Throwable th) {
                    closeQuietly(inputStream);
                    throw th;
                }
            }
            closeQuietly(inputStream);
            return Long.toString(crc32.getValue(), 16);
        }
        throw new IllegalArgumentException("input cannot be null.");
    }

    /* renamed from: d */
    public final File m23536d(String str, String str2) {
        File file = new File(System.getProperty("java.io.tmpdir") + "/libgdx" + System.getProperty("user.name") + "/" + str, str2);
        if (m23538b(file)) {
            return file;
        }
        try {
            File createTempFile = File.createTempFile(str, null);
            if (createTempFile.delete()) {
                File file2 = new File(createTempFile, str2);
                if (m23538b(file2)) {
                    return file2;
                }
            }
        } catch (IOException unused) {
        }
        File file3 = new File(System.getProperty("user.home") + "/.libgdx/" + str, str2);
        if (m23538b(file3)) {
            return file3;
        }
        File file4 = new File(".temp/" + str, str2);
        if (m23538b(file4)) {
            return file4;
        }
        if (System.getenv("APP_SANDBOX_CONTAINER_ID") == null) {
            return null;
        }
        return file;
    }

    /* renamed from: h */
    public final InputStream m23532h(String str) {
        if (this.f6736a == null) {
            InputStream resourceAsStream = SharedLibraryLoader.class.getResourceAsStream("/" + str);
            if (resourceAsStream != null) {
                return resourceAsStream;
            }
            throw new SharedLibraryLoadRuntimeException("Unable to read file for extraction: " + str);
        }
        try {
            ZipFile zipFile = new ZipFile(this.f6736a);
            ZipEntry entry = zipFile.getEntry(str);
            if (entry != null) {
                return zipFile.getInputStream(entry);
            }
            throw new SharedLibraryLoadRuntimeException("Couldn't find '" + str + "' in JAR: " + this.f6736a);
        } catch (IOException e) {
            throw new SharedLibraryLoadRuntimeException("Error reading '" + str + "' in JAR: " + this.f6736a, e);
        }
    }

    public void load(String str) {
        if (isIos) {
            return;
        }
        synchronized (SharedLibraryLoader.class) {
            if (isLoaded(str)) {
                return;
            }
            String mapLibraryName = mapLibraryName(str);
            if (isAndroid) {
                System.loadLibrary(mapLibraryName);
            } else {
                m23534f(mapLibraryName);
            }
            setLoaded(str);
        }
    }

    public String mapLibraryName(String str) {
        String str2;
        String str3;
        String str4;
        if (isWindows) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(str);
            if (is64Bit) {
                str4 = "64.dll";
            } else {
                str4 = ".dll";
            }
            sb.append(str4);
            return sb.toString();
        }
        String str5 = "arm";
        if (isLinux) {
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("lib");
            sb2.append(str);
            if (!isARM) {
                str5 = "";
            }
            sb2.append(str5);
            if (is64Bit) {
                str3 = "64.so";
            } else {
                str3 = ".so";
            }
            sb2.append(str3);
            return sb2.toString();
        } else if (isMac) {
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
            sb3.append("lib");
            sb3.append(str);
            if (!isARM) {
                str5 = "";
            }
            sb3.append(str5);
            if (is64Bit) {
                str2 = "64.dylib";
            } else {
                str2 = ".dylib";
            }
            sb3.append(str2);
            return sb3.toString();
        } else {
            return str;
        }
    }

    /* renamed from: b */
    public final boolean m23538b(File file) {
        File parentFile = file.getParentFile();
        if (file.exists()) {
            if (!file.canWrite() || !m23539a(file)) {
                return false;
            }
            file = new File(parentFile, m23533g().toString());
        } else {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                return false;
            }
        }
        try {
            new FileOutputStream(file).close();
            if (!m23539a(file)) {
                file.delete();
                return false;
            }
            file.delete();
            return true;
        } catch (Throwable unused) {
            file.delete();
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:(9:(4:41|42|(9:9|10|11|12|13|14|15|(3:16|17|(1:21)(2:19|20))|22)|7)|11|12|13|14|15|(4:16|17|(0)(0)|20)|22|7)|9|10) */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0077, code lost:
        r7 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0036 A[EDGE_INSN: B:49:0x0036->B:18:0x0036 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6, types: [boolean] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File m23537c(java.lang.String r7, java.lang.String r8, java.io.File r9) {
        /*
            r6 = this;
            boolean r0 = r9.exists()
            r1 = 0
            if (r0 == 0) goto L12
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L11
            r0.<init>(r9)     // Catch: java.io.FileNotFoundException -> L11
            java.lang.String r0 = r6.crc(r0)     // Catch: java.io.FileNotFoundException -> L11
            goto L13
        L11:
        L12:
            r0 = r1
        L13:
            if (r0 == 0) goto L1b
            boolean r8 = r0.equals(r8)
            if (r8 != 0) goto L3c
        L1b:
            java.io.InputStream r8 = r6.m23532h(r7)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L50
            java.io.File r0 = r9.getParentFile()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L48
            r0.mkdirs()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L48
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L48
            r0.<init>(r9)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L48
            r1 = 4096(0x1000, float:5.74E-42)
            byte[] r1 = new byte[r1]     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L77
        L2f:
            int r2 = r8.read(r1)     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L77
            r3 = -1
            if (r2 != r3) goto L3d
            closeQuietly(r8)
            closeQuietly(r0)
        L3c:
            return r9
        L3d:
            r3 = 0
            r0.write(r1, r3, r2)     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L77
            goto L2f
        L42:
            r1 = move-exception
            goto L54
        L44:
            r7 = move-exception
            r0 = r1
        L46:
            r1 = r8
            goto L79
        L48:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L54
        L4d:
            r7 = move-exception
            r0 = r1
            goto L79
        L50:
            r8 = move-exception
            r0 = r1
            r1 = r8
            r8 = r0
        L54:
            com.badlogic.gdx.utils.SharedLibraryLoadRuntimeException r2 = new com.badlogic.gdx.utils.SharedLibraryLoadRuntimeException     // Catch: java.lang.Throwable -> L77
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77
            r3.<init>()     // Catch: java.lang.Throwable -> L77
            java.lang.String r4 = "Error extracting file: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L77
            r3.append(r7)     // Catch: java.lang.Throwable -> L77
            java.lang.String r7 = "\nTo: "
            r3.append(r7)     // Catch: java.lang.Throwable -> L77
            java.lang.String r7 = r9.getAbsolutePath()     // Catch: java.lang.Throwable -> L77
            r3.append(r7)     // Catch: java.lang.Throwable -> L77
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Throwable -> L77
            r2.<init>(r7, r1)     // Catch: java.lang.Throwable -> L77
            throw r2     // Catch: java.lang.Throwable -> L77
        L77:
            r7 = move-exception
            goto L46
        L79:
            closeQuietly(r1)
            closeQuietly(r0)
            goto L81
        L80:
            throw r7
        L81:
            goto L80
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.SharedLibraryLoader.m23537c(java.lang.String, java.lang.String, java.io.File):java.io.File");
    }

    public File extractFile(String str, String str2) {
        try {
            String crc = crc(m23532h(str));
            if (str2 == null) {
                str2 = crc;
            }
            File m23536d = m23536d(str2, new File(str).getName());
            if (m23536d == null && (m23536d = m23536d(m23533g(), new File(str).getName())) == null) {
                throw new SharedLibraryLoadRuntimeException("Unable to find writable path to extract file. Is the user home directory writable?");
            }
            return m23537c(str, crc, m23536d);
        } catch (RuntimeException e) {
            File file = new File(System.getProperty("java.library.path"), str);
            if (file.exists()) {
                return file;
            }
            throw e;
        }
    }

    /* renamed from: f */
    public final void m23534f(String str) {
        String crc = crc(m23532h(str));
        String name = new File(str).getName();
        Throwable m23535e = m23535e(str, crc, new File(System.getProperty("java.io.tmpdir") + "/libgdx" + System.getProperty("user.name") + "/" + crc, name));
        if (m23535e == null) {
            return;
        }
        try {
            File createTempFile = File.createTempFile(crc, null);
            if (createTempFile.delete()) {
                if (m23535e(str, crc, createTempFile) == null) {
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        if (m23535e(str, crc, new File(System.getProperty("user.home") + "/.libgdx/" + crc, name)) == null) {
            return;
        }
        if (m23535e(str, crc, new File(".temp/" + crc, name)) == null) {
            return;
        }
        File file = new File(System.getProperty("java.library.path"), str);
        if (file.exists()) {
            System.load(file.getAbsolutePath());
            return;
        }
        throw new SharedLibraryLoadRuntimeException(m23535e);
    }
}
