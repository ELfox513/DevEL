package p168r4;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p016b3.InterfaceC0549y1;
import p235z2.C7601t;
/* renamed from: r4.us1 */
/* loaded from: classes2.dex */
public final class us1 {

    /* renamed from: e */
    public final String f32370e;

    /* renamed from: f */
    public final qs1 f32371f;

    /* renamed from: b */
    public final List<Map<String, String>> f32367b = new ArrayList();

    /* renamed from: c */
    public boolean f32368c = false;

    /* renamed from: d */
    public boolean f32369d = false;

    /* renamed from: a */
    public final InterfaceC0549y1 f32366a = C7601t.m935h().m9051p();

    /* renamed from: a */
    public final synchronized void m6389a(String str) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31107r1)).booleanValue()) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
                Map<String, String> m6384f = m6384f();
                m6384f.put("action", "adapter_init_started");
                m6384f.put("ancn", str);
                this.f32367b.add(m6384f);
            }
        }
    }

    /* renamed from: b */
    public final synchronized void m6388b(String str) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31107r1)).booleanValue()) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
                Map<String, String> m6384f = m6384f();
                m6384f.put("action", "adapter_init_finished");
                m6384f.put("ancn", str);
                this.f32367b.add(m6384f);
            }
        }
    }

    /* renamed from: c */
    public final synchronized void m6387c(String str, String str2) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31107r1)).booleanValue()) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
                Map<String, String> m6384f = m6384f();
                m6384f.put("action", "adapter_init_finished");
                m6384f.put("ancn", str);
                m6384f.put("rqe", str2);
                this.f32367b.add(m6384f);
            }
        }
    }

    /* renamed from: d */
    public final synchronized void m6386d() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31107r1)).booleanValue()) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
                if (!this.f32368c) {
                    Map<String, String> m6384f = m6384f();
                    m6384f.put("action", "init_started");
                    this.f32367b.add(m6384f);
                    this.f32368c = true;
                }
            }
        }
    }

    /* renamed from: e */
    public final synchronized void m6385e() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31107r1)).booleanValue()) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
                if (!this.f32369d) {
                    Map<String, String> m6384f = m6384f();
                    m6384f.put("action", "init_finished");
                    this.f32367b.add(m6384f);
                    for (Map<String, String> map : this.f32367b) {
                        this.f32371f.m7016a(map);
                    }
                    this.f32369d = true;
                }
            }
        }
    }

    /* renamed from: f */
    public final Map<String, String> m6384f() {
        String str;
        Map<String, String> m7681c = this.f32371f.m7681c();
        m7681c.put("tms", Long.toString(C7601t.m932k().mo24762b(), 10));
        if (this.f32366a.mo26190y()) {
            str = "";
        } else {
            str = this.f32370e;
        }
        m7681c.put("tid", str);
        return m7681c;
    }

    public us1(String str, qs1 qs1Var) {
        this.f32370e = str;
        this.f32371f = qs1Var;
    }
}
