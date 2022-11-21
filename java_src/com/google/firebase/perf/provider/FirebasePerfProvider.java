package com.google.firebase.perf.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.session.SessionManager;
import p099j7.C4368a;
import p099j7.C4381h;
import p108k7.EnumC4488d;
import p220x3.C7297q;
import p223x6.C7394d;
import p231y6.C7515a;
import p239z6.C7873a;
@Keep
/* loaded from: classes2.dex */
public class FirebasePerfProvider extends ContentProvider {
    private static final C4381h APP_START_TIME = new C4368a().m16746a();
    public static final String EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY = "com.google.firebase.firebaseperfprovider";
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    public static C4381h getAppStartTime() {
        return APP_START_TIME;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    private static void checkContentProviderAuthority(ProviderInfo providerInfo) {
        C7297q.m1882k(providerInfo, "FirebasePerfProvider ProviderInfo cannot be null.");
        if (!EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY.equals(providerInfo.authority)) {
            return;
        }
        throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        checkContentProviderAuthority(providerInfo);
        super.attachInfo(context, providerInfo);
        C7873a.m75f().m82N(getContext());
        C7515a m1326b = C7515a.m1326b();
        m1326b.m1319i(getContext());
        m1326b.m1318j(new C7394d());
        AppStartTrace m22951c = AppStartTrace.m22951c();
        m22951c.m22949e(getContext());
        this.mainHandler.post(new AppStartTrace.RunnableC1429a(m22951c));
        SessionManager.getInstance().updatePerfSession(EnumC4488d.FOREGROUND);
    }
}
