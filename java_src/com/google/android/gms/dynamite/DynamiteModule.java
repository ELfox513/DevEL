package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.util.DynamiteApi;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import p026c4.C1047h;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p069g4.C3588a;
import p069g4.C3589b;
import p069g4.C3590c;
import p069g4.C3591d;
import p069g4.C3592e;
import p220x3.C7289o;
import p220x3.C7297q;
/* loaded from: classes.dex */
public final class DynamiteModule {

    /* renamed from: h */
    public static Boolean f7768h = null;

    /* renamed from: i */
    public static String f7769i = null;

    /* renamed from: j */
    public static int f7770j = -1;

    /* renamed from: o */
    public static C3591d f7775o;

    /* renamed from: p */
    public static C3592e f7776p;

    /* renamed from: a */
    public final Context f7777a;

    /* renamed from: k */
    public static final ThreadLocal<C3590c> f7771k = new ThreadLocal<>();

    /* renamed from: l */
    public static final ThreadLocal<Long> f7772l = new C3589b();

    /* renamed from: m */
    public static final InterfaceC1425j f7773m = new C1416a();
    @RecentlyNonNull

    /* renamed from: b */
    public static final InterfaceC1415b f7762b = new C1417b();
    @RecentlyNonNull

    /* renamed from: c */
    public static final InterfaceC1415b f7763c = new C1418c();
    @RecentlyNonNull

    /* renamed from: d */
    public static final InterfaceC1415b f7764d = new C1419d();
    @RecentlyNonNull

    /* renamed from: e */
    public static final InterfaceC1415b f7765e = new C1420e();
    @RecentlyNonNull

    /* renamed from: f */
    public static final InterfaceC1415b f7766f = new C1421f();
    @RecentlyNonNull

    /* renamed from: g */
    public static final InterfaceC1415b f7767g = new C1422g();
    @RecentlyNonNull

    /* renamed from: n */
    public static final InterfaceC1415b f7774n = new C1423h();

    @DynamiteApi
    /* loaded from: classes.dex */
    public static class DynamiteLoaderClassLoader {
        @RecentlyNullable
        public static ClassLoader sClassLoader;
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a */
    /* loaded from: classes.dex */
    public static class C1414a extends Exception {
        public /* synthetic */ C1414a(String str, C3589b c3589b) {
            super(str);
        }

        public /* synthetic */ C1414a(String str, Throwable th, C3589b c3589b) {
            super(str, th);
        }
    }

    /* renamed from: com.google.android.gms.dynamite.DynamiteModule$b */
    /* loaded from: classes.dex */
    public interface InterfaceC1415b {
        /* renamed from: a */
        C1426k mo22996a(Context context, String str, InterfaceC1425j interfaceC1425j);
    }

    public DynamiteModule(Context context) {
        C7297q.m1883j(context);
        this.f7777a = context;
    }

    /* renamed from: c */
    public static int m23005c(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        return m23002f(context, str, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0074, code lost:
        if (m23000h(r9) != false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a9  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m23001g(android.content.Context r9, java.lang.String r10, boolean r11) {
        /*
            r0 = 0
            java.lang.ThreadLocal<java.lang.Long> r1 = com.google.android.gms.dynamite.DynamiteModule.f7772l     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            java.lang.Long r1 = (java.lang.Long) r1     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            long r1 = r1.longValue()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            android.content.ContentResolver r3 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            java.lang.String r9 = "api_force_staging"
            java.lang.String r4 = "api"
            r5 = 1
            if (r5 == r11) goto L19
            r9 = r4
        L19:
            android.net.Uri$Builder r11 = new android.net.Uri$Builder     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            r11.<init>()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            java.lang.String r4 = "content"
            android.net.Uri$Builder r11 = r11.scheme(r4)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            java.lang.String r4 = "com.google.android.gms.chimera"
            android.net.Uri$Builder r11 = r11.authority(r4)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            android.net.Uri$Builder r9 = r11.path(r9)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            android.net.Uri$Builder r9 = r9.appendPath(r10)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            java.lang.String r10 = "requestStartTime"
            java.lang.String r11 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            android.net.Uri$Builder r9 = r9.appendQueryParameter(r10, r11)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            android.net.Uri r4 = r9.build()     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r9 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L95
            if (r9 == 0) goto L81
            boolean r10 = r9.moveToFirst()     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
            if (r10 == 0) goto L81
            r10 = 0
            int r10 = r9.getInt(r10)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
            if (r10 <= 0) goto L7a
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r11 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r11)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
            r1 = 2
            java.lang.String r1 = r9.getString(r1)     // Catch: java.lang.Throwable -> L77
            com.google.android.gms.dynamite.DynamiteModule.f7769i = r1     // Catch: java.lang.Throwable -> L77
            java.lang.String r1 = "loaderVersion"
            int r1 = r9.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L77
            if (r1 < 0) goto L6f
            int r1 = r9.getInt(r1)     // Catch: java.lang.Throwable -> L77
            com.google.android.gms.dynamite.DynamiteModule.f7770j = r1     // Catch: java.lang.Throwable -> L77
        L6f:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L77
            boolean r11 = m23000h(r9)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
            if (r11 == 0) goto L7a
            goto L7b
        L77:
            r10 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L77
            throw r10     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
        L7a:
            r0 = r9
        L7b:
            if (r0 == 0) goto L80
            r0.close()
        L80:
            return r10
        L81:
            java.lang.String r10 = "DynamiteModule"
            java.lang.String r11 = "Failed to retrieve remote module version."
            android.util.Log.w(r10, r11)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
            com.google.android.gms.dynamite.DynamiteModule$a r10 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
            java.lang.String r11 = "Failed to connect to dynamite module ContentResolver."
            r10.<init>(r11, r0)     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
            throw r10     // Catch: java.lang.Exception -> L90 java.lang.Throwable -> La5
        L90:
            r10 = move-exception
            goto L98
        L92:
            r9 = move-exception
            r10 = r9
            goto La7
        L95:
            r9 = move-exception
            r10 = r9
            r9 = r0
        L98:
            boolean r11 = r10 instanceof com.google.android.gms.dynamite.DynamiteModule.C1414a     // Catch: java.lang.Throwable -> La5
            if (r11 == 0) goto L9d
            throw r10     // Catch: java.lang.Throwable -> La5
        L9d:
            com.google.android.gms.dynamite.DynamiteModule$a r11 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Throwable -> La5
            java.lang.String r1 = "V2 version check failed"
            r11.<init>(r1, r10, r0)     // Catch: java.lang.Throwable -> La5
            throw r11     // Catch: java.lang.Throwable -> La5
        La5:
            r10 = move-exception
            r0 = r9
        La7:
            if (r0 == 0) goto Lac
            r0.close()
        Lac:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.m23001g(android.content.Context, java.lang.String, boolean):int");
    }

    /* renamed from: h */
    public static boolean m23000h(Cursor cursor) {
        C3590c c3590c = f7771k.get();
        if (c3590c == null || c3590c.f16188a != null) {
            return false;
        }
        c3590c.f16188a = cursor;
        return true;
    }

    /* renamed from: j */
    public static void m22998j(ClassLoader classLoader) {
        C3592e c3592e;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                c3592e = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof C3592e) {
                    c3592e = (C3592e) queryLocalInterface;
                } else {
                    c3592e = new C3592e(iBinder);
                }
            }
            f7776p = c3592e;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new C1414a("Failed to instantiate dynamite loader", e, null);
        }
    }

    @RecentlyNonNull
    /* renamed from: b */
    public Context m23006b() {
        return this.f7777a;
    }

    /* renamed from: a */
    public static int m23007a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        String str2;
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".");
            sb.append("ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!C7289o.m1908a(declaredField.get(null), str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 51 + String.valueOf(str).length());
                sb2.append("Module descriptor id '");
                sb2.append(valueOf);
                sb2.append("' didn't match expected id '");
                sb2.append(str);
                sb2.append("'");
                Log.e("DynamiteModule", sb2.toString());
                return 0;
            }
            return declaredField2.getInt(null);
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            if (valueOf2.length() != 0) {
                str2 = "Failed to load module descriptor class: ".concat(valueOf2);
            } else {
                str2 = new String("Failed to load module descriptor class: ");
            }
            Log.e("DynamiteModule", str2);
            return 0;
        }
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static DynamiteModule m23003e(@RecentlyNonNull Context context, @RecentlyNonNull InterfaceC1415b interfaceC1415b, @RecentlyNonNull String str) {
        String str2;
        Boolean bool;
        InterfaceC3512a m18558t0;
        DynamiteModule dynamiteModule;
        C3592e c3592e;
        boolean z;
        Boolean valueOf;
        InterfaceC3512a m18556t0;
        ThreadLocal<C3590c> threadLocal = f7771k;
        C3590c c3590c = threadLocal.get();
        C3590c c3590c2 = new C3590c(null);
        threadLocal.set(c3590c2);
        ThreadLocal<Long> threadLocal2 = f7772l;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            C1426k mo22996a = interfaceC1415b.mo22996a(context, str, f7773m);
            int i = mo22996a.f7779a;
            int i2 = mo22996a.f7780b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(":");
            sb.append(i);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(":");
            sb.append(i2);
            Log.i("DynamiteModule", sb.toString());
            int i3 = mo22996a.f7781c;
            if (i3 != 0 && ((i3 != -1 || mo22996a.f7779a != 0) && (i3 != 1 || mo22996a.f7780b != 0))) {
                if (i3 == -1) {
                    DynamiteModule m22999i = m22999i(context, str);
                    if (longValue == 0) {
                        threadLocal2.remove();
                    } else {
                        threadLocal2.set(Long.valueOf(longValue));
                    }
                    Cursor cursor = c3590c2.f16188a;
                    if (cursor != null) {
                        cursor.close();
                    }
                    threadLocal.set(c3590c);
                    return m22999i;
                } else if (i3 == 1) {
                    try {
                        int i4 = mo22996a.f7780b;
                        try {
                            synchronized (DynamiteModule.class) {
                                bool = f7768h;
                            }
                            if (bool != null) {
                                if (bool.booleanValue()) {
                                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 51);
                                    sb2.append("Selected remote version of ");
                                    sb2.append(str);
                                    sb2.append(", version >= ");
                                    sb2.append(i4);
                                    Log.i("DynamiteModule", sb2.toString());
                                    synchronized (DynamiteModule.class) {
                                        c3592e = f7776p;
                                    }
                                    if (c3592e != null) {
                                        C3590c c3590c3 = threadLocal.get();
                                        if (c3590c3 != null && c3590c3.f16188a != null) {
                                            Context applicationContext = context.getApplicationContext();
                                            Cursor cursor2 = c3590c3.f16188a;
                                            BinderC3514b.m18741L0(null);
                                            synchronized (DynamiteModule.class) {
                                                if (f7770j >= 2) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                valueOf = Boolean.valueOf(z);
                                            }
                                            if (valueOf.booleanValue()) {
                                                Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                m18556t0 = c3592e.m18557L0(BinderC3514b.m18741L0(applicationContext), str, i4, BinderC3514b.m18741L0(cursor2));
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                m18556t0 = c3592e.m18556t0(BinderC3514b.m18741L0(applicationContext), str, i4, BinderC3514b.m18741L0(cursor2));
                                            }
                                            Context context2 = (Context) BinderC3514b.m18740t0(m18556t0);
                                            if (context2 != null) {
                                                dynamiteModule = new DynamiteModule(context2);
                                            } else {
                                                throw new C1414a("Failed to get module context", null);
                                            }
                                        } else {
                                            throw new C1414a("No result cursor", null);
                                        }
                                    } else {
                                        throw new C1414a("DynamiteLoaderV2 was not cached.", null);
                                    }
                                } else {
                                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 51);
                                    sb3.append("Selected remote version of ");
                                    sb3.append(str);
                                    sb3.append(", version >= ");
                                    sb3.append(i4);
                                    Log.i("DynamiteModule", sb3.toString());
                                    C3591d m22997k = m22997k(context);
                                    if (m22997k != null) {
                                        int m18560j = m22997k.m18560j();
                                        if (m18560j >= 3) {
                                            C3590c c3590c4 = threadLocal.get();
                                            if (c3590c4 != null) {
                                                m18558t0 = m22997k.m18559p6(BinderC3514b.m18741L0(context), str, i4, BinderC3514b.m18741L0(c3590c4.f16188a));
                                            } else {
                                                throw new C1414a("No cached result cursor holder", null);
                                            }
                                        } else if (m18560j == 2) {
                                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                                            m18558t0 = m22997k.m18562b2(BinderC3514b.m18741L0(context), str, i4);
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                            m18558t0 = m22997k.m18558t0(BinderC3514b.m18741L0(context), str, i4);
                                        }
                                        if (BinderC3514b.m18740t0(m18558t0) != null) {
                                            dynamiteModule = new DynamiteModule((Context) BinderC3514b.m18740t0(m18558t0));
                                        } else {
                                            throw new C1414a("Failed to load remote module.", null);
                                        }
                                    } else {
                                        throw new C1414a("Failed to create IDynamiteLoader.", null);
                                    }
                                }
                                if (longValue == 0) {
                                    threadLocal2.remove();
                                } else {
                                    threadLocal2.set(Long.valueOf(longValue));
                                }
                                Cursor cursor3 = c3590c2.f16188a;
                                if (cursor3 != null) {
                                    cursor3.close();
                                }
                                threadLocal.set(c3590c);
                                return dynamiteModule;
                            }
                            throw new C1414a("Failed to determine which loading route to use.", null);
                        } catch (RemoteException e) {
                            throw new C1414a("Failed to load remote module.", e, null);
                        } catch (C1414a e2) {
                            throw e2;
                        } catch (Throwable th) {
                            C1047h.m24764a(context, th);
                            throw new C1414a("Failed to load remote module.", th, null);
                        }
                    } catch (C1414a e3) {
                        String valueOf2 = String.valueOf(e3.getMessage());
                        if (valueOf2.length() != 0) {
                            str2 = "Failed to load remote module: ".concat(valueOf2);
                        } else {
                            str2 = new String("Failed to load remote module: ");
                        }
                        Log.w("DynamiteModule", str2);
                        int i5 = mo22996a.f7779a;
                        if (i5 != 0 && interfaceC1415b.mo22996a(context, str, new C1424i(i5, 0)).f7781c == -1) {
                            DynamiteModule m22999i2 = m22999i(context, str);
                            if (longValue == 0) {
                                f7772l.remove();
                            } else {
                                f7772l.set(Long.valueOf(longValue));
                            }
                            Cursor cursor4 = c3590c2.f16188a;
                            if (cursor4 != null) {
                                cursor4.close();
                            }
                            f7771k.set(c3590c);
                            return m22999i2;
                        }
                        throw new C1414a("Remote load failed. No local fallback found.", e3, null);
                    }
                } else {
                    StringBuilder sb4 = new StringBuilder(47);
                    sb4.append("VersionPolicy returned invalid code:");
                    sb4.append(0);
                    throw new C1414a(sb4.toString(), null);
                }
            }
            int i6 = mo22996a.f7779a;
            int i7 = mo22996a.f7780b;
            StringBuilder sb5 = new StringBuilder(91);
            sb5.append("No acceptable module found. Local version is ");
            sb5.append(i6);
            sb5.append(" and remote version is ");
            sb5.append(i7);
            sb5.append(".");
            throw new C1414a(sb5.toString(), null);
        } catch (Throwable th2) {
            if (longValue == 0) {
                f7772l.remove();
            } else {
                f7772l.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = c3590c2.f16188a;
            if (cursor5 != null) {
                cursor5.close();
            }
            f7771k.set(c3590c);
            throw th2;
        }
    }

    /* renamed from: f */
    public static int m23002f(@RecentlyNonNull Context context, @RecentlyNonNull String str, boolean z) {
        Field declaredField;
        ClassLoader c3588a;
        String str2;
        Throwable th;
        RemoteException e;
        String str3;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f7768h;
                Cursor cursor = null;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        String valueOf = String.valueOf(e2);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(valueOf);
                        Log.w("DynamiteModule", sb.toString());
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool = Boolean.FALSE;
                            } else {
                                try {
                                    m22998j(classLoader);
                                } catch (C1414a unused) {
                                }
                                bool = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        } else {
                            try {
                                int m23001g = m23001g(context, str, z);
                                String str4 = f7769i;
                                if (str4 != null && !str4.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        final String str5 = f7769i;
                                        C7297q.m1883j(str5);
                                        final ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                                        c3588a = new PathClassLoader(str5, systemClassLoader) { // from class: dalvik.system.DelegateLastClassLoader
                                            static {
                                                throw new NoClassDefFoundError();
                                            }
                                        };
                                    } else {
                                        String str6 = f7769i;
                                        C7297q.m1883j(str6);
                                        c3588a = new C3588a(str6, ClassLoader.getSystemClassLoader());
                                    }
                                    m22998j(c3588a);
                                    declaredField.set(null, c3588a);
                                    f7768h = Boolean.TRUE;
                                    return m23001g;
                                }
                                return m23001g;
                            } catch (C1414a unused2) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool = Boolean.FALSE;
                            }
                        }
                        f7768h = bool;
                    }
                }
                boolean booleanValue = bool.booleanValue();
                int i = 0;
                if (booleanValue) {
                    try {
                        return m23001g(context, str, z);
                    } catch (C1414a e3) {
                        String valueOf2 = String.valueOf(e3.getMessage());
                        if (valueOf2.length() != 0) {
                            str2 = "Failed to retrieve remote module version: ".concat(valueOf2);
                        } else {
                            str2 = new String("Failed to retrieve remote module version: ");
                        }
                        Log.w("DynamiteModule", str2);
                        return 0;
                    }
                }
                C3591d m22997k = m22997k(context);
                if (m22997k != null) {
                    try {
                        try {
                            int m18560j = m22997k.m18560j();
                            if (m18560j >= 3) {
                                Cursor cursor2 = (Cursor) BinderC3514b.m18740t0(m22997k.m18561e3(BinderC3514b.m18741L0(context), str, z, f7772l.get().longValue()));
                                if (cursor2 != null) {
                                    try {
                                        if (cursor2.moveToFirst()) {
                                            int i2 = cursor2.getInt(0);
                                            if (i2 <= 0 || !m23000h(cursor2)) {
                                                cursor = cursor2;
                                            }
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            i = i2;
                                        }
                                    } catch (RemoteException e4) {
                                        e = e4;
                                        cursor = cursor2;
                                        String valueOf3 = String.valueOf(e.getMessage());
                                        if (valueOf3.length() != 0) {
                                            str3 = "Failed to retrieve remote module version: ".concat(valueOf3);
                                        } else {
                                            str3 = new String("Failed to retrieve remote module version: ");
                                        }
                                        Log.w("DynamiteModule", str3);
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        return i;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        cursor = cursor2;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        throw th;
                                    }
                                }
                                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                            } else if (m18560j == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i = m22997k.m18564A2(BinderC3514b.m18741L0(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i = m22997k.m18563L0(BinderC3514b.m18741L0(context), str, z);
                            }
                        } catch (RemoteException e5) {
                            e = e5;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                return i;
            }
        } catch (Throwable th4) {
            C1047h.m24764a(context, th4);
            throw th4;
        }
    }

    /* renamed from: k */
    public static C3591d m22997k(Context context) {
        String str;
        C3591d c3591d;
        synchronized (DynamiteModule.class) {
            C3591d c3591d2 = f7775o;
            if (c3591d2 != null) {
                return c3591d2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    c3591d = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    if (queryLocalInterface instanceof C3591d) {
                        c3591d = (C3591d) queryLocalInterface;
                    } else {
                        c3591d = new C3591d(iBinder);
                    }
                }
                if (c3591d != null) {
                    f7775o = c3591d;
                    return c3591d;
                }
            } catch (Exception e) {
                String valueOf = String.valueOf(e.getMessage());
                if (valueOf.length() != 0) {
                    str = "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf);
                } else {
                    str = new String("Failed to load IDynamiteLoader from GmsCore: ");
                }
                Log.e("DynamiteModule", str);
            }
            return null;
        }
    }

    @RecentlyNonNull
    /* renamed from: d */
    public IBinder m23004d(@RecentlyNonNull String str) {
        String str2;
        try {
            return (IBinder) this.f7777a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = "Failed to instantiate module class: ".concat(valueOf);
            } else {
                str2 = new String("Failed to instantiate module class: ");
            }
            throw new C1414a(str2, e, null);
        }
    }

    /* renamed from: i */
    public static DynamiteModule m22999i(Context context, String str) {
        String str2;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "Selected local version of ".concat(valueOf);
        } else {
            str2 = new String("Selected local version of ");
        }
        Log.i("DynamiteModule", str2);
        return new DynamiteModule(context.getApplicationContext());
    }
}
