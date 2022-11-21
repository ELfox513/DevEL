package p168r4;

import java.util.ArrayDeque;
import java.util.Arrays;
/* renamed from: r4.no3 */
/* loaded from: classes2.dex */
public final class no3 {

    /* renamed from: a */
    public final ArrayDeque<ll3> f28440a = new ArrayDeque<>();

    public /* synthetic */ no3(oo3 oo3Var) {
    }

    /* renamed from: c */
    public static final int m9018c(int i) {
        int binarySearch = Arrays.binarySearch(qo3.f30244u, i);
        return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
    }

    /* renamed from: a */
    public static /* synthetic */ ll3 m9020a(no3 no3Var, ll3 ll3Var, ll3 ll3Var2) {
        no3Var.m9019b(ll3Var);
        no3Var.m9019b(ll3Var2);
        ll3 pop = no3Var.f28440a.pop();
        while (!no3Var.f28440a.isEmpty()) {
            pop = new qo3(no3Var.f28440a.pop(), pop);
        }
        return pop;
    }

    /* renamed from: b */
    public final void m9019b(ll3 ll3Var) {
        ll3 ll3Var2;
        ll3 ll3Var3;
        if (ll3Var.mo7744t()) {
            int m9018c = m9018c(ll3Var.mo7747o());
            int m7753U = qo3.m7753U(m9018c + 1);
            if (!this.f28440a.isEmpty() && this.f28440a.peek().mo7747o() < m7753U) {
                int m7753U2 = qo3.m7753U(m9018c);
                ll3 pop = this.f28440a.pop();
                while (!this.f28440a.isEmpty() && this.f28440a.peek().mo7747o() < m7753U2) {
                    pop = new qo3(this.f28440a.pop(), pop);
                }
                qo3 qo3Var = new qo3(pop, ll3Var);
                while (!this.f28440a.isEmpty()) {
                    if (this.f28440a.peek().mo7747o() >= qo3.m7753U(m9018c(qo3Var.mo7747o()) + 1)) {
                        break;
                    }
                    qo3Var = new qo3(this.f28440a.pop(), qo3Var);
                }
                this.f28440a.push(qo3Var);
                return;
            }
            this.f28440a.push(ll3Var);
        } else if (ll3Var instanceof qo3) {
            qo3 qo3Var2 = (qo3) ll3Var;
            ll3Var2 = qo3Var2.f30246q;
            m9019b(ll3Var2);
            ll3Var3 = qo3Var2.f30247r;
            m9019b(ll3Var3);
        } else {
            throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(ll3Var.getClass())));
        }
    }
}
