package p186t4;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p026c4.C1048i;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p122m3.C4629c;
import p122m3.InterfaceC4628b;
import p220x3.C7297q;
/* renamed from: t4.l */
/* loaded from: classes2.dex */
public final class C6782l implements InterfaceC4628b {

    /* renamed from: e */
    public static InterfaceC4628b f35456e;

    /* renamed from: a */
    public final Context f35457a;

    /* renamed from: b */
    public boolean f35458b;

    /* renamed from: c */
    public final ScheduledExecutorService f35459c;

    /* renamed from: d */
    public final ExecutorService f35460d;

    /* renamed from: g */
    public static final SharedPreferences m3440g(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    /* renamed from: d */
    public static synchronized InterfaceC4628b m3443d(Context context) {
        InterfaceC4628b interfaceC4628b;
        synchronized (C6782l.class) {
            C7297q.m1882k(context, "Context must not be null");
            if (f35456e == null) {
                f35456e = new C6782l(context.getApplicationContext());
            }
            interfaceC4628b = f35456e;
        }
        return interfaceC4628b;
    }

    @Override // p122m3.InterfaceC4628b
    /* renamed from: a */
    public final AbstractC4346i<C4629c> mo3437a() {
        final C4348j c4348j = new C4348j();
        this.f35460d.execute(new Runnable() { // from class: t4.h
            @Override // java.lang.Runnable
            public final void run() {
                C6782l.this.m3442e(c4348j);
            }
        });
        return c4348j.m16775a();
    }

    /* renamed from: b */
    public final long m3445b() {
        long j = m3440g(this.f35457a).getLong("app_set_id_last_used_time", -1L);
        if (j == -1) {
            return -1L;
        }
        return j + 33696000000L;
    }

    /* renamed from: e */
    public final /* synthetic */ void m3442e(C4348j c4348j) {
        String str;
        String str2;
        String string = m3440g(this.f35457a).getString("app_set_id", null);
        long m3445b = m3445b();
        if (string != null && C1048i.m24760d().mo24763a() <= m3445b) {
            try {
                m3439h(this.f35457a);
            } catch (C6781k e) {
                c4348j.m16774b(e);
                return;
            }
        } else {
            string = UUID.randomUUID().toString();
            try {
                Context context = this.f35457a;
                if (!m3440g(context).edit().putString("app_set_id", string).commit()) {
                    String valueOf = String.valueOf(context.getPackageName());
                    if (valueOf.length() != 0) {
                        str2 = "Failed to store app set ID generated for App ".concat(valueOf);
                    } else {
                        str2 = new String("Failed to store app set ID generated for App ");
                    }
                    Log.e("AppSet", str2);
                    throw new C6781k("Failed to store the app set ID.");
                }
                m3439h(context);
                Context context2 = this.f35457a;
                SharedPreferences m3440g = m3440g(context2);
                if (!m3440g.edit().putLong("app_set_id_creation_time", C1048i.m24760d().mo24763a()).commit()) {
                    String valueOf2 = String.valueOf(context2.getPackageName());
                    if (valueOf2.length() != 0) {
                        str = "Failed to store app set ID creation time for App ".concat(valueOf2);
                    } else {
                        str = new String("Failed to store app set ID creation time for App ");
                    }
                    Log.e("AppSet", str);
                    throw new C6781k("Failed to store the app set ID creation time.");
                }
            } catch (C6781k e2) {
                c4348j.m16774b(e2);
                return;
            }
        }
        c4348j.m16773c(new C4629c(string, 1));
    }

    public C6782l(Context context) {
        this.f35458b = false;
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f35459c = newSingleThreadScheduledExecutor;
        this.f35460d = Executors.newSingleThreadExecutor();
        this.f35457a = context;
        if (!this.f35458b) {
            newSingleThreadScheduledExecutor.scheduleAtFixedRate(new RunnableC6780j(this, null), 0L, 86400L, TimeUnit.SECONDS);
            this.f35458b = true;
        }
    }

    /* renamed from: f */
    public static final void m3441f(Context context) {
        String str;
        String str2;
        if (!m3440g(context).edit().remove("app_set_id").commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            if (valueOf.length() != 0) {
                str2 = "Failed to clear app set ID generated for App ".concat(valueOf);
            } else {
                str2 = new String("Failed to clear app set ID generated for App ");
            }
            Log.e("AppSet", str2);
        }
        if (!m3440g(context).edit().remove("app_set_id_last_used_time").commit()) {
            String valueOf2 = String.valueOf(context.getPackageName());
            if (valueOf2.length() != 0) {
                str = "Failed to clear app set ID last used time for App ".concat(valueOf2);
            } else {
                str = new String("Failed to clear app set ID last used time for App ");
            }
            Log.e("AppSet", str);
        }
    }

    /* renamed from: h */
    public static final void m3439h(Context context) {
        String str;
        SharedPreferences m3440g = m3440g(context);
        if (!m3440g.edit().putLong("app_set_id_last_used_time", C1048i.m24760d().mo24763a()).commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            if (valueOf.length() != 0) {
                str = "Failed to store app set ID last used time for App ".concat(valueOf);
            } else {
                str = new String("Failed to store app set ID last used time for App ");
            }
            Log.e("AppSet", str);
            throw new C6781k("Failed to store the app set ID last used time.");
        }
    }
}
