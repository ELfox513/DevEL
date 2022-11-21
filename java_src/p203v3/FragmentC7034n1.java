package p203v3;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import p145p.C5270a;
import p221x4.HandlerC7328d;
/* renamed from: v3.n1 */
/* loaded from: classes.dex */
public final class FragmentC7034n1 extends Fragment implements InterfaceC7014h {

    /* renamed from: k */
    public static final WeakHashMap<Activity, WeakReference<FragmentC7034n1>> f36009k = new WeakHashMap<>();

    /* renamed from: a */
    public final Map<String, LifecycleCallback> f36010a = Collections.synchronizedMap(new C5270a());

    /* renamed from: b */
    public int f36011b = 0;

    /* renamed from: d */
    public Bundle f36012d;

    @Override // p203v3.InterfaceC7014h
    /* renamed from: c */
    public final <T extends LifecycleCallback> T mo2631c(String str, Class<T> cls) {
        return cls.cast(this.f36010a.get(str));
    }

    @Override // p203v3.InterfaceC7014h
    /* renamed from: d */
    public final Activity mo2629d() {
        return getActivity();
    }

    /* renamed from: b */
    public static FragmentC7034n1 m2638b(Activity activity) {
        FragmentC7034n1 fragmentC7034n1;
        WeakHashMap<Activity, WeakReference<FragmentC7034n1>> weakHashMap = f36009k;
        WeakReference<FragmentC7034n1> weakReference = weakHashMap.get(activity);
        if (weakReference != null && (fragmentC7034n1 = weakReference.get()) != null) {
            return fragmentC7034n1;
        }
        try {
            FragmentC7034n1 fragmentC7034n12 = (FragmentC7034n1) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (fragmentC7034n12 == null || fragmentC7034n12.isRemoving()) {
                fragmentC7034n12 = new FragmentC7034n1();
                activity.getFragmentManager().beginTransaction().add(fragmentC7034n12, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            weakHashMap.put(activity, new WeakReference<>(fragmentC7034n12));
            return fragmentC7034n12;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e);
        }
    }

    @Override // p203v3.InterfaceC7014h
    /* renamed from: a */
    public final void mo2633a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f36010a.containsKey(str)) {
            this.f36010a.put(str, lifecycleCallback);
            if (this.f36011b > 0) {
                new HandlerC7328d(Looper.getMainLooper()).post(new RunnableC7031m1(this, lifecycleCallback, str));
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

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f36010a.values()) {
            lifecycleCallback.m23022a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f36010a.values()) {
            lifecycleCallback.mo2667e(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        Bundle bundle2;
        super.onCreate(bundle);
        this.f36011b = 1;
        this.f36012d = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f36010a.entrySet()) {
            LifecycleCallback value = entry.getValue();
            if (bundle != null) {
                bundle2 = bundle.getBundle(entry.getKey());
            } else {
                bundle2 = null;
            }
            value.mo2666f(bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f36011b = 5;
        for (LifecycleCallback lifecycleCallback : this.f36010a.values()) {
            lifecycleCallback.m23018g();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f36011b = 3;
        for (LifecycleCallback lifecycleCallback : this.f36010a.values()) {
            lifecycleCallback.mo2606h();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f36010a.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo2665i(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f36011b = 2;
        for (LifecycleCallback lifecycleCallback : this.f36010a.values()) {
            lifecycleCallback.mo2605j();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f36011b = 4;
        for (LifecycleCallback lifecycleCallback : this.f36010a.values()) {
            lifecycleCallback.mo2604k();
        }
    }
}
