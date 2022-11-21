package p018b5;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: b5.r6 */
/* loaded from: classes2.dex */
public abstract class AbstractC0851r6<T> {

    /* renamed from: h */
    public static volatile AbstractC0817p6 f2253h;

    /* renamed from: a */
    public final C0800o6 f2257a;

    /* renamed from: b */
    public final String f2258b;

    /* renamed from: c */
    public final T f2259c;

    /* renamed from: d */
    public volatile int f2260d = -1;

    /* renamed from: e */
    public volatile T f2261e;

    /* renamed from: f */
    public final boolean f2262f;

    /* renamed from: g */
    public static final Object f2252g = new Object();

    /* renamed from: i */
    public static final AtomicReference<Collection<AbstractC0851r6<?>>> f2254i = new AtomicReference<>();

    /* renamed from: j */
    public static final C0885t6 f2255j = new C0885t6(C0698i6.f1878a, null);

    /* renamed from: k */
    public static final AtomicInteger f2256k = new AtomicInteger();

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ AbstractC0851r6(C0800o6 c0800o6, String str, Object obj, boolean z, C0834q6 c0834q6) {
        if (c0800o6.f2081b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f2257a = c0800o6;
        this.f2258b = str;
        this.f2259c = obj;
        this.f2262f = true;
    }

    /* renamed from: e */
    public static void m25427e() {
        f2256k.incrementAndGet();
    }

    /* renamed from: a */
    public abstract T mo25431a(Object obj);

    /* renamed from: c */
    public final String m25429c() {
        String str = this.f2257a.f2083d;
        return this.f2258b;
    }

    @Deprecated
    /* renamed from: d */
    public static void m25428d(final Context context) {
        synchronized (f2252g) {
            AbstractC0817p6 abstractC0817p6 = f2253h;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (abstractC0817p6 == null || abstractC0817p6.mo25116a() != context) {
                C0952x5.m24992d();
                C0868s6.m25261b();
                C0630e6.m26026d();
                f2253h = new C0884t5(context, C0614d7.m26054a(new InterfaceC0987z6() { // from class: b5.j6
                    @Override // p018b5.InterfaceC0987z6
                    public final Object zza() {
                        AbstractC0936w6 m25041c;
                        AbstractC0936w6 m25041c2;
                        String str;
                        boolean isDeviceProtectedStorage;
                        Context context2 = context;
                        Object obj = AbstractC0851r6.f2252g;
                        String str2 = Build.TYPE;
                        String str3 = Build.TAGS;
                        if ((!str2.equals("eng") && !str2.equals("userdebug")) || (!str3.contains("dev-keys") && !str3.contains("test-keys"))) {
                            return AbstractC0936w6.m25041c();
                        }
                        if (C0867s5.m25263a()) {
                            isDeviceProtectedStorage = context2.isDeviceProtectedStorage();
                            if (!isDeviceProtectedStorage) {
                                context2 = context2.createDeviceProtectedStorageContext();
                            }
                        }
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            StrictMode.allowThreadDiskWrites();
                            try {
                                File file = new File(context2.getDir("phenotype_hermetic", 0), "overrides.txt");
                                if (file.exists()) {
                                    m25041c = AbstractC0936w6.m25040d(file);
                                } else {
                                    m25041c = AbstractC0936w6.m25041c();
                                }
                            } catch (RuntimeException e) {
                                Log.e("HermeticFileOverrides", "no data dir", e);
                                m25041c = AbstractC0936w6.m25041c();
                            }
                            if (m25041c.mo24914b()) {
                                File file2 = (File) m25041c.mo24915a();
                                try {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                    try {
                                        HashMap hashMap = new HashMap();
                                        HashMap hashMap2 = new HashMap();
                                        while (true) {
                                            String readLine = bufferedReader.readLine();
                                            if (readLine == null) {
                                                break;
                                            }
                                            String[] split = readLine.split(" ", 3);
                                            if (split.length != 3) {
                                                if (readLine.length() != 0) {
                                                    str = "Invalid: ".concat(readLine);
                                                } else {
                                                    str = new String("Invalid: ");
                                                }
                                                Log.e("HermeticFileOverrides", str);
                                            } else {
                                                String str4 = new String(split[0]);
                                                String decode = Uri.decode(new String(split[1]));
                                                String str5 = (String) hashMap2.get(split[2]);
                                                if (str5 == null) {
                                                    String str6 = new String(split[2]);
                                                    str5 = Uri.decode(str6);
                                                    if (str5.length() < 1024 || str5 == str6) {
                                                        hashMap2.put(str6, str5);
                                                    }
                                                }
                                                if (!hashMap.containsKey(str4)) {
                                                    hashMap.put(str4, new HashMap());
                                                }
                                                ((Map) hashMap.get(str4)).put(decode, str5);
                                            }
                                        }
                                        String valueOf = String.valueOf(file2);
                                        StringBuilder sb = new StringBuilder(valueOf.length() + 7);
                                        sb.append("Parsed ");
                                        sb.append(valueOf);
                                        Log.i("HermeticFileOverrides", sb.toString());
                                        C0647f6 c0647f6 = new C0647f6(hashMap);
                                        bufferedReader.close();
                                        m25041c2 = AbstractC0936w6.m25040d(c0647f6);
                                    } catch (Throwable th) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Throwable unused) {
                                        }
                                        throw th;
                                    }
                                } catch (IOException e2) {
                                    throw new RuntimeException(e2);
                                }
                            } else {
                                m25041c2 = AbstractC0936w6.m25041c();
                            }
                            return m25041c2;
                        } finally {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        }
                    }
                }));
                f2256k.incrementAndGet();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc A[Catch: all -> 0x011c, TryCatch #0 {, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x003b, B:20:0x0047, B:22:0x0050, B:24:0x0062, B:26:0x006d, B:25:0x0067, B:53:0x00e4, B:55:0x00f4, B:57:0x0108, B:58:0x010b, B:59:0x010f, B:41:0x00bc, B:43:0x00c2, B:47:0x00d4, B:49:0x00da, B:52:0x00e2, B:46:0x00d2, B:28:0x0072, B:30:0x0078, B:32:0x0086, B:36:0x00ab, B:38:0x00b5, B:34:0x009d, B:60:0x0114, B:61:0x0119, B:62:0x011a), top: B:69:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e2 A[Catch: all -> 0x011c, TryCatch #0 {, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x003b, B:20:0x0047, B:22:0x0050, B:24:0x0062, B:26:0x006d, B:25:0x0067, B:53:0x00e4, B:55:0x00f4, B:57:0x0108, B:58:0x010b, B:59:0x010f, B:41:0x00bc, B:43:0x00c2, B:47:0x00d4, B:49:0x00da, B:52:0x00e2, B:46:0x00d2, B:28:0x0072, B:30:0x0078, B:32:0x0086, B:36:0x00ab, B:38:0x00b5, B:34:0x009d, B:60:0x0114, B:61:0x0119, B:62:0x011a), top: B:69:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f4 A[Catch: all -> 0x011c, TryCatch #0 {, blocks: (B:12:0x001c, B:14:0x0020, B:16:0x0026, B:18:0x003b, B:20:0x0047, B:22:0x0050, B:24:0x0062, B:26:0x006d, B:25:0x0067, B:53:0x00e4, B:55:0x00f4, B:57:0x0108, B:58:0x010b, B:59:0x010f, B:41:0x00bc, B:43:0x00c2, B:47:0x00d4, B:49:0x00da, B:52:0x00e2, B:46:0x00d2, B:28:0x0072, B:30:0x0078, B:32:0x0086, B:36:0x00ab, B:38:0x00b5, B:34:0x009d, B:60:0x0114, B:61:0x0119, B:62:0x011a), top: B:69:0x001c }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m25430b() {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.AbstractC0851r6.m25430b():java.lang.Object");
    }
}
