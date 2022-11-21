package p185t3;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import androidx.fragment.app.ActivityC0256d;
import com.google.android.gms.common.api.GoogleApiActivity;
import p026c4.C1049j;
import p026c4.C1054o;
import p163r.C5481o;
import p176s3.C6578a;
import p176s3.C6579b;
import p203v3.AbstractC7015h0;
import p203v3.C7018i0;
import p203v3.InterfaceC7014h;
import p220x3.AbstractDialogInterface$OnClickListenerC7259e0;
import p220x3.C7244b0;
import p220x3.C7297q;
/* renamed from: t3.g */
/* loaded from: classes.dex */
public class C6744g extends C6746h {

    /* renamed from: c */
    public String f35414c;

    /* renamed from: e */
    public static final Object f35412e = new Object();

    /* renamed from: f */
    public static final C6744g f35413f = new C6744g();

    /* renamed from: d */
    public static final int f35411d = C6746h.f35418a;

    /* renamed from: m */
    public static C6744g m3508m() {
        return f35413f;
    }

    @Override // p185t3.C6746h
    @RecentlyNullable
    /* renamed from: b */
    public Intent mo3494b(Context context, int i, String str) {
        return super.mo3494b(context, i, str);
    }

    @Override // p185t3.C6746h
    @RecentlyNullable
    /* renamed from: c */
    public PendingIntent mo3493c(@RecentlyNonNull Context context, int i, int i2) {
        return super.mo3493c(context, i, i2);
    }

    @Override // p185t3.C6746h
    /* renamed from: e */
    public final String mo3491e(int i) {
        return super.mo3491e(i);
    }

    @Override // p185t3.C6746h
    /* renamed from: g */
    public int mo3489g(@RecentlyNonNull Context context) {
        return super.mo3489g(context);
    }

    @Override // p185t3.C6746h
    /* renamed from: h */
    public int mo3488h(@RecentlyNonNull Context context, int i) {
        return super.mo3488h(context, i);
    }

    @Override // p185t3.C6746h
    /* renamed from: j */
    public final boolean mo3486j(int i) {
        return super.mo3486j(i);
    }

    /* renamed from: o */
    public void m3506o(@RecentlyNonNull Context context, int i) {
        m3504q(context, i, null, m3492d(context, i, 0, "n"));
    }

    @TargetApi(20)
    /* renamed from: q */
    public final void m3504q(Context context, int i, String str, PendingIntent pendingIntent) {
        int i2;
        String str2;
        NotificationChannel notificationChannel;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            m3498w(context);
        } else if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
            }
        } else {
            String m2036b = C7244b0.m2036b(context, i);
            String m2034d = C7244b0.m2034d(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) C7297q.m1883j(context.getSystemService("notification"));
            C5481o.C5485d m13210p = new C5481o.C5485d(context).m13213m(true).m13221e(true).m13216j(m2036b).m13210p(new C5481o.C5483b().m13227h(m2034d));
            if (C1049j.m24754f(context)) {
                C7297q.m1880m(C1054o.m24734g());
                m13210p.m13211o(context.getApplicationInfo().icon).m13212n(2);
                if (C1049j.m24752h(context)) {
                    m13210p.m13225a(C6578a.f35126a, resources.getString(C6579b.f35141o), pendingIntent);
                } else {
                    m13210p.m13218h(pendingIntent);
                }
            } else {
                m13210p.m13211o(17301642).m13209q(resources.getString(C6579b.f35134h)).m13208r(System.currentTimeMillis()).m13218h(pendingIntent).m13217i(m2034d);
            }
            if (C1054o.m24730k()) {
                C7297q.m1880m(C1054o.m24730k());
                synchronized (f35412e) {
                    str2 = this.f35414c;
                }
                if (str2 == null) {
                    str2 = "com.google.android.gms.availability";
                    notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String m2031g = C7244b0.m2031g(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", m2031g, 4));
                    } else if (!m2031g.contentEquals(notificationChannel.getName())) {
                        notificationChannel.setName(m2031g);
                        notificationManager.createNotificationChannel(notificationChannel);
                    }
                }
                m13210p.m13220f(str2);
            }
            Notification m13224b = m13210p.m13224b();
            if (i != 1 && i != 2 && i != 3) {
                i2 = 39789;
            } else {
                C6756m.f35428b.set(false);
                i2 = 10436;
            }
            notificationManager.notify(i2, m13224b);
        }
    }

    /* renamed from: u */
    public final Dialog m3500u(Context context, int i, AbstractDialogInterface$OnClickListenerC7259e0 abstractDialogInterface$OnClickListenerC7259e0, DialogInterface.OnCancelListener onCancelListener) {
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(C7244b0.m2035c(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String m2033e = C7244b0.m2033e(context, i);
        if (m2033e != null) {
            builder.setPositiveButton(m2033e, abstractDialogInterface$OnClickListenerC7259e0);
        }
        String m2037a = C7244b0.m2037a(context, i);
        if (m2037a != null) {
            builder.setTitle(m2037a);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i)), new IllegalArgumentException());
        return builder.create();
    }

    @RecentlyNullable
    /* renamed from: k */
    public Dialog m3510k(@RecentlyNonNull Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return m3500u(activity, i, AbstractDialogInterface$OnClickListenerC7259e0.m1951b(activity, mo3494b(activity, i, "d"), i2), onCancelListener);
    }

    /* renamed from: p */
    public final boolean m3505p(@RecentlyNonNull Activity activity, @RecentlyNonNull InterfaceC7014h interfaceC7014h, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog m3500u = m3500u(activity, i, AbstractDialogInterface$OnClickListenerC7259e0.m1950c(interfaceC7014h, mo3494b(activity, i, "d"), 2), onCancelListener);
        if (m3500u == null) {
            return false;
        }
        m3499v(activity, m3500u, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    @RecentlyNonNull
    /* renamed from: s */
    public final Dialog m3502s(@RecentlyNonNull Activity activity, @RecentlyNonNull DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(C7244b0.m2035c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        m3499v(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* renamed from: t */
    public final C7018i0 m3501t(Context context, AbstractC7015h0 abstractC7015h0) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        C7018i0 c7018i0 = new C7018i0(abstractC7015h0);
        context.registerReceiver(c7018i0, intentFilter);
        c7018i0.m2658a(context);
        if (!m3487i(context, "com.google.android.gms")) {
            abstractC7015h0.mo2668a();
            c7018i0.m2657b();
            return null;
        }
        return c7018i0;
    }

    /* renamed from: v */
    public final void m3499v(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof ActivityC0256d) {
                C6760p.m3456g0(dialog, onCancelListener).mo3457f0(((ActivityC0256d) activity).m27090m(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        DialogFragmentC6736c.m3522a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    /* renamed from: w */
    public final void m3498w(Context context) {
        new HandlerC6761q(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    @RecentlyNullable
    /* renamed from: l */
    public PendingIntent m3509l(@RecentlyNonNull Context context, @RecentlyNonNull C6734b c6734b) {
        if (c6734b.m3525a1()) {
            return c6734b.m3526Z0();
        }
        return mo3493c(context, c6734b.m3528X0(), 0);
    }

    /* renamed from: n */
    public boolean m3507n(@RecentlyNonNull Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog m3510k = m3510k(activity, i, i2, onCancelListener);
        if (m3510k == null) {
            return false;
        }
        m3499v(activity, m3510k, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    /* renamed from: r */
    public final boolean m3503r(@RecentlyNonNull Context context, @RecentlyNonNull C6734b c6734b, int i) {
        PendingIntent m3509l = m3509l(context, c6734b);
        if (m3509l == null) {
            return false;
        }
        m3504q(context, c6734b.m3528X0(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.m23041a(context, m3509l, i, true), 134217728));
        return true;
    }
}
