package p168r4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import p026c4.C1054o;
import p235z2.C7601t;
/* renamed from: r4.sg0 */
/* loaded from: classes2.dex */
public final class sg0 {

    /* renamed from: A */
    public int f31327A;

    /* renamed from: B */
    public final String f31328B;

    /* renamed from: C */
    public boolean f31329C;

    /* renamed from: a */
    public int f31330a;

    /* renamed from: b */
    public boolean f31331b;

    /* renamed from: c */
    public boolean f31332c;

    /* renamed from: d */
    public int f31333d;

    /* renamed from: e */
    public int f31334e;

    /* renamed from: f */
    public int f31335f;

    /* renamed from: g */
    public String f31336g;

    /* renamed from: h */
    public int f31337h;

    /* renamed from: i */
    public int f31338i;

    /* renamed from: j */
    public int f31339j;

    /* renamed from: k */
    public boolean f31340k;

    /* renamed from: l */
    public int f31341l;

    /* renamed from: m */
    public double f31342m;

    /* renamed from: n */
    public boolean f31343n;

    /* renamed from: o */
    public String f31344o;

    /* renamed from: p */
    public String f31345p;

    /* renamed from: q */
    public final boolean f31346q;

    /* renamed from: r */
    public final boolean f31347r;

    /* renamed from: s */
    public final String f31348s;

    /* renamed from: t */
    public final boolean f31349t;

    /* renamed from: u */
    public final boolean f31350u;

    /* renamed from: v */
    public final boolean f31351v;

    /* renamed from: w */
    public final String f31352w;

    /* renamed from: x */
    public final String f31353x;

    /* renamed from: y */
    public float f31354y;

    /* renamed from: z */
    public int f31355z;

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(1:3)(1:34)|4|(1:6)|7|(3:28|29|(7:31|10|11|12|(1:14)|16|(2:23|24)(1:22)))|9|10|11|12|(0)|16|(1:18)(3:20|23|24)) */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009e A[Catch: Exception -> 0x00bf, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bf, blocks: (B:20:0x0090, B:22:0x009e), top: B:34:0x0090 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public sg0(android.content.Context r7) {
        /*
            r6 = this;
            r6.<init>()
            android.content.pm.PackageManager r0 = r7.getPackageManager()
            r6.m7167b(r7)
            r6.m7166c(r7)
            r6.m7165d(r7)
            java.util.Locale r1 = java.util.Locale.getDefault()
            java.lang.String r2 = "geo:0,0?q=donuts"
            android.content.pm.ResolveInfo r2 = m7164e(r0, r2)
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L20
            r2 = 1
            goto L21
        L20:
            r2 = 0
        L21:
            r6.f31346q = r2
            java.lang.String r2 = "http://www.google.com"
            android.content.pm.ResolveInfo r2 = m7164e(r0, r2)
            if (r2 == 0) goto L2c
            goto L2d
        L2c:
            r3 = 0
        L2d:
            r6.f31347r = r3
            java.lang.String r2 = r1.getCountry()
            r6.f31348s = r2
            p168r4.C6479yu.m4568a()
            boolean r2 = p168r4.vl0.m6117k()
            r6.f31349t = r2
            boolean r2 = p026c4.C1049j.m24757c(r7)
            r6.f31350u = r2
            boolean r2 = p026c4.C1049j.m24756d(r7)
            r6.f31351v = r2
            java.lang.String r1 = r1.getLanguage()
            r6.f31352w = r1
            java.lang.String r1 = "market://details?id=com.google.android.gms.ads"
            android.content.pm.ResolveInfo r0 = m7164e(r0, r1)
            java.lang.String r1 = "."
            r2 = 0
            if (r0 != 0) goto L5d
        L5b:
            r0 = r2
            goto L8e
        L5d:
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            if (r0 != 0) goto L62
            goto L5b
        L62:
            d4.d r3 = p042d4.C3325e.m19140a(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            java.lang.String r5 = r0.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            android.content.pm.PackageInfo r3 = r3.m19143f(r5, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            if (r3 == 0) goto L5b
            int r3 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            java.lang.String r0 = r0.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            java.lang.String r4 = java.lang.String.valueOf(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            int r4 = r4.length()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            int r4 = r4 + 12
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            r5.<init>(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            r5.append(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            r5.append(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            r5.append(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
            java.lang.String r0 = r5.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5b
        L8e:
            r6.f31353x = r0
            d4.d r0 = p042d4.C3325e.m19140a(r7)     // Catch: java.lang.Exception -> Lbf
            java.lang.String r3 = "com.android.vending"
            r4 = 128(0x80, float:1.794E-43)
            android.content.pm.PackageInfo r0 = r0.m19143f(r3, r4)     // Catch: java.lang.Exception -> Lbf
            if (r0 == 0) goto Lc0
            int r3 = r0.versionCode     // Catch: java.lang.Exception -> Lbf
            java.lang.String r0 = r0.packageName     // Catch: java.lang.Exception -> Lbf
            java.lang.String r4 = java.lang.String.valueOf(r0)     // Catch: java.lang.Exception -> Lbf
            int r4 = r4.length()     // Catch: java.lang.Exception -> Lbf
            int r4 = r4 + 12
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lbf
            r5.<init>(r4)     // Catch: java.lang.Exception -> Lbf
            r5.append(r3)     // Catch: java.lang.Exception -> Lbf
            r5.append(r1)     // Catch: java.lang.Exception -> Lbf
            r5.append(r0)     // Catch: java.lang.Exception -> Lbf
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Exception -> Lbf
            goto Lc0
        Lbf:
        Lc0:
            r6.f31328B = r2
            android.content.res.Resources r7 = r7.getResources()
            if (r7 != 0) goto Lc9
            return
        Lc9:
            android.util.DisplayMetrics r7 = r7.getDisplayMetrics()
            if (r7 != 0) goto Ld0
            return
        Ld0:
            float r0 = r7.density
            r6.f31354y = r0
            int r0 = r7.widthPixels
            r6.f31355z = r0
            int r7 = r7.heightPixels
            r6.f31327A = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.sg0.<init>(android.content.Context):void");
    }

    /* renamed from: a */
    public final tg0 m7168a() {
        return new tg0(this.f31330a, this.f31346q, this.f31347r, this.f31336g, this.f31348s, this.f31349t, this.f31350u, this.f31351v, this.f31331b, this.f31332c, this.f31352w, this.f31353x, this.f31328B, this.f31333d, this.f31337h, this.f31338i, this.f31339j, this.f31334e, this.f31335f, this.f31354y, this.f31355z, this.f31327A, this.f31342m, this.f31343n, this.f31340k, this.f31341l, this.f31344o, this.f31329C, this.f31345p);
    }

    /* renamed from: e */
    public static ResolveInfo m7164e(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            C7601t.m935h().m9056k(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    /* renamed from: b */
    public final void m7167b(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f31330a = audioManager.getMode();
                this.f31331b = audioManager.isMusicActive();
                this.f31332c = audioManager.isSpeakerphoneOn();
                this.f31333d = audioManager.getStreamVolume(3);
                this.f31334e = audioManager.getRingerMode();
                this.f31335f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                C7601t.m935h().m9056k(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f31330a = -2;
        this.f31331b = false;
        this.f31332c = false;
        this.f31333d = 0;
        this.f31334e = 2;
        this.f31335f = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    @android.annotation.TargetApi(16)
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7166c(android.content.Context r6) {
        /*
            r5 = this;
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r6.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            java.lang.String r1 = "connectivity"
            java.lang.Object r1 = r6.getSystemService(r1)
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1
            java.lang.String r2 = r0.getNetworkOperator()
            r5.f31336g = r2
            boolean r2 = p026c4.C1054o.m24729l()
            r3 = 0
            if (r2 == 0) goto L31
            r4.jz<java.lang.Boolean> r2 = p168r4.C6225rz.f31000d6
            r4.pz r4 = p168r4.C5592av.m12935c()
            java.lang.Object r2 = r4.m8098c(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L31
            r2 = 0
            goto L35
        L31:
            int r2 = r0.getNetworkType()
        L35:
            r5.f31338i = r2
            int r0 = r0.getPhoneType()
            r5.f31339j = r0
            r0 = -2
            r5.f31337h = r0
            r5.f31340k = r3
            r0 = -1
            r5.f31341l = r0
            p235z2.C7601t.m939d()
            java.lang.String r2 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r6 = p016b3.C0497k2.m26320e(r6, r2)
            if (r6 == 0) goto L6f
            android.net.NetworkInfo r6 = r1.getActiveNetworkInfo()
            if (r6 == 0) goto L67
            int r0 = r6.getType()
            r5.f31337h = r0
            android.net.NetworkInfo$DetailedState r6 = r6.getDetailedState()
            int r6 = r6.ordinal()
            r5.f31341l = r6
            goto L69
        L67:
            r5.f31337h = r0
        L69:
            boolean r6 = r1.isActiveNetworkMetered()
            r5.f31340k = r6
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.sg0.m7166c(android.content.Context):void");
    }

    /* renamed from: d */
    public final void m7165d(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            this.f31342m = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
            this.f31343n = (intExtra == 2 || intExtra == 5) ? true : true;
            return;
        }
        this.f31342m = -1.0d;
        this.f31343n = false;
    }

    public sg0(Context context, tg0 tg0Var) {
        m7167b(context);
        m7166c(context);
        m7165d(context);
        this.f31344o = Build.FINGERPRINT;
        this.f31345p = Build.DEVICE;
        boolean z = false;
        if (C1054o.m24739b() && q00.m8086a(context)) {
            z = true;
        }
        this.f31329C = z;
        this.f31346q = tg0Var.f31840a;
        this.f31347r = tg0Var.f31841b;
        this.f31348s = tg0Var.f31843d;
        this.f31349t = tg0Var.f31844e;
        this.f31350u = tg0Var.f31845f;
        this.f31351v = tg0Var.f31846g;
        this.f31352w = tg0Var.f31847h;
        this.f31353x = tg0Var.f31848i;
        this.f31328B = tg0Var.f31849j;
        this.f31354y = tg0Var.f31852m;
        this.f31355z = tg0Var.f31853n;
        this.f31327A = tg0Var.f31854o;
    }
}
