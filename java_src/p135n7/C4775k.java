package p135n7;

import android.util.Log;
import com.google.firebase.remoteconfig.internal.C1433a;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;
import p026c4.InterfaceC1043d;
import p126m7.InterfaceC4665l;
/* renamed from: n7.k */
/* loaded from: classes2.dex */
public class C4775k {

    /* renamed from: e */
    public static final Charset f19058e = Charset.forName("UTF-8");

    /* renamed from: f */
    public static final Pattern f19059f = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    /* renamed from: g */
    public static final Pattern f19060g = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    /* renamed from: a */
    public final Set<InterfaceC1043d<String, C1433a>> f19061a = new HashSet();

    /* renamed from: b */
    public final Executor f19062b;

    /* renamed from: c */
    public final C4767e f19063c;

    /* renamed from: d */
    public final C4767e f19064d;

    /* renamed from: e */
    public static C1433a m15401e(C4767e c4767e) {
        return c4767e.m15415f();
    }

    /* renamed from: j */
    public static void m15396j(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    /* renamed from: f */
    public static Set<String> m15400f(C4767e c4767e) {
        HashSet hashSet = new HashSet();
        C1433a m15401e = m15401e(c4767e);
        if (m15401e == null) {
            return hashSet;
        }
        Iterator<String> keys = m15401e.m22901d().keys();
        while (keys.hasNext()) {
            hashSet.add(keys.next());
        }
        return hashSet;
    }

    /* renamed from: b */
    public void m15404b(InterfaceC1043d<String, C1433a> interfaceC1043d) {
        synchronized (this.f19061a) {
            this.f19061a.add(interfaceC1043d);
        }
    }

    /* renamed from: c */
    public final void m15403c(final String str, final C1433a c1433a) {
        if (c1433a == null) {
            return;
        }
        synchronized (this.f19061a) {
            for (final InterfaceC1043d<String, C1433a> interfaceC1043d : this.f19061a) {
                this.f19062b.execute(new Runnable() { // from class: n7.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        InterfaceC1043d.this.accept(str, c1433a);
                    }
                });
            }
        }
    }

    /* renamed from: d */
    public Map<String, InterfaceC4665l> m15402d() {
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(m15400f(this.f19063c));
        hashSet.addAll(m15400f(this.f19064d));
        HashMap hashMap = new HashMap();
        for (String str : hashSet) {
            hashMap.put(str, m15398h(str));
        }
        return hashMap;
    }

    /* renamed from: h */
    public InterfaceC4665l m15398h(String str) {
        String m15399g = m15399g(this.f19063c, str);
        if (m15399g != null) {
            m15403c(str, m15401e(this.f19063c));
            return new C4777m(m15399g, 2);
        }
        String m15399g2 = m15399g(this.f19064d, str);
        if (m15399g2 != null) {
            return new C4777m(m15399g2, 1);
        }
        m15396j(str, "FirebaseRemoteConfigValue");
        return new C4777m("", 0);
    }

    public C4775k(Executor executor, C4767e c4767e, C4767e c4767e2) {
        this.f19062b = executor;
        this.f19063c = c4767e;
        this.f19064d = c4767e2;
    }

    /* renamed from: g */
    public static String m15399g(C4767e c4767e, String str) {
        C1433a m15401e = m15401e(c4767e);
        if (m15401e == null) {
            return null;
        }
        try {
            return m15401e.m22901d().getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }
}
