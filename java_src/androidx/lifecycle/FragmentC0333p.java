package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0317d;
/* renamed from: androidx.lifecycle.p */
/* loaded from: classes.dex */
public class FragmentC0333p extends Fragment {

    /* renamed from: a */
    public InterfaceC0334a f1241a;

    /* renamed from: androidx.lifecycle.p$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0334a {
        /* renamed from: a */
        void m26763a();

        /* renamed from: b */
        void m26762b();

        void onResume();
    }

    /* renamed from: b */
    public final void m26767b(InterfaceC0334a interfaceC0334a) {
        if (interfaceC0334a != null) {
            interfaceC0334a.m26763a();
        }
    }

    /* renamed from: c */
    public final void m26766c(InterfaceC0334a interfaceC0334a) {
        if (interfaceC0334a != null) {
            interfaceC0334a.onResume();
        }
    }

    /* renamed from: d */
    public final void m26765d(InterfaceC0334a interfaceC0334a) {
        if (interfaceC0334a != null) {
            interfaceC0334a.m26762b();
        }
    }

    /* renamed from: e */
    public static void m26764e(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0333p(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: a */
    public final void m26768a(AbstractC0317d.EnumC0318a enumC0318a) {
        Activity activity = getActivity();
        if (activity instanceof InterfaceC0326i) {
            ((InterfaceC0326i) activity).getLifecycle().m26787i(enumC0318a);
        } else if (activity instanceof InterfaceC0322g) {
            AbstractC0317d lifecycle = ((InterfaceC0322g) activity).getLifecycle();
            if (lifecycle instanceof C0323h) {
                ((C0323h) lifecycle).m26787i(enumC0318a);
            }
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m26767b(this.f1241a);
        m26768a(AbstractC0317d.EnumC0318a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m26768a(AbstractC0317d.EnumC0318a.ON_DESTROY);
        this.f1241a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m26768a(AbstractC0317d.EnumC0318a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m26766c(this.f1241a);
        m26768a(AbstractC0317d.EnumC0318a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m26765d(this.f1241a);
        m26768a(AbstractC0317d.EnumC0318a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m26768a(AbstractC0317d.EnumC0318a.ON_STOP);
    }
}
