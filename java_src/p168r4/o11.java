package p168r4;

import android.content.Context;
import android.view.View;
import java.util.Collections;
import java.util.Set;
import p235z2.C7601t;
/* renamed from: r4.o11 */
/* loaded from: classes2.dex */
public class o11 {

    /* renamed from: a */
    public final g31 f28766a;

    /* renamed from: b */
    public final View f28767b;

    /* renamed from: c */
    public final qo2 f28768c;

    /* renamed from: d */
    public final cs0 f28769d;

    public o11(View view, cs0 cs0Var, g31 g31Var, qo2 qo2Var) {
        this.f28767b = view;
        this.f28769d = cs0Var;
        this.f28766a = g31Var;
        this.f28768c = qo2Var;
    }

    /* renamed from: g */
    public static final Set<ve1<y81>> m8936g(z21 z21Var) {
        return Collections.singleton(new ve1(z21Var, qm0.f30195f));
    }

    /* renamed from: h */
    public static final ve1<y81> m8935h(x21 x21Var) {
        return new ve1<>(x21Var, qm0.f30194e);
    }

    /* renamed from: a */
    public final cs0 m8942a() {
        return this.f28769d;
    }

    /* renamed from: b */
    public final View m8941b() {
        return this.f28767b;
    }

    /* renamed from: c */
    public final g31 m8940c() {
        return this.f28766a;
    }

    /* renamed from: d */
    public final qo2 m8939d() {
        return this.f28768c;
    }

    /* renamed from: e */
    public w81 mo8938e(Set<ve1<y81>> set) {
        return new w81(set);
    }

    /* renamed from: f */
    public static final ve1<y81> m8937f(final Context context, final im0 im0Var, final no2 no2Var, final hp2 hp2Var) {
        return new ve1<>(new y81(context, im0Var, no2Var, hp2Var) { // from class: r4.m11

            /* renamed from: a */
            public final Context f27445a;

            /* renamed from: b */
            public final im0 f27446b;

            /* renamed from: d */
            public final no2 f27447d;

            /* renamed from: k */
            public final hp2 f27448k;

            {
                this.f27445a = context;
                this.f27446b = im0Var;
                this.f27447d = no2Var;
                this.f27448k = hp2Var;
            }

            @Override // p168r4.y81
            /* renamed from: d */
            public final void mo4268d() {
                C7601t.m929n().m26406g(this.f27445a, this.f27446b.f25171a, this.f27447d.f28380C.toString(), this.f27448k.f24781f);
            }
        }, qm0.f30195f);
    }
}
