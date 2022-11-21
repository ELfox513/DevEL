package p018b5;
/* renamed from: b5.g6 */
/* loaded from: classes2.dex */
public final class C0664g6 {

    /* renamed from: a */
    public static volatile AbstractC0936w6<Boolean> f1833a = AbstractC0936w6.m25041c();

    /* renamed from: b */
    public static final Object f1834b = new Object();

    /* JADX WARN: Can't wrap try/catch for region: R(11:18|(1:20)(8:33|(1:35)(1:41)|36|(2:38|(1:40))|27|28|29|30)|21|22|23|24|(1:26)|27|28|29|30) */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m25930a(android.content.Context r5, android.net.Uri r6) {
        /*
            java.lang.String r6 = r6.getAuthority()
            java.lang.String r0 = "com.google.android.gms.phenotype"
            boolean r0 = r0.equals(r6)
            r1 = 0
            if (r0 != 0) goto L2e
            java.lang.String r5 = java.lang.String.valueOf(r6)
            int r5 = r5.length()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r5 = r5 + 91
            r0.<init>(r5)
            r0.append(r6)
            java.lang.String r5 = " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."
            r0.append(r5)
            java.lang.String r5 = "PhenotypeClientHelper"
            java.lang.String r6 = r0.toString()
            android.util.Log.e(r5, r6)
            return r1
        L2e:
            b5.w6<java.lang.Boolean> r6 = p018b5.C0664g6.f1833a
            boolean r6 = r6.mo24914b()
            if (r6 == 0) goto L43
            b5.w6<java.lang.Boolean> r5 = p018b5.C0664g6.f1833a
            java.lang.Object r5 = r5.mo24915a()
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            return r5
        L43:
            java.lang.Object r6 = p018b5.C0664g6.f1834b
            monitor-enter(r6)
            b5.w6<java.lang.Boolean> r0 = p018b5.C0664g6.f1833a     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r0.mo24914b()     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L5c
            b5.w6<java.lang.Boolean> r5 = p018b5.C0664g6.f1833a     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r5 = r5.mo24915a()     // Catch: java.lang.Throwable -> Lb3
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> Lb3
            boolean r5 = r5.booleanValue()     // Catch: java.lang.Throwable -> Lb3
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Lb3
            return r5
        L5c:
            java.lang.String r0 = "com.google.android.gms"
            java.lang.String r2 = r5.getPackageName()     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L69
            goto L8a
        L69:
            android.content.pm.PackageManager r0 = r5.getPackageManager()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = "com.google.android.gms.phenotype"
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lb3
            r4 = 29
            if (r3 >= r4) goto L77
            r3 = 0
            goto L79
        L77:
            r3 = 268435456(0x10000000, float:2.5243549E-29)
        L79:
            android.content.pm.ProviderInfo r0 = r0.resolveContentProvider(r2, r3)     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L9b
            java.lang.String r2 = "com.google.android.gms"
            java.lang.String r0 = r0.packageName     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r2.equals(r0)     // Catch: java.lang.Throwable -> Lb3
            if (r0 != 0) goto L8a
            goto L9b
        L8a:
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = "com.google.android.gms"
            android.content.pm.ApplicationInfo r5 = r5.getApplicationInfo(r0, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L9b java.lang.Throwable -> Lb3
            int r5 = r5.flags     // Catch: java.lang.Throwable -> Lb3
            r5 = r5 & 129(0x81, float:1.81E-43)
            if (r5 == 0) goto L9b
            r1 = 1
        L9b:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.Throwable -> Lb3
            b5.w6 r5 = p018b5.AbstractC0936w6.m25040d(r5)     // Catch: java.lang.Throwable -> Lb3
            p018b5.C0664g6.f1833a = r5     // Catch: java.lang.Throwable -> Lb3
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Lb3
            b5.w6<java.lang.Boolean> r5 = p018b5.C0664g6.f1833a
            java.lang.Object r5 = r5.mo24915a()
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            return r5
        Lb3:
            r5 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Lb3
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0664g6.m25930a(android.content.Context, android.net.Uri):boolean");
    }
}
