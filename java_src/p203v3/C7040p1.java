package p203v3;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.ActivityC0256d;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import p145p.C5270a;
import p221x4.HandlerC7328d;
/* renamed from: v3.p1 */
/* loaded from: classes.dex */
public final class C7040p1 extends Fragment implements InterfaceC7014h {

    /* renamed from: m0 */
    public static final WeakHashMap<ActivityC0256d, WeakReference<C7040p1>> f36020m0 = new WeakHashMap<>();

    /* renamed from: j0 */
    public final Map<String, LifecycleCallback> f36021j0 = Collections.synchronizedMap(new C5270a());

    /* renamed from: k0 */
    public int f36022k0 = 0;

    /* renamed from: l0 */
    public Bundle f36023l0;

    @Override // p203v3.InterfaceC7014h
    /* renamed from: c */
    public final <T extends LifecycleCallback> T mo2631c(String str, Class<T> cls) {
        return cls.cast(this.f36021j0.get(str));
    }

    @Override // p203v3.InterfaceC7014h
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Activity mo2629d() {
        return getActivity();
    }

    /* renamed from: b0 */
    public static C7040p1 m2632b0(ActivityC0256d activityC0256d) {
        C7040p1 c7040p1;
        WeakHashMap<ActivityC0256d, WeakReference<C7040p1>> weakHashMap = f36020m0;
        WeakReference<C7040p1> weakReference = weakHashMap.get(activityC0256d);
        if (weakReference != null && (c7040p1 = weakReference.get()) != null) {
            return c7040p1;
        }
        try {
            C7040p1 c7040p12 = (C7040p1) activityC0256d.m27090m().mo26973c("SupportLifecycleFragmentImpl");
            if (c7040p12 == null || c7040p12.isRemoving()) {
                c7040p12 = new C7040p1();
                activityC0256d.m27090m().mo26979a().m26891b(c7040p12, "SupportLifecycleFragmentImpl").mo26888e();
            }
            weakHashMap.put(activityC0256d, new WeakReference<>(c7040p12));
            return c7040p12;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e);
        }
    }

    @Override // p203v3.InterfaceC7014h
    /* renamed from: a */
    public final void mo2633a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f36021j0.containsKey(str)) {
            this.f36021j0.put(str, lifecycleCallback);
            if (this.f36022k0 > 0) {
                new HandlerC7328d(Looper.getMainLooper()).post(new RunnableC7037o1(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f36021j0.values()) {
            lifecycleCallback.m23022a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f36021j0.values()) {
            lifecycleCallback.mo2667e(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        Bundle bundle2;
        super.onCreate(bundle);
        this.f36022k0 = 1;
        this.f36023l0 = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f36021j0.entrySet()) {
            LifecycleCallback value = entry.getValue();
            if (bundle != null) {
                bundle2 = bundle.getBundle(entry.getKey());
            } else {
                bundle2 = null;
            }
            value.mo2666f(bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f36022k0 = 5;
        for (LifecycleCallback lifecycleCallback : this.f36021j0.values()) {
            lifecycleCallback.m23018g();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f36022k0 = 3;
        for (LifecycleCallback lifecycleCallback : this.f36021j0.values()) {
            lifecycleCallback.mo2606h();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f36021j0.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo2665i(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f36022k0 = 2;
        for (LifecycleCallback lifecycleCallback : this.f36021j0.values()) {
            lifecycleCallback.mo2605j();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f36022k0 = 4;
        for (LifecycleCallback lifecycleCallback : this.f36021j0.values()) {
            lifecycleCallback.mo2604k();
        }
    }
}
