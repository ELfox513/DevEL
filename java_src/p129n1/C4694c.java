package p129n1;

import p015b2.C0437f;
import p218x1.AbstractC7204a;
import p218x1.C7207b0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7224l;
import p218x1.C7227o;
import p218x1.C7228p;
import p218x1.C7235w;
import p218x1.C7237y;
/* renamed from: n1.c */
/* loaded from: classes.dex */
public class C4694c extends C0437f {
    public C4694c(int i) {
        super(i);
    }

    public AbstractC7204a get(int i) {
        return (AbstractC7204a) get0(i);
    }

    /* renamed from: x */
    public void m15745x(int i, AbstractC7204a abstractC7204a) {
        if (!(abstractC7204a instanceof C7212d0) && !(abstractC7204a instanceof C7214e0) && !(abstractC7204a instanceof C7228p) && !(abstractC7204a instanceof C7235w) && !(abstractC7204a instanceof C7227o) && !(abstractC7204a instanceof C7224l) && !(abstractC7204a instanceof C7237y) && !(abstractC7204a instanceof C7207b0)) {
            Class<?> cls = abstractC7204a.getClass();
            throw new IllegalArgumentException("bad type for bootstrap argument: " + cls);
        }
        set0(i, abstractC7204a);
    }
}
