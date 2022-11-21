package p168r4;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.sz1 */
/* loaded from: classes2.dex */
public final class sz1 implements nt2 {

    /* renamed from: a */
    public final Map<gt2, String> f31596a = new HashMap();

    /* renamed from: b */
    public final Map<gt2, String> f31597b = new HashMap();

    /* renamed from: d */
    public final wt2 f31598d;

    @Override // p168r4.nt2
    /* renamed from: s */
    public final void mo6740s(gt2 gt2Var, String str) {
    }

    @Override // p168r4.nt2
    /* renamed from: a */
    public final void mo6742a(gt2 gt2Var, String str) {
        String str2;
        String str3;
        wt2 wt2Var = this.f31598d;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "task.".concat(valueOf);
        } else {
            str2 = new String("task.");
        }
        wt2Var.m5586e(str2, "s.");
        if (this.f31597b.containsKey(gt2Var)) {
            wt2 wt2Var2 = this.f31598d;
            String valueOf2 = String.valueOf(this.f31597b.get(gt2Var));
            if (valueOf2.length() != 0) {
                str3 = "label.".concat(valueOf2);
            } else {
                str3 = new String("label.");
            }
            wt2Var2.m5586e(str3, "s.");
        }
    }

    @Override // p168r4.nt2
    /* renamed from: c */
    public final void mo6741c(gt2 gt2Var, String str, Throwable th) {
        String str2;
        String str3;
        wt2 wt2Var = this.f31598d;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "task.".concat(valueOf);
        } else {
            str2 = new String("task.");
        }
        wt2Var.m5586e(str2, "f.");
        if (this.f31597b.containsKey(gt2Var)) {
            wt2 wt2Var2 = this.f31598d;
            String valueOf2 = String.valueOf(this.f31597b.get(gt2Var));
            if (valueOf2.length() != 0) {
                str3 = "label.".concat(valueOf2);
            } else {
                str3 = new String("label.");
            }
            wt2Var2.m5586e(str3, "f.");
        }
    }

    @Override // p168r4.nt2
    /* renamed from: u */
    public final void mo6739u(gt2 gt2Var, String str) {
        String str2;
        String str3;
        wt2 wt2Var = this.f31598d;
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "task.".concat(valueOf);
        } else {
            str2 = new String("task.");
        }
        wt2Var.m5587d(str2);
        if (this.f31596a.containsKey(gt2Var)) {
            wt2 wt2Var2 = this.f31598d;
            String valueOf2 = String.valueOf(this.f31596a.get(gt2Var));
            if (valueOf2.length() != 0) {
                str3 = "label.".concat(valueOf2);
            } else {
                str3 = new String("label.");
            }
            wt2Var2.m5587d(str3);
        }
    }

    public sz1(Set<rz1> set, wt2 wt2Var) {
        gt2 gt2Var;
        String str;
        gt2 gt2Var2;
        String str2;
        this.f31598d = wt2Var;
        for (rz1 rz1Var : set) {
            Map<gt2, String> map = this.f31596a;
            gt2Var = rz1Var.f31181b;
            str = rz1Var.f31180a;
            map.put(gt2Var, str);
            Map<gt2, String> map2 = this.f31597b;
            gt2Var2 = rz1Var.f31182c;
            str2 = rz1Var.f31180a;
            map2.put(gt2Var2, str2);
        }
    }
}
