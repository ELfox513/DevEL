package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.InterfaceC0320e;
import androidx.lifecycle.InterfaceC0322g;
import java.util.Map;
import p109l.C4533b;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class SavedStateRegistry {

    /* renamed from: b */
    public Bundle f1308b;

    /* renamed from: c */
    public boolean f1309c;

    /* renamed from: a */
    public C4533b<String, InterfaceC0366b> f1307a = new C4533b<>();

    /* renamed from: d */
    public boolean f1310d = true;

    /* renamed from: androidx.savedstate.SavedStateRegistry$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0365a {
        /* renamed from: a */
        void m26713a(InterfaceC0368b interfaceC0368b);
    }

    /* renamed from: androidx.savedstate.SavedStateRegistry$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0366b {
        /* renamed from: a */
        Bundle m26712a();
    }

    /* renamed from: a */
    public Bundle m26717a(String str) {
        if (this.f1309c) {
            Bundle bundle = this.f1308b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f1308b.remove(str);
            if (this.f1308b.isEmpty()) {
                this.f1308b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: b */
    public void m26716b(AbstractC0317d abstractC0317d, Bundle bundle) {
        if (!this.f1309c) {
            if (bundle != null) {
                this.f1308b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            abstractC0317d.mo26795a(new InterfaceC0320e() { // from class: androidx.savedstate.SavedStateRegistry.1
                @Override // androidx.lifecycle.InterfaceC0320e
                /* renamed from: c */
                public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
                    if (enumC0318a == AbstractC0317d.EnumC0318a.ON_START) {
                        SavedStateRegistry.this.f1310d = true;
                    } else if (enumC0318a == AbstractC0317d.EnumC0318a.ON_STOP) {
                        SavedStateRegistry.this.f1310d = false;
                    }
                }
            });
            this.f1309c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* renamed from: c */
    public void m26715c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f1308b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C4533b<String, InterfaceC0366b>.C4537d m16067g = this.f1307a.m16067g();
        while (m16067g.hasNext()) {
            Map.Entry next = m16067g.next();
            bundle2.putBundle((String) next.getKey(), ((InterfaceC0366b) next.getValue()).m26712a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
