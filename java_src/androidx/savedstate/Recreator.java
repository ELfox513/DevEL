package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0317d;
import androidx.lifecycle.InterfaceC0320e;
import androidx.lifecycle.InterfaceC0322g;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class Recreator implements InterfaceC0320e {

    /* renamed from: a */
    public final InterfaceC0368b f1306a;

    @Override // androidx.lifecycle.InterfaceC0320e
    /* renamed from: c */
    public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
        if (enumC0318a == AbstractC0317d.EnumC0318a.ON_CREATE) {
            interfaceC0322g.getLifecycle().mo26793c(this);
            Bundle m26717a = this.f1306a.getSavedStateRegistry().m26717a("androidx.savedstate.Restarter");
            if (m26717a == null) {
                return;
            }
            ArrayList<String> stringArrayList = m26717a.getStringArrayList("classes_to_restore");
            if (stringArrayList != null) {
                Iterator<String> it = stringArrayList.iterator();
                while (it.hasNext()) {
                    m26718h(it.next());
                }
                return;
            }
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }

    /* renamed from: h */
    public final void m26718h(String str) {
        Class cls;
        try {
            try {
                Constructor declaredConstructor = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.InterfaceC0365a.class).getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((SavedStateRegistry.InterfaceC0365a) declaredConstructor.newInstance(new Object[0])).m26713a(this.f1306a);
                } catch (Exception e) {
                    throw new RuntimeException("Failed to instantiate " + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("Class " + str + " wasn't found", e3);
        }
    }

    public Recreator(InterfaceC0368b interfaceC0368b) {
        this.f1306a = interfaceC0368b;
    }
}
