package p168r4;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import java.util.Map;
import p040d2.InterfaceC3284b;
import p040d2.InterfaceC3290f;
import p041d3.AbstractC3296a;
import p041d3.InterfaceC3301f;
import p050e3.C3367c;
import p050e3.InterfaceC3365a;
/* renamed from: r4.cb0 */
/* loaded from: classes2.dex */
public final class cb0 extends eb0 {

    /* renamed from: b */
    public static final id0 f21463b = new id0();

    /* renamed from: a */
    public Map<Class<Object>, Object> f21464a;

    @Override // p168r4.fb0
    /* renamed from: A */
    public final boolean mo11590A(String str) {
        try {
            return InterfaceC3365a.class.isAssignableFrom(Class.forName(str, false, cb0.class.getClassLoader()));
        } catch (Throwable unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", trying Adapter implementation class.");
            cm0.m12437f(sb.toString());
            return false;
        }
    }

    @Override // p168r4.fb0
    /* renamed from: E0 */
    public final boolean mo11589E0(String str) {
        try {
            return AbstractC3296a.class.isAssignableFrom(Class.forName(str, false, cb0.class.getClassLoader()));
        } catch (Throwable unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104);
            sb.append("Could not load custom event implementation class as Adapter: ");
            sb.append(str);
            sb.append(", assuming old custom event implementation.");
            cm0.m12437f(sb.toString());
            return false;
        }
    }

    /* renamed from: g7 */
    public final void m12499g7(Map<Class<Object>, Object> map) {
        this.f21464a = map;
    }

    @Override // p168r4.fb0
    /* renamed from: s */
    public final ed0 mo11588s(String str) {
        return new pd0((RtbAdapter) Class.forName(str, false, id0.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
    }

    @Override // p168r4.fb0
    /* renamed from: u */
    public final ib0 mo11587u(String str) {
        ib0 jc0Var;
        try {
            try {
                Class<?> cls = Class.forName(str, false, cb0.class.getClassLoader());
                if (InterfaceC3284b.class.isAssignableFrom(cls)) {
                    InterfaceC3284b interfaceC3284b = (InterfaceC3284b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    return new jc0(interfaceC3284b, (InterfaceC3290f) this.f21464a.get(interfaceC3284b.getAdditionalParametersType()));
                } else if (InterfaceC3301f.class.isAssignableFrom(cls)) {
                    return new ec0((InterfaceC3301f) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                } else {
                    if (AbstractC3296a.class.isAssignableFrom(cls)) {
                        return new ec0((AbstractC3296a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                    sb.append("Could not instantiate mediation adapter: ");
                    sb.append(str);
                    sb.append(" (not a valid adapter).");
                    cm0.m12437f(sb.toString());
                    throw new RemoteException();
                }
            } catch (Throwable th) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 43);
                sb2.append("Could not instantiate mediation adapter: ");
                sb2.append(str);
                sb2.append(". ");
                cm0.m12436g(sb2.toString(), th);
                throw new RemoteException();
            }
        } catch (Throwable unused) {
            cm0.m12442a("Reflection failed, retrying using direct instantiation");
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                jc0Var = new ec0(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                jc0Var = new ec0(new AdUrlAdapter());
            } else if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                jc0Var = new ec0(new CustomEventAdapter());
            } else {
                if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
                    jc0Var = new jc0(customEventAdapter, (C3367c) this.f21464a.get(customEventAdapter.getAdditionalParametersType()));
                }
                throw new RemoteException();
            }
            return jc0Var;
        }
    }
}
