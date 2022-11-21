package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p203v3.C7011g;
import p203v3.C7040p1;
import p203v3.FragmentC7034n1;
import p203v3.InterfaceC7014h;
/* loaded from: classes.dex */
public class LifecycleCallback {
    @RecentlyNonNull

    /* renamed from: a */
    public final InterfaceC7014h f7736a;

    public LifecycleCallback(@RecentlyNonNull InterfaceC7014h interfaceC7014h) {
        this.f7736a = interfaceC7014h;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static InterfaceC7014h m23020c(@RecentlyNonNull Activity activity) {
        return m23019d(new C7011g(activity));
    }

    @Keep
    private static InterfaceC7014h getChimeraLifecycleFragmentImpl(C7011g c7011g) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    /* renamed from: a */
    public void m23022a(@RecentlyNonNull String str, @RecentlyNonNull FileDescriptor fileDescriptor, @RecentlyNonNull PrintWriter printWriter, @RecentlyNonNull String[] strArr) {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public Activity m23021b() {
        return this.f7736a.mo2629d();
    }

    /* renamed from: e */
    public void mo2667e(int i, int i2, @RecentlyNonNull Intent intent) {
    }

    /* renamed from: f */
    public void mo2666f(Bundle bundle) {
    }

    /* renamed from: g */
    public void m23018g() {
    }

    /* renamed from: h */
    public void mo2606h() {
    }

    /* renamed from: i */
    public void mo2665i(@RecentlyNonNull Bundle bundle) {
    }

    /* renamed from: j */
    public void mo2605j() {
    }

    /* renamed from: k */
    public void mo2604k() {
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static InterfaceC7014h m23019d(@RecentlyNonNull C7011g c7011g) {
        if (c7011g.m2674c()) {
            return C7040p1.m2632b0(c7011g.m2675b());
        }
        if (c7011g.m2673d()) {
            return FragmentC7034n1.m2638b(c7011g.m2676a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }
}
