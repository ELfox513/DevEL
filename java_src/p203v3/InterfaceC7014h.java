package p203v3;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.internal.LifecycleCallback;
/* renamed from: v3.h */
/* loaded from: classes.dex */
public interface InterfaceC7014h {
    /* renamed from: a */
    void mo2633a(@RecentlyNonNull String str, @RecentlyNonNull LifecycleCallback lifecycleCallback);

    @RecentlyNullable
    /* renamed from: c */
    <T extends LifecycleCallback> T mo2631c(@RecentlyNonNull String str, @RecentlyNonNull Class<T> cls);

    @RecentlyNonNull
    /* renamed from: d */
    Activity mo2629d();

    void startActivityForResult(@RecentlyNonNull Intent intent, int i);
}
