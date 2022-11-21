package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.FirebaseCommonRegistrar;
import java.util.ArrayList;
import java.util.List;
import p117l7.C4577c;
import p117l7.C4579e;
import p117l7.C4582h;
import p152p6.C5363d;
import p178s5.C6592d;
import p178s5.InterfaceC6605i;
/* loaded from: classes2.dex */
public class FirebaseCommonRegistrar implements InterfaceC6605i {
    /* renamed from: i */
    public static String m22965i(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    /* renamed from: g */
    public static /* synthetic */ String m22967g(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
            return "tv";
        }
        if (i >= 20 && context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            return "watch";
        }
        if (i >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return "auto";
        }
        if (i >= 26 && context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
            return "embedded";
        }
        return "";
    }

    @Override // p178s5.InterfaceC6605i
    public List<C6592d<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(C4577c.m15986c());
        arrayList.add(C5363d.m13399e());
        arrayList.add(C4582h.m15976b("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(C4582h.m15976b("fire-core", "20.0.0"));
        arrayList.add(C4582h.m15976b("device-name", m22965i(Build.PRODUCT)));
        arrayList.add(C4582h.m15976b("device-model", m22965i(Build.DEVICE)));
        arrayList.add(C4582h.m15976b("device-brand", m22965i(Build.BRAND)));
        arrayList.add(C4582h.m15975c("android-target-sdk", new C4582h.InterfaceC4583a() { // from class: m5.d
            @Override // p117l7.C4582h.InterfaceC4583a
            /* renamed from: a */
            public final String mo15879a(Object obj) {
                String m22969e;
                m22969e = FirebaseCommonRegistrar.m22969e((Context) obj);
                return m22969e;
            }
        }));
        arrayList.add(C4582h.m15975c("android-min-sdk", new C4582h.InterfaceC4583a() { // from class: m5.e
            @Override // p117l7.C4582h.InterfaceC4583a
            /* renamed from: a */
            public final String mo15879a(Object obj) {
                String m22968f;
                m22968f = FirebaseCommonRegistrar.m22968f((Context) obj);
                return m22968f;
            }
        }));
        arrayList.add(C4582h.m15975c("android-platform", new C4582h.InterfaceC4583a() { // from class: m5.f
            @Override // p117l7.C4582h.InterfaceC4583a
            /* renamed from: a */
            public final String mo15879a(Object obj) {
                String m22967g;
                m22967g = FirebaseCommonRegistrar.m22967g((Context) obj);
                return m22967g;
            }
        }));
        arrayList.add(C4582h.m15975c("android-installer", new C4582h.InterfaceC4583a() { // from class: m5.g
            @Override // p117l7.C4582h.InterfaceC4583a
            /* renamed from: a */
            public final String mo15879a(Object obj) {
                String m22966h;
                m22966h = FirebaseCommonRegistrar.m22966h((Context) obj);
                return m22966h;
            }
        }));
        String m15981a = C4579e.m15981a();
        if (m15981a != null) {
            arrayList.add(C4582h.m15976b("kotlin", m15981a));
        }
        return arrayList;
    }

    /* renamed from: e */
    public static /* synthetic */ String m22969e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            return String.valueOf(applicationInfo.targetSdkVersion);
        }
        return "";
    }

    /* renamed from: f */
    public static /* synthetic */ String m22968f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null && Build.VERSION.SDK_INT >= 24) {
            return String.valueOf(applicationInfo.minSdkVersion);
        }
        return "";
    }

    /* renamed from: h */
    public static /* synthetic */ String m22966h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        if (installerPackageName != null) {
            return m22965i(installerPackageName);
        }
        return "";
    }
}
