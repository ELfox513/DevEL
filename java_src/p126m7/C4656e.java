package p126m7;

import android.content.Context;
import android.util.Log;
import com.google.firebase.remoteconfig.internal.C1433a;
import com.google.firebase.remoteconfig.internal.C1436b;
import com.google.firebase.remoteconfig.internal.C1438c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4330a;
import p097j5.InterfaceC4344h;
import p124m5.C4638c;
import p133n5.C4753a;
import p133n5.C4755c;
import p135n7.C4767e;
import p135n7.C4775k;
import p170r6.InterfaceC6538g;
/* renamed from: m7.e */
/* loaded from: classes2.dex */
public class C4656e {

    /* renamed from: l */
    public static final byte[] f18708l = new byte[0];

    /* renamed from: a */
    public final Context f18709a;

    /* renamed from: b */
    public final C4638c f18710b;

    /* renamed from: c */
    public final C4755c f18711c;

    /* renamed from: d */
    public final Executor f18712d;

    /* renamed from: e */
    public final C4767e f18713e;

    /* renamed from: f */
    public final C4767e f18714f;

    /* renamed from: g */
    public final C4767e f18715g;

    /* renamed from: h */
    public final C1436b f18716h;

    /* renamed from: i */
    public final C4775k f18717i;

    /* renamed from: j */
    public final C1438c f18718j;

    /* renamed from: k */
    public final InterfaceC6538g f18719k;

    /* renamed from: j */
    public static boolean m15864j(C1433a c1433a, C1433a c1433a2) {
        return c1433a2 == null || !c1433a.m22900e().equals(c1433a2.m22900e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ AbstractC4346i m15861m(Void r1) {
        return m15869e();
    }

    /* renamed from: g */
    public AbstractC4346i<Boolean> m15867g() {
        return m15868f().mo16784r(this.f18712d, new InterfaceC4344h() { // from class: m7.a
            @Override // p097j5.InterfaceC4344h
            /* renamed from: a */
            public final AbstractC4346i mo1703a(Object obj) {
                AbstractC4346i m15861m;
                m15861m = C4656e.this.m15861m((Void) obj);
                return m15861m;
            }
        });
    }

    /* renamed from: h */
    public Map<String, InterfaceC4665l> m15866h() {
        return this.f18717i.m15402d();
    }

    /* renamed from: i */
    public InterfaceC4660i m15865i() {
        return this.f18718j.m22860c();
    }

    /* renamed from: p */
    public static List<Map<String, String>> m15858p(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    /* renamed from: e */
    public AbstractC4346i<Boolean> m15869e() {
        final AbstractC4346i<C1433a> m15416e = this.f18713e.m15416e();
        final AbstractC4346i<C1433a> m15416e2 = this.f18714f.m15416e();
        return C4352l.m16763h(m15416e, m15416e2).mo16792j(this.f18712d, new InterfaceC4330a() { // from class: m7.c
            @Override // p097j5.InterfaceC4330a
            /* renamed from: a */
            public final Object mo1688a(AbstractC4346i abstractC4346i) {
                AbstractC4346i m15863k;
                m15863k = C4656e.this.m15863k(m15416e, m15416e2, abstractC4346i);
                return m15863k;
            }
        });
    }

    /* renamed from: f */
    public AbstractC4346i<Void> m15868f() {
        return this.f18716h.m22885h().mo16785q(new InterfaceC4344h() { // from class: m7.b
            @Override // p097j5.InterfaceC4344h
            /* renamed from: a */
            public final AbstractC4346i mo1703a(Object obj) {
                AbstractC4346i m16767d;
                C1436b.C1437a c1437a = (C1436b.C1437a) obj;
                m16767d = C4352l.m16767d(null);
                return m16767d;
            }
        });
    }

    /* renamed from: o */
    public void m15859o() {
        this.f18714f.m15416e();
        this.f18715g.m15416e();
        this.f18713e.m15416e();
    }

    /* renamed from: q */
    public void m15857q(JSONArray jSONArray) {
        if (this.f18711c == null) {
            return;
        }
        try {
            this.f18711c.m15464k(m15858p(jSONArray));
        } catch (C4753a e) {
            Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e);
        } catch (JSONException e2) {
            Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e2);
        }
    }

    public C4656e(Context context, C4638c c4638c, InterfaceC6538g interfaceC6538g, C4755c c4755c, Executor executor, C4767e c4767e, C4767e c4767e2, C4767e c4767e3, C1436b c1436b, C4775k c4775k, C1438c c1438c) {
        this.f18709a = context;
        this.f18710b = c4638c;
        this.f18719k = interfaceC6538g;
        this.f18711c = c4755c;
        this.f18712d = executor;
        this.f18713e = c4767e;
        this.f18714f = c4767e2;
        this.f18715g = c4767e3;
        this.f18716h = c1436b;
        this.f18717i = c4775k;
        this.f18718j = c1438c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ AbstractC4346i m15863k(AbstractC4346i abstractC4346i, AbstractC4346i abstractC4346i2, AbstractC4346i abstractC4346i3) {
        if (abstractC4346i.mo16786p() && abstractC4346i.mo16790l() != null) {
            C1433a c1433a = (C1433a) abstractC4346i.mo16790l();
            if (abstractC4346i2.mo16786p() && !m15864j(c1433a, (C1433a) abstractC4346i2.mo16790l())) {
                return C4352l.m16767d(Boolean.FALSE);
            }
            return this.f18714f.m15410k(c1433a).mo16794h(this.f18712d, new InterfaceC4330a() { // from class: m7.d
                @Override // p097j5.InterfaceC4330a
                /* renamed from: a */
                public final Object mo1688a(AbstractC4346i abstractC4346i4) {
                    boolean m15860n;
                    m15860n = C4656e.this.m15860n(abstractC4346i4);
                    return Boolean.valueOf(m15860n);
                }
            });
        }
        return C4352l.m16767d(Boolean.FALSE);
    }

    /* renamed from: n */
    public final boolean m15860n(AbstractC4346i<C1433a> abstractC4346i) {
        if (abstractC4346i.mo16786p()) {
            this.f18713e.m15417d();
            if (abstractC4346i.mo16790l() != null) {
                m15857q(abstractC4346i.mo16790l().m22902c());
                return true;
            }
            Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
            return true;
        }
        return false;
    }
}
