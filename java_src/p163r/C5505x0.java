package p163r;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import com.prineside.tdi2.tiles.CoreTile;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p012b.InterfaceC0412a;
/* renamed from: r.x0 */
/* loaded from: classes.dex */
public final class C5505x0 {

    /* renamed from: d */
    public static String f20244d;

    /* renamed from: g */
    public static ServiceConnectionC5508c f20247g;

    /* renamed from: a */
    public final Context f20248a;

    /* renamed from: b */
    public final NotificationManager f20249b;

    /* renamed from: c */
    public static final Object f20243c = new Object();

    /* renamed from: e */
    public static Set<String> f20245e = new HashSet();

    /* renamed from: f */
    public static final Object f20246f = new Object();

    /* renamed from: r.x0$a */
    /* loaded from: classes.dex */
    public static class C5506a implements InterfaceC5510d {

        /* renamed from: a */
        public final String f20250a;

        /* renamed from: b */
        public final int f20251b;

        /* renamed from: c */
        public final String f20252c;

        /* renamed from: d */
        public final Notification f20253d;

        @Override // p163r.C5505x0.InterfaceC5510d
        /* renamed from: a */
        public void mo13154a(InterfaceC0412a interfaceC0412a) {
            interfaceC0412a.mo26560E6(this.f20250a, this.f20251b, this.f20252c, this.f20253d);
        }

        public String toString() {
            return "NotifyTask[packageName:" + this.f20250a + ", id:" + this.f20251b + ", tag:" + this.f20252c + "]";
        }

        public C5506a(String str, int i, String str2, Notification notification) {
            this.f20250a = str;
            this.f20251b = i;
            this.f20252c = str2;
            this.f20253d = notification;
        }
    }

    /* renamed from: r.x0$c */
    /* loaded from: classes.dex */
    public static class ServiceConnectionC5508c implements Handler.Callback, ServiceConnection {

        /* renamed from: a */
        public final Context f20256a;

        /* renamed from: b */
        public final HandlerThread f20257b;

        /* renamed from: d */
        public final Handler f20258d;

        /* renamed from: k */
        public final Map<ComponentName, C5509a> f20259k = new HashMap();

        /* renamed from: p */
        public Set<String> f20260p = new HashSet();

        /* renamed from: h */
        public void m13157h(InterfaceC5510d interfaceC5510d) {
            this.f20258d.obtainMessage(0, interfaceC5510d).sendToTarget();
        }

        /* renamed from: r.x0$c$a */
        /* loaded from: classes.dex */
        public static class C5509a {

            /* renamed from: a */
            public final ComponentName f20261a;

            /* renamed from: c */
            public InterfaceC0412a f20263c;

            /* renamed from: b */
            public boolean f20262b = false;

            /* renamed from: d */
            public ArrayDeque<InterfaceC5510d> f20264d = new ArrayDeque<>();

            /* renamed from: e */
            public int f20265e = 0;

            public C5509a(ComponentName componentName) {
                this.f20261a = componentName;
            }
        }

        /* renamed from: a */
        public final boolean m13164a(C5509a c5509a) {
            if (c5509a.f20262b) {
                return true;
            }
            boolean bindService = this.f20256a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(c5509a.f20261a), this, 33);
            c5509a.f20262b = bindService;
            if (bindService) {
                c5509a.f20265e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + c5509a.f20261a);
                this.f20256a.unbindService(this);
            }
            return c5509a.f20262b;
        }

        /* renamed from: b */
        public final void m13163b(C5509a c5509a) {
            if (c5509a.f20262b) {
                this.f20256a.unbindService(this);
                c5509a.f20262b = false;
            }
            c5509a.f20263c = null;
        }

        /* renamed from: d */
        public final void m13161d(ComponentName componentName) {
            C5509a c5509a = this.f20259k.get(componentName);
            if (c5509a != null) {
                m13158g(c5509a);
            }
        }

        /* renamed from: e */
        public final void m13160e(ComponentName componentName, IBinder iBinder) {
            C5509a c5509a = this.f20259k.get(componentName);
            if (c5509a != null) {
                c5509a.f20263c = InterfaceC0412a.AbstractBinderC0413a.m26562j0(iBinder);
                c5509a.f20265e = 0;
                m13158g(c5509a);
            }
        }

        /* renamed from: f */
        public final void m13159f(ComponentName componentName) {
            C5509a c5509a = this.f20259k.get(componentName);
            if (c5509a != null) {
                m13163b(c5509a);
            }
        }

        /* renamed from: g */
        public final void m13158g(C5509a c5509a) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + c5509a.f20261a + ", " + c5509a.f20264d.size() + " queued tasks");
            }
            if (c5509a.f20264d.isEmpty()) {
                return;
            }
            if (m13164a(c5509a) && c5509a.f20263c != null) {
                while (true) {
                    InterfaceC5510d peek = c5509a.f20264d.peek();
                    if (peek == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Sending task " + peek);
                        }
                        peek.mo13154a(c5509a.f20263c);
                        c5509a.f20264d.remove();
                    } catch (DeadObjectException unused) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Remote service has died: " + c5509a.f20261a);
                        }
                    } catch (RemoteException e) {
                        Log.w("NotifManCompat", "RemoteException communicating with " + c5509a.f20261a, e);
                    }
                }
                if (!c5509a.f20264d.isEmpty()) {
                    m13156i(c5509a);
                    return;
                }
                return;
            }
            m13156i(c5509a);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return false;
                        }
                        m13161d((ComponentName) message.obj);
                        return true;
                    }
                    m13159f((ComponentName) message.obj);
                    return true;
                }
                C5507b c5507b = (C5507b) message.obj;
                m13160e(c5507b.f20254a, c5507b.f20255b);
                return true;
            }
            m13162c((InterfaceC5510d) message.obj);
            return true;
        }

        /* renamed from: i */
        public final void m13156i(C5509a c5509a) {
            if (this.f20258d.hasMessages(3, c5509a.f20261a)) {
                return;
            }
            int i = c5509a.f20265e + 1;
            c5509a.f20265e = i;
            if (i > 6) {
                Log.w("NotifManCompat", "Giving up on delivering " + c5509a.f20264d.size() + " tasks to " + c5509a.f20261a + " after " + c5509a.f20265e + " retries");
                c5509a.f20264d.clear();
                return;
            }
            int i2 = (1 << (i - 1)) * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Scheduling retry for " + i2 + " ms");
            }
            this.f20258d.sendMessageDelayed(this.f20258d.obtainMessage(3, c5509a.f20261a), i2);
        }

        /* renamed from: j */
        public final void m13155j() {
            Set<String> m13169c = C5505x0.m13169c(this.f20256a);
            if (m13169c.equals(this.f20260p)) {
                return;
            }
            this.f20260p = m13169c;
            List<ResolveInfo> queryIntentServices = this.f20256a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                if (m13169c.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f20259k.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                    }
                    this.f20259k.put(componentName2, new C5509a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, C5509a>> it = this.f20259k.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, C5509a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                    }
                    m13163b(next.getValue());
                    it.remove();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f20258d.obtainMessage(1, new C5507b(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f20258d.obtainMessage(2, componentName).sendToTarget();
        }

        public ServiceConnectionC5508c(Context context) {
            this.f20256a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f20257b = handlerThread;
            handlerThread.start();
            this.f20258d = new Handler(handlerThread.getLooper(), this);
        }

        /* renamed from: c */
        public final void m13162c(InterfaceC5510d interfaceC5510d) {
            m13155j();
            for (C5509a c5509a : this.f20259k.values()) {
                c5509a.f20264d.add(interfaceC5510d);
                m13158g(c5509a);
            }
        }
    }

    /* renamed from: r.x0$d */
    /* loaded from: classes.dex */
    public interface InterfaceC5510d {
        /* renamed from: a */
        void mo13154a(InterfaceC0412a interfaceC0412a);
    }

    /* renamed from: b */
    public static C5505x0 m13170b(Context context) {
        return new C5505x0(context);
    }

    /* renamed from: d */
    public void m13168d(int i, Notification notification) {
        m13167e(null, i, notification);
    }

    /* renamed from: r.x0$b */
    /* loaded from: classes.dex */
    public static class C5507b {

        /* renamed from: a */
        public final ComponentName f20254a;

        /* renamed from: b */
        public final IBinder f20255b;

        public C5507b(ComponentName componentName, IBinder iBinder) {
            this.f20254a = componentName;
            this.f20255b = iBinder;
        }
    }

    /* renamed from: a */
    public boolean m13171a() {
        boolean areNotificationsEnabled;
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            areNotificationsEnabled = this.f20249b.areNotificationsEnabled();
            return areNotificationsEnabled;
        } else if (i < 19) {
            return true;
        } else {
            AppOpsManager appOpsManager = (AppOpsManager) this.f20248a.getSystemService("appops");
            ApplicationInfo applicationInfo = this.f20248a.getApplicationInfo();
            String packageName = this.f20248a.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                if (((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i2), packageName)).intValue() == 0) {
                    return true;
                }
                return false;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
                return true;
            }
        }
    }

    /* renamed from: f */
    public final void m13166f(InterfaceC5510d interfaceC5510d) {
        synchronized (f20246f) {
            if (f20247g == null) {
                f20247g = new ServiceConnectionC5508c(this.f20248a.getApplicationContext());
            }
            f20247g.m13157h(interfaceC5510d);
        }
    }

    public C5505x0(Context context) {
        this.f20248a = context;
        this.f20249b = (NotificationManager) context.getSystemService("notification");
    }

    /* renamed from: c */
    public static Set<String> m13169c(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f20243c) {
            if (string != null) {
                if (!string.equals(f20244d)) {
                    String[] split = string.split(":", -1);
                    HashSet hashSet = new HashSet(split.length);
                    for (String str : split) {
                        ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                        if (unflattenFromString != null) {
                            hashSet.add(unflattenFromString.getPackageName());
                        }
                    }
                    f20245e = hashSet;
                    f20244d = string;
                }
            }
            set = f20245e;
        }
        return set;
    }

    /* renamed from: g */
    public static boolean m13165g(Notification notification) {
        Bundle m13238a = C5481o.m13238a(notification);
        if (m13238a != null && m13238a.getBoolean("android.support.useSideChannel")) {
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public void m13167e(String str, int i, Notification notification) {
        if (m13165g(notification)) {
            m13166f(new C5506a(this.f20248a.getPackageName(), i, str, notification));
            this.f20249b.cancel(str, i);
            return;
        }
        this.f20249b.notify(str, i, notification);
    }
}
