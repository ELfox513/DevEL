package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0460b1;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p235z2.C7601t;
/* renamed from: r4.dl1 */
/* loaded from: classes2.dex */
public final class dl1 implements mj1 {

    /* renamed from: a */
    public final ub0 f22317a;

    /* renamed from: b */
    public final b81 f22318b;

    /* renamed from: c */
    public final h71 f22319c;

    /* renamed from: d */
    public final af1 f22320d;

    /* renamed from: e */
    public final Context f22321e;

    /* renamed from: f */
    public final no2 f22322f;

    /* renamed from: g */
    public final im0 f22323g;

    /* renamed from: h */
    public final hp2 f22324h;

    /* renamed from: i */
    public boolean f22325i = false;

    /* renamed from: j */
    public boolean f22326j = false;

    /* renamed from: k */
    public boolean f22327k = true;

    /* renamed from: l */
    public final qb0 f22328l;

    /* renamed from: m */
    public final rb0 f22329m;

    public dl1(qb0 qb0Var, rb0 rb0Var, ub0 ub0Var, b81 b81Var, h71 h71Var, af1 af1Var, Context context, no2 no2Var, im0 im0Var, hp2 hp2Var, byte[] bArr) {
        this.f22328l = qb0Var;
        this.f22329m = rb0Var;
        this.f22317a = ub0Var;
        this.f22318b = b81Var;
        this.f22319c = h71Var;
        this.f22320d = af1Var;
        this.f22321e = context;
        this.f22322f = no2Var;
        this.f22323g = im0Var;
        this.f22324h = hp2Var;
    }

    @Override // p168r4.mj1
    /* renamed from: B */
    public final void mo9371B() {
    }

    @Override // p168r4.mj1
    /* renamed from: K */
    public final void mo9370K() {
        throw null;
    }

    @Override // p168r4.mj1
    /* renamed from: Q */
    public final void mo9369Q(String str) {
    }

    @Override // p168r4.mj1
    /* renamed from: a */
    public final void mo9368a(InterfaceC6333uw interfaceC6333uw) {
        cm0.m12437f("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // p168r4.mj1
    /* renamed from: c */
    public final void mo9366c(InterfaceC6222rw interfaceC6222rw) {
        cm0.m12437f("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // p168r4.mj1
    /* renamed from: d */
    public final JSONObject mo9365d(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // p168r4.mj1
    /* renamed from: e0 */
    public final void mo9363e0(Bundle bundle) {
    }

    @Override // p168r4.mj1
    /* renamed from: f */
    public final void mo9362f(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (this.f22326j && this.f22322f.f28385H) {
            return;
        }
        m12099r(view);
    }

    @Override // p168r4.mj1
    /* renamed from: g */
    public final void mo9361g(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // p168r4.mj1
    /* renamed from: h */
    public final void mo9360h() {
        this.f22326j = true;
    }

    @Override // p168r4.mj1
    /* renamed from: i */
    public final boolean mo9359i() {
        return this.f22322f.f28385H;
    }

    @Override // p168r4.mj1
    /* renamed from: j */
    public final void mo9358j(View view) {
    }

    @Override // p168r4.mj1
    /* renamed from: l */
    public final JSONObject mo9356l(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // p168r4.mj1
    /* renamed from: l0 */
    public final void mo9355l0(Bundle bundle) {
    }

    @Override // p168r4.mj1
    /* renamed from: m */
    public final void mo9354m() {
    }

    @Override // p168r4.mj1
    /* renamed from: n */
    public final void mo9353n() {
    }

    @Override // p168r4.mj1
    /* renamed from: p */
    public final boolean mo9351p(Bundle bundle) {
        return false;
    }

    @Override // p168r4.mj1
    /* renamed from: q */
    public final void mo9350q(g40 g40Var) {
    }

    @Override // p168r4.mj1
    /* renamed from: z */
    public final void mo9349z() {
    }

    /* renamed from: s */
    public static final HashMap<String, View> m12098s(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    hashMap.put(entry.getKey(), view);
                }
            }
        }
        return hashMap;
    }

    @Override // p168r4.mj1
    /* renamed from: b */
    public final void mo9367b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.f22326j) {
            cm0.m12437f("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.f22322f.f28385H) {
            cm0.m12437f("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            m12099r(view);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: k */
    public final void mo9357k(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.f22325i) {
                this.f22325i = C7601t.m929n().m26406g(this.f22321e, this.f22323g.f25171a, this.f22322f.f28380C.toString(), this.f22324h.f24781f);
            }
            if (!this.f22327k) {
                return;
            }
            ub0 ub0Var = this.f22317a;
            if (ub0Var != null && !ub0Var.mo6573n()) {
                this.f22317a.mo6588E();
                this.f22318b.zza();
                return;
            }
            qb0 qb0Var = this.f22328l;
            if (qb0Var != null && !qb0Var.m7895o()) {
                this.f22328l.m7897l();
                this.f22318b.zza();
                return;
            }
            rb0 rb0Var = this.f22329m;
            if (rb0Var != null && !rb0Var.m7554p()) {
                this.f22329m.m7556i();
                this.f22318b.zza();
            }
        } catch (RemoteException e) {
            cm0.m12436g("Failed to call recordImpression", e);
        }
    }

    /* renamed from: r */
    public final void m12099r(View view) {
        try {
            ub0 ub0Var = this.f22317a;
            if (ub0Var != null && !ub0Var.mo6568t()) {
                this.f22317a.mo6587G0(BinderC3514b.m18741L0(view));
                this.f22319c.mo3609F0();
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30983b7)).booleanValue()) {
                    this.f22320d.mo5096a();
                    return;
                }
                return;
            }
            qb0 qb0Var = this.f22328l;
            if (qb0Var != null && !qb0Var.m7896m()) {
                this.f22328l.m7900i0(BinderC3514b.m18741L0(view));
                this.f22319c.mo3609F0();
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30983b7)).booleanValue()) {
                    this.f22320d.mo5096a();
                    return;
                }
                return;
            }
            rb0 rb0Var = this.f22329m;
            if (rb0Var != null && !rb0Var.m7552q()) {
                this.f22329m.m7549z2(BinderC3514b.m18741L0(view));
                this.f22319c.mo3609F0();
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30983b7)).booleanValue()) {
                    this.f22320d.mo5096a();
                }
            }
        } catch (RemoteException e) {
            cm0.m12436g("Failed to call handleClick", e);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: e */
    public final void mo9364e(View view, Map<String, WeakReference<View>> map) {
        try {
            InterfaceC3512a m18741L0 = BinderC3514b.m18741L0(view);
            ub0 ub0Var = this.f22317a;
            if (ub0Var != null) {
                ub0Var.mo6586L5(m18741L0);
                return;
            }
            qb0 qb0Var = this.f22328l;
            if (qb0Var != null) {
                qb0Var.m7912A2(m18741L0);
                return;
            }
            rb0 rb0Var = this.f22329m;
            if (rb0Var != null) {
                rb0Var.m7562c7(m18741L0);
            }
        } catch (RemoteException e) {
            cm0.m12436g("Failed to call untrackView", e);
        }
    }

    @Override // p168r4.mj1
    /* renamed from: o */
    public final void mo9352o(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Map<String, WeakReference<View>> map3;
        Map<String, WeakReference<View>> map4;
        Object obj;
        InterfaceC3512a mo6574m;
        try {
            InterfaceC3512a m18741L0 = BinderC3514b.m18741L0(view);
            JSONObject jSONObject = this.f22322f.f28417g0;
            boolean z = true;
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30977b1)).booleanValue() && jSONObject.length() != 0) {
                if (map == null) {
                    map3 = new HashMap<>();
                } else {
                    map3 = map;
                }
                if (map2 == null) {
                    map4 = new HashMap<>();
                } else {
                    map4 = map2;
                }
                HashMap hashMap = new HashMap();
                hashMap.putAll(map3);
                hashMap.putAll(map4);
                Iterator<String> keys = jSONObject.keys();
                loop0: while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    if (optJSONArray != null) {
                        WeakReference weakReference = (WeakReference) hashMap.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30986c1)).booleanValue() && next.equals("3010")) {
                                ub0 ub0Var = this.f22317a;
                                Object obj2 = null;
                                if (ub0Var != null) {
                                    try {
                                        mo6574m = ub0Var.mo6574m();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else {
                                    qb0 qb0Var = this.f22328l;
                                    if (qb0Var != null) {
                                        mo6574m = qb0Var.m7911C6();
                                    } else {
                                        rb0 rb0Var = this.f22329m;
                                        if (rb0Var != null) {
                                            mo6574m = rb0Var.m7551t();
                                        } else {
                                            mo6574m = null;
                                        }
                                    }
                                }
                                if (mo6574m != null) {
                                    obj2 = BinderC3514b.m18740t0(mo6574m);
                                }
                                if (obj2 != null) {
                                    cls = obj2.getClass();
                                }
                            }
                            try {
                                ArrayList<String> arrayList = new ArrayList();
                                C0460b1.m26429a(optJSONArray, arrayList);
                                C7601t.m939d();
                                ClassLoader classLoader = this.f22321e.getClassLoader();
                                for (String str : arrayList) {
                                    if (Class.forName(str, false, classLoader).isAssignableFrom(cls)) {
                                        break;
                                    }
                                }
                            } catch (JSONException unused2) {
                                continue;
                            }
                        }
                        z = false;
                        break;
                    }
                }
            }
            this.f22327k = z;
            HashMap<String, View> m12098s = m12098s(map);
            HashMap<String, View> m12098s2 = m12098s(map2);
            ub0 ub0Var2 = this.f22317a;
            if (ub0Var2 != null) {
                ub0Var2.mo6582d5(m18741L0, BinderC3514b.m18741L0(m12098s), BinderC3514b.m18741L0(m12098s2));
                return;
            }
            qb0 qb0Var2 = this.f22328l;
            if (qb0Var2 != null) {
                qb0Var2.m7903f7(m18741L0, BinderC3514b.m18741L0(m12098s), BinderC3514b.m18741L0(m12098s2));
                this.f22328l.m7910Q4(m18741L0);
                return;
            }
            rb0 rb0Var2 = this.f22329m;
            if (rb0Var2 != null) {
                rb0Var2.m7566C6(m18741L0, BinderC3514b.m18741L0(m12098s), BinderC3514b.m18741L0(m12098s2));
                this.f22329m.m7564b2(m18741L0);
            }
        } catch (RemoteException e) {
            cm0.m12436g("Failed to call trackView", e);
        }
    }
}
