package p094j2;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: j2.k */
/* loaded from: classes.dex */
public class C4322k implements InterfaceC4314e {

    /* renamed from: a */
    public final C4323a f18196a;

    /* renamed from: b */
    public final C4320i f18197b;

    /* renamed from: c */
    public final Map<String, InterfaceC4325m> f18198c;

    /* renamed from: j2.k$a */
    /* loaded from: classes.dex */
    public static class C4323a {

        /* renamed from: a */
        public final Context f18199a;

        /* renamed from: b */
        public Map<String, String> f18200b = null;

        /* renamed from: d */
        public static Bundle m16817d(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("BackendRegistry", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, TransportBackendDiscovery.class), 128);
                if (serviceInfo == null) {
                    Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("BackendRegistry", "Application info not found.");
                return null;
            }
        }

        /* renamed from: b */
        public InterfaceC4313d m16819b(String str) {
            String str2 = m16818c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (InterfaceC4313d) Class.forName(str2).asSubclass(InterfaceC4313d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                Log.w("BackendRegistry", String.format("Class %s is not found.", str2), e);
                return null;
            } catch (IllegalAccessException e2) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e2);
                return null;
            } catch (InstantiationException e3) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e3);
                return null;
            } catch (NoSuchMethodException e4) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e4);
                return null;
            } catch (InvocationTargetException e5) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e5);
                return null;
            }
        }

        /* renamed from: c */
        public final Map<String, String> m16818c() {
            if (this.f18200b == null) {
                this.f18200b = m16820a(this.f18199a);
            }
            return this.f18200b;
        }

        public C4323a(Context context) {
            this.f18199a = context;
        }

        /* renamed from: a */
        public final Map<String, String> m16820a(Context context) {
            Bundle m16817d = m16817d(context);
            if (m16817d == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : m16817d.keySet()) {
                Object obj = m16817d.get(str);
                if ((obj instanceof String) && str.startsWith("backend:")) {
                    for (String str2 : ((String) obj).split(",", -1)) {
                        String trim = str2.trim();
                        if (!trim.isEmpty()) {
                            hashMap.put(trim, str.substring(8));
                        }
                    }
                }
            }
            return hashMap;
        }
    }

    public C4322k(Context context, C4320i c4320i) {
        this(new C4323a(context), c4320i);
    }

    @Override // p094j2.InterfaceC4314e
    /* renamed from: a */
    public synchronized InterfaceC4325m mo16821a(String str) {
        if (this.f18198c.containsKey(str)) {
            return this.f18198c.get(str);
        }
        InterfaceC4313d m16819b = this.f18196a.m16819b(str);
        if (m16819b == null) {
            return null;
        }
        InterfaceC4325m create = m16819b.create(this.f18197b.m16825a(str));
        this.f18198c.put(str, create);
        return create;
    }

    public C4322k(C4323a c4323a, C4320i c4320i) {
        this.f18198c = new HashMap();
        this.f18196a = c4323a;
        this.f18197b = c4320i;
    }
}
