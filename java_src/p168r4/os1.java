package p168r4;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p026c4.InterfaceC1045f;
/* renamed from: r4.os1 */
/* loaded from: classes2.dex */
public final class os1 implements nt2 {

    /* renamed from: b */
    public final hs1 f29115b;

    /* renamed from: d */
    public final InterfaceC1045f f29116d;

    /* renamed from: a */
    public final Map<gt2, Long> f29114a = new HashMap();

    /* renamed from: k */
    public final Map<gt2, ns1> f29117k = new HashMap();

    @Override // p168r4.nt2
    /* renamed from: s */
    public final void mo6740s(gt2 gt2Var, String str) {
    }

    @Override // p168r4.nt2
    /* renamed from: u */
    public final void mo6739u(gt2 gt2Var, String str) {
        this.f29114a.put(gt2Var, Long.valueOf(this.f29116d.mo24762b()));
    }

    @Override // p168r4.nt2
    /* renamed from: a */
    public final void mo6742a(gt2 gt2Var, String str) {
        String str2;
        String str3;
        if (this.f29114a.containsKey(gt2Var)) {
            long mo24762b = this.f29116d.mo24762b() - this.f29114a.get(gt2Var).longValue();
            Map<String, String> m10827c = this.f29115b.m10827c();
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = "task.".concat(valueOf);
            } else {
                str2 = new String("task.");
            }
            String valueOf2 = String.valueOf(Long.toString(mo24762b));
            if (valueOf2.length() != 0) {
                str3 = "s.".concat(valueOf2);
            } else {
                str3 = new String("s.");
            }
            m10827c.put(str2, str3);
        }
        if (this.f29117k.containsKey(gt2Var)) {
            m8706b(gt2Var, true);
        }
    }

    /* renamed from: b */
    public final void m8706b(gt2 gt2Var, boolean z) {
        gt2 gt2Var2;
        String str;
        String str2;
        String str3;
        String str4;
        gt2Var2 = this.f29117k.get(gt2Var).f28471b;
        if (true != z) {
            str = "f.";
        } else {
            str = "s.";
        }
        if (this.f29114a.containsKey(gt2Var2)) {
            long mo24762b = this.f29116d.mo24762b() - this.f29114a.get(gt2Var2).longValue();
            Map<String, String> m10827c = this.f29115b.m10827c();
            str2 = this.f29117k.get(gt2Var).f28470a;
            if (str2.length() != 0) {
                str3 = "label.".concat(str2);
            } else {
                str3 = new String("label.");
            }
            String valueOf = String.valueOf(Long.toString(mo24762b));
            if (valueOf.length() != 0) {
                str4 = str.concat(valueOf);
            } else {
                str4 = new String(str);
            }
            m10827c.put(str3, str4);
        }
    }

    @Override // p168r4.nt2
    /* renamed from: c */
    public final void mo6741c(gt2 gt2Var, String str, Throwable th) {
        String str2;
        String str3;
        if (this.f29114a.containsKey(gt2Var)) {
            long mo24762b = this.f29116d.mo24762b() - this.f29114a.get(gt2Var).longValue();
            Map<String, String> m10827c = this.f29115b.m10827c();
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = "task.".concat(valueOf);
            } else {
                str2 = new String("task.");
            }
            String valueOf2 = String.valueOf(Long.toString(mo24762b));
            if (valueOf2.length() != 0) {
                str3 = "f.".concat(valueOf2);
            } else {
                str3 = new String("f.");
            }
            m10827c.put(str2, str3);
        }
        if (this.f29117k.containsKey(gt2Var)) {
            m8706b(gt2Var, false);
        }
    }

    public os1(hs1 hs1Var, Set<ns1> set, InterfaceC1045f interfaceC1045f) {
        gt2 gt2Var;
        this.f29115b = hs1Var;
        for (ns1 ns1Var : set) {
            Map<gt2, ns1> map = this.f29117k;
            gt2Var = ns1Var.f28472c;
            map.put(gt2Var, ns1Var);
        }
        this.f29116d = interfaceC1045f;
    }
}
