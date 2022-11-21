package p178s5;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p161q6.InterfaceC5434b;
/* renamed from: s5.g */
/* loaded from: classes2.dex */
public final class C6600g<T> {

    /* renamed from: a */
    public final T f35175a;

    /* renamed from: b */
    public final InterfaceC6603c<T> f35176b;

    /* renamed from: s5.g$b */
    /* loaded from: classes2.dex */
    public static class C6602b implements InterfaceC6603c<Context> {

        /* renamed from: a */
        public final Class<? extends Service> f35177a;

        public C6602b(Class<? extends Service> cls) {
            this.f35177a = cls;
        }

        /* renamed from: b */
        public final Bundle m3830b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f35177a), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", this.f35177a + " has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }

        @Override // p178s5.C6600g.InterfaceC6603c
        /* renamed from: c */
        public List<String> mo3828a(Context context) {
            Bundle m3830b = m3830b(context);
            if (m3830b == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : m3830b.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(m3830b.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    /* renamed from: s5.g$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC6603c<T> {
        /* renamed from: a */
        List<String> mo3828a(T t);
    }

    /* renamed from: c */
    public static C6600g<Context> m3833c(Context context, Class<? extends Service> cls) {
        return new C6600g<>(context, new C6602b(cls));
    }

    /* renamed from: d */
    public static InterfaceC6605i m3832d(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (InterfaceC6605i.class.isAssignableFrom(cls)) {
                return (InterfaceC6605i) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new C6623v(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
        } catch (ClassNotFoundException unused) {
            Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e) {
            throw new C6623v(String.format("Could not instantiate %s.", str), e);
        } catch (InstantiationException e2) {
            throw new C6623v(String.format("Could not instantiate %s.", str), e2);
        } catch (NoSuchMethodException e3) {
            throw new C6623v(String.format("Could not instantiate %s", str), e3);
        } catch (InvocationTargetException e4) {
            throw new C6623v(String.format("Could not instantiate %s", str), e4);
        }
    }

    /* renamed from: b */
    public List<InterfaceC5434b<InterfaceC6605i>> m3834b() {
        ArrayList arrayList = new ArrayList();
        for (final String str : this.f35176b.mo3828a(this.f35175a)) {
            arrayList.add(new InterfaceC5434b() { // from class: s5.f
                @Override // p161q6.InterfaceC5434b
                public final Object get() {
                    InterfaceC6605i m3832d;
                    m3832d = C6600g.m3832d(str);
                    return m3832d;
                }
            });
        }
        return arrayList;
    }

    public C6600g(T t, InterfaceC6603c<T> interfaceC6603c) {
        this.f35175a = t;
        this.f35176b = interfaceC6603c;
    }
}
