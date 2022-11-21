package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p018b5.C0966y2;
import p070g5.InterfaceC3709j7;
import p097j5.C4352l;
import p151p5.C5359a;
import p170r6.C6535f;
import p220x3.C7297q;
/* loaded from: classes2.dex */
public final class FirebaseAnalytics {

    /* renamed from: b */
    public static volatile FirebaseAnalytics f7840b;

    /* renamed from: a */
    public final C0966y2 f7841a;

    public FirebaseAnalytics(C0966y2 c0966y2) {
        C7297q.m1883j(c0966y2);
        this.f7841a = c0966y2;
    }

    @Keep
    public static InterfaceC3709j7 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        C0966y2 m24929u = C0966y2.m24929u(context, null, null, null, bundle);
        if (m24929u == null) {
            return null;
        }
        return new C5359a(m24929u);
    }

    /* renamed from: a */
    public void m22963a(String str, Bundle bundle) {
        this.f7841a.m24951J(str, bundle);
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.f7841a.m24945e(activity, str, str2);
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f7840b == null) {
            synchronized (FirebaseAnalytics.class) {
                if (f7840b == null) {
                    f7840b = new FirebaseAnalytics(C0966y2.m24929u(context, null, null, null, null));
                }
            }
        }
        return f7840b;
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) C4352l.m16770a(C6535f.m3973n().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }
}
