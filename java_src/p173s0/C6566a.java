package p173s0;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.startup.InitializationProvider;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p182t0.C6643b;
/* renamed from: s0.a */
/* loaded from: classes.dex */
public final class C6566a {

    /* renamed from: d */
    public static volatile C6566a f34862d;

    /* renamed from: e */
    public static final Object f34863e = new Object();

    /* renamed from: c */
    public final Context f34866c;

    /* renamed from: b */
    public final Set<Class<? extends InterfaceC6567b<?>>> f34865b = new HashSet();

    /* renamed from: a */
    public final Map<Class<?>, Object> f34864a = new HashMap();

    /* renamed from: c */
    public static C6566a m3905c(Context context) {
        if (f34862d == null) {
            synchronized (f34863e) {
                if (f34862d == null) {
                    f34862d = new C6566a(context);
                }
            }
        }
        return f34862d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m3907a() {
        try {
            try {
                C6643b.m3718a("Startup");
                Bundle bundle = this.f34866c.getPackageManager().getProviderInfo(new ComponentName(this.f34866c.getPackageName(), InitializationProvider.class.getName()), 128).metaData;
                String string = this.f34866c.getString(C6568c.f34867a);
                if (bundle != null) {
                    HashSet hashSet = new HashSet();
                    for (String str : bundle.keySet()) {
                        if (string.equals(bundle.getString(str, null))) {
                            Class<?> cls = Class.forName(str);
                            if (InterfaceC6567b.class.isAssignableFrom(cls)) {
                                this.f34865b.add(cls);
                                m3906b(cls, hashSet);
                            }
                        }
                    }
                }
            } finally {
                C6643b.m3717b();
            }
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException e) {
            throw new C6569d(e);
        }
    }

    /* renamed from: b */
    public <T> T m3906b(Class<? extends InterfaceC6567b<?>> cls, Set<Class<?>> set) {
        T t;
        synchronized (f34863e) {
            if (C6643b.m3715d()) {
                C6643b.m3718a(cls.getSimpleName());
            }
            if (!set.contains(cls)) {
                if (!this.f34864a.containsKey(cls)) {
                    set.add(cls);
                    try {
                        InterfaceC6567b<?> newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        List<Class<? extends InterfaceC6567b<?>>> mo3904a = newInstance.mo3904a();
                        if (!mo3904a.isEmpty()) {
                            for (Class<? extends InterfaceC6567b<?>> cls2 : mo3904a) {
                                if (!this.f34864a.containsKey(cls2)) {
                                    m3906b(cls2, set);
                                }
                            }
                        }
                        t = (T) newInstance.mo3903b(this.f34866c);
                        set.remove(cls);
                        this.f34864a.put(cls, t);
                    } catch (Throwable th) {
                        throw new C6569d(th);
                    }
                } else {
                    t = (T) this.f34864a.get(cls);
                }
                C6643b.m3717b();
            } else {
                throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
            }
        }
        return t;
    }

    public C6566a(Context context) {
        this.f34866c = context.getApplicationContext();
    }
}
