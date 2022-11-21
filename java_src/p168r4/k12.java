package p168r4;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.ads.AdService;
import java.util.HashMap;
import java.util.Map;
import p004a3.BinderC0073n;
import p016b3.C0497k2;
import p016b3.InterfaceC0548y0;
import p026c4.C1054o;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p163r.C5481o;
import p219x2.C7239a;
import p235z2.C7601t;
/* renamed from: r4.k12 */
/* loaded from: classes2.dex */
public final class k12 extends je0 {

    /* renamed from: a */
    public final Context f26222a;

    /* renamed from: b */
    public final ls1 f26223b;

    /* renamed from: d */
    public final hm0 f26224d;

    /* renamed from: k */
    public final c12 f26225k;

    /* renamed from: p */
    public final xt2 f26226p;

    public k12(Context context, c12 c12Var, hm0 hm0Var, ls1 ls1Var, xt2 xt2Var) {
        this.f26222a = context;
        this.f26223b = ls1Var;
        this.f26224d = hm0Var;
        this.f26225k = c12Var;
        this.f26226p = xt2Var;
    }

    /* renamed from: h7 */
    public static void m10115h7(Context context, ls1 ls1Var, xt2 xt2Var, c12 c12Var, String str, String str2) {
        m10114i7(context, ls1Var, xt2Var, c12Var, str, str2, new HashMap());
    }

    /* renamed from: j7 */
    public final void m10113j7(String str, String str2, Map<String, String> map) {
        m10114i7(this.f26222a, this.f26223b, this.f26226p, this.f26225k, str, str2, map);
    }

    /* renamed from: i7 */
    public static void m10114i7(Context context, ls1 ls1Var, xt2 xt2Var, c12 c12Var, String str, String str2, Map<String, String> map) {
        String m9952f;
        String str3 = "offline";
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            wt2 m5590a = wt2.m5590a(str2);
            m5590a.m5588c("gqi", str);
            C7601t.m939d();
            if (true == C0497k2.m26313i(context)) {
                str3 = "online";
            }
            m5590a.m5588c("device_connectivity", str3);
            m5590a.m5588c("event_timestamp", String.valueOf(C7601t.m932k().mo24763a()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                m5590a.m5588c(entry.getKey(), entry.getValue());
            }
            m9952f = xt2Var.mo4984b(m5590a);
        } else {
            ks1 m9572d = ls1Var.m9572d();
            m9572d.m9954d("gqi", str);
            m9572d.m9954d("action", str2);
            C7601t.m939d();
            if (true == C0497k2.m26313i(context)) {
                str3 = "online";
            }
            m9572d.m9954d("device_connectivity", str3);
            m9572d.m9954d("event_timestamp", String.valueOf(C7601t.m932k().mo24763a()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                m9572d.m9954d(entry2.getKey(), entry2.getValue());
            }
            m9952f = m9572d.m9952f();
        }
        c12Var.m12657g(new e12(C7601t.m932k().mo24763a(), str, m9952f, 2));
    }

    @Override // p168r4.ke0
    /* renamed from: R0 */
    public final void mo10054R0(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (!stringExtra.equals("offline_notification_clicked") && !stringExtra.equals("offline_notification_dismissed")) {
            return;
        }
        String stringExtra2 = intent.getStringExtra("gws_query_id");
        String stringExtra3 = intent.getStringExtra("uri");
        C7601t.m939d();
        boolean m26313i = C0497k2.m26313i(this.f26222a);
        HashMap hashMap = new HashMap();
        char c = 2;
        if (stringExtra.equals("offline_notification_clicked")) {
            hashMap.put("offline_notification_action", "offline_notification_clicked");
            if (true == m26313i) {
                c = 1;
            }
            hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
            hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
            try {
                Context context = this.f26222a;
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                if (launchIntentForPackage == null) {
                    launchIntentForPackage = new Intent("android.intent.action.VIEW");
                    launchIntentForPackage.setData(Uri.parse(stringExtra3));
                }
                launchIntentForPackage.addFlags(268435456);
                context.startActivity(launchIntentForPackage);
                hashMap.put("olaa", "olas");
            } catch (ActivityNotFoundException unused) {
                hashMap.put("olaa", "olaf");
            }
        } else {
            hashMap.put("offline_notification_action", "offline_notification_dismissed");
        }
        m10113j7(stringExtra2, "offline_notification_action", hashMap);
        try {
            SQLiteDatabase writableDatabase = this.f26225k.getWritableDatabase();
            if (c == 1) {
                this.f26225k.m12660d(writableDatabase, this.f26224d, stringExtra2);
            } else {
                c12.m12653k(writableDatabase, stringExtra2);
            }
        } catch (SQLiteException e) {
            cm0.m12440c("Failed to get writable offline buffering database: ".concat(e.toString()));
        }
    }

    @Override // p168r4.ke0
    /* renamed from: g */
    public final void mo10052g() {
        c12 c12Var = this.f26225k;
        final hm0 hm0Var = this.f26224d;
        c12Var.m12661c(new ps2(hm0Var) { // from class: r4.w02

            /* renamed from: a */
            public final hm0 f33003a;

            {
                this.f33003a = hm0Var;
            }

            @Override // p168r4.ps2
            /* renamed from: a */
            public final Object mo4065a(Object obj) {
                c12.m12652m((SQLiteDatabase) obj, this.f33003a);
                return null;
            }
        });
    }

    /* renamed from: g7 */
    public static void m10116g7(final Activity activity, final BinderC0073n binderC0073n, final InterfaceC0548y0 interfaceC0548y0, final c12 c12Var, final ls1 ls1Var, final xt2 xt2Var, final String str, final String str2) {
        String string;
        String string2;
        String string3;
        String string4;
        C7601t.m939d();
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, C7601t.m937f().mo26268m());
        final Resources m9057j = C7601t.m935h().m9057j();
        if (m9057j == null) {
            string = "Open ad when you're back online.";
        } else {
            string = m9057j.getString(C7239a.f36629g);
        }
        AlertDialog.Builder title = builder.setTitle(string);
        if (m9057j == null) {
            string2 = "We'll send you a notification with a link to the advertiser site.";
        } else {
            string2 = m9057j.getString(C7239a.f36628f);
        }
        AlertDialog.Builder message = title.setMessage(string2);
        if (m9057j == null) {
            string3 = "OK";
        } else {
            string3 = m9057j.getString(C7239a.f36625c);
        }
        AlertDialog.Builder positiveButton = message.setPositiveButton(string3, new DialogInterface.OnClickListener(ls1Var, activity, xt2Var, c12Var, str, interfaceC0548y0, str2, m9057j, binderC0073n) { // from class: r4.f12

            /* renamed from: a */
            public final ls1 f23245a;

            /* renamed from: b */
            public final Activity f23246b;

            /* renamed from: d */
            public final xt2 f23247d;

            /* renamed from: k */
            public final c12 f23248k;

            /* renamed from: p */
            public final String f23249p;

            /* renamed from: q */
            public final InterfaceC0548y0 f23250q;

            /* renamed from: r */
            public final String f23251r;

            /* renamed from: s */
            public final Resources f23252s;

            /* renamed from: t */
            public final BinderC0073n f23253t;

            {
                this.f23245a = ls1Var;
                this.f23246b = activity;
                this.f23247d = xt2Var;
                this.f23248k = c12Var;
                this.f23249p = str;
                this.f23250q = interfaceC0548y0;
                this.f23251r = str2;
                this.f23252s = m9057j;
                this.f23253t = binderC0073n;
            }

            /* JADX WARN: Code restructure failed: missing block: B:7:0x003d, code lost:
                if (r0.zze(p060f4.BinderC3514b.m18741L0(r10), r14, r13) == false) goto L14;
             */
            @Override // android.content.DialogInterface.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onClick(android.content.DialogInterface r19, int r20) {
                /*
                    r18 = this;
                    r1 = r18
                    r4.ls1 r9 = r1.f23245a
                    android.app.Activity r10 = r1.f23246b
                    r4.xt2 r11 = r1.f23247d
                    r4.c12 r12 = r1.f23248k
                    java.lang.String r13 = r1.f23249p
                    b3.y0 r0 = r1.f23250q
                    java.lang.String r14 = r1.f23251r
                    android.content.res.Resources r15 = r1.f23252s
                    a3.n r8 = r1.f23253t
                    if (r9 == 0) goto L34
                    java.util.HashMap r7 = new java.util.HashMap
                    r7.<init>()
                    java.lang.String r2 = "dialog_action"
                    java.lang.String r3 = "confirm"
                    r7.put(r2, r3)
                    java.lang.String r16 = "dialog_click"
                    r2 = r10
                    r3 = r9
                    r4 = r11
                    r5 = r12
                    r6 = r13
                    r17 = r7
                    r7 = r16
                    r1 = r8
                    r8 = r17
                    p168r4.k12.m10114i7(r2, r3, r4, r5, r6, r7, r8)
                    goto L35
                L34:
                    r1 = r8
                L35:
                    f4.a r2 = p060f4.BinderC3514b.m18741L0(r10)     // Catch: android.os.RemoteException -> L40
                    boolean r0 = r0.zze(r2, r14, r13)     // Catch: android.os.RemoteException -> L40
                    if (r0 != 0) goto L55
                    goto L46
                L40:
                    r0 = move-exception
                    java.lang.String r2 = "Failed to schedule offline notification poster."
                    p168r4.cm0.m12439d(r2, r0)
                L46:
                    r12.m12658f(r13)
                    if (r9 == 0) goto L55
                    java.lang.String r7 = "offline_notification_worker_not_scheduled"
                    r2 = r10
                    r3 = r9
                    r4 = r11
                    r5 = r12
                    r6 = r13
                    p168r4.k12.m10115h7(r2, r3, r4, r5, r6, r7)
                L55:
                    p235z2.C7601t.m939d()
                    b3.g r0 = p235z2.C7601t.m937f()
                    android.app.AlertDialog$Builder r2 = new android.app.AlertDialog$Builder
                    int r0 = r0.mo26268m()
                    r2.<init>(r10, r0)
                    if (r15 != 0) goto L6a
                    java.lang.String r0 = "You'll get a notification with the link when you're back online"
                    goto L70
                L6a:
                    int r0 = p219x2.C7239a.f36626d
                    java.lang.String r0 = r15.getString(r0)
                L70:
                    android.app.AlertDialog$Builder r0 = r2.setMessage(r0)
                    r4.i12 r3 = new r4.i12
                    r3.<init>(r1)
                    r0.setOnCancelListener(r3)
                    android.app.AlertDialog r0 = r2.create()
                    r0.show()
                    java.util.Timer r2 = new java.util.Timer
                    r2.<init>()
                    r4.j12 r3 = new r4.j12
                    r3.<init>(r0, r2, r1)
                    r0 = 3000(0xbb8, double:1.482E-320)
                    r2.schedule(r3, r0)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: p168r4.f12.onClick(android.content.DialogInterface, int):void");
            }
        });
        if (m9057j == null) {
            string4 = "No thanks";
        } else {
            string4 = m9057j.getString(C7239a.f36627e);
        }
        positiveButton.setNegativeButton(string4, new DialogInterface.OnClickListener(c12Var, str, ls1Var, activity, xt2Var, binderC0073n) { // from class: r4.g12

            /* renamed from: a */
            public final c12 f23825a;

            /* renamed from: b */
            public final String f23826b;

            /* renamed from: d */
            public final ls1 f23827d;

            /* renamed from: k */
            public final Activity f23828k;

            /* renamed from: p */
            public final xt2 f23829p;

            /* renamed from: q */
            public final BinderC0073n f23830q;

            {
                this.f23825a = c12Var;
                this.f23826b = str;
                this.f23827d = ls1Var;
                this.f23828k = activity;
                this.f23829p = xt2Var;
                this.f23830q = binderC0073n;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                c12 c12Var2 = this.f23825a;
                String str3 = this.f23826b;
                ls1 ls1Var2 = this.f23827d;
                Activity activity2 = this.f23828k;
                xt2 xt2Var2 = this.f23829p;
                BinderC0073n binderC0073n2 = this.f23830q;
                c12Var2.m12658f(str3);
                if (ls1Var2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    k12.m10114i7(activity2, ls1Var2, xt2Var2, c12Var2, str3, "dialog_click", hashMap);
                }
                if (binderC0073n2 != null) {
                    binderC0073n2.m27702a();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(c12Var, str, ls1Var, activity, xt2Var, binderC0073n) { // from class: r4.h12

            /* renamed from: a */
            public final c12 f24397a;

            /* renamed from: b */
            public final String f24398b;

            /* renamed from: d */
            public final ls1 f24399d;

            /* renamed from: k */
            public final Activity f24400k;

            /* renamed from: p */
            public final xt2 f24401p;

            /* renamed from: q */
            public final BinderC0073n f24402q;

            {
                this.f24397a = c12Var;
                this.f24398b = str;
                this.f24399d = ls1Var;
                this.f24400k = activity;
                this.f24401p = xt2Var;
                this.f24402q = binderC0073n;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                c12 c12Var2 = this.f24397a;
                String str3 = this.f24398b;
                ls1 ls1Var2 = this.f24399d;
                Activity activity2 = this.f24400k;
                xt2 xt2Var2 = this.f24401p;
                BinderC0073n binderC0073n2 = this.f24402q;
                c12Var2.m12658f(str3);
                if (ls1Var2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    k12.m10114i7(activity2, ls1Var2, xt2Var2, c12Var2, str3, "dialog_click", hashMap);
                }
                if (binderC0073n2 != null) {
                    binderC0073n2.m27702a();
                }
            }
        });
        builder.create().show();
    }

    @Override // p168r4.ke0
    /* renamed from: U0 */
    public final void mo10053U0(InterfaceC3512a interfaceC3512a, String str, String str2) {
        String string;
        String string2;
        Object systemService;
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        C7601t.m939d();
        if (C1054o.m24730k()) {
            NotificationChannel notificationChannel = new NotificationChannel("offline_notification_channel", "AdMob Offline Notifications", 2);
            notificationChannel.setShowBadge(false);
            systemService = context.getSystemService(NotificationManager.class);
            ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        }
        Intent intent = new Intent();
        intent.setClass(context, AdService.class);
        intent.setAction("offline_notification_clicked");
        intent.putExtra("offline_notification_action", "offline_notification_clicked");
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str);
        int i = f03.f23235a;
        PendingIntent m11650a = f03.m11650a(context, 0, intent, i | 1073741824, 0);
        Intent intent2 = new Intent();
        intent2.setClass(context, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent m11650a2 = f03.m11650a(context, 0, intent2, i | 1073741824, 0);
        Resources m9057j = C7601t.m935h().m9057j();
        C5481o.C5485d c5485d = new C5481o.C5485d(context, "offline_notification_channel");
        if (m9057j == null) {
            string = "View the ad you saved when you were offline";
        } else {
            string = m9057j.getString(C7239a.f36624b);
        }
        C5481o.C5485d m13216j = c5485d.m13216j(string);
        if (m9057j == null) {
            string2 = "Tap to open ad";
        } else {
            string2 = m9057j.getString(C7239a.f36623a);
        }
        ((NotificationManager) context.getSystemService("notification")).notify(str2, 54321, m13216j.m13217i(string2).m13221e(true).m13215k(m11650a2).m13218h(m11650a).m13211o(context.getApplicationInfo().icon).m13224b());
        m10113j7(str2, "offline_notification_impression", new HashMap());
    }
}
