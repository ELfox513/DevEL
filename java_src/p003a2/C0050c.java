package p003a2;

import java.util.ArrayList;
import p015b2.InterfaceC0442k;
import p234z1.C7567r;
/* renamed from: a2.c */
/* loaded from: classes.dex */
public class C0050c {

    /* renamed from: a */
    public final ArrayList<InterfaceC0442k> f77a;

    /* renamed from: b */
    public final void m27732b(int i) {
        this.f77a.ensureCapacity(i);
        for (int size = this.f77a.size(); size < i; size++) {
            this.f77a.add(C7567r.m1177b(i));
        }
    }

    /* renamed from: c */
    public void m27731c(int i, InterfaceC0442k interfaceC0442k) {
        if (i < this.f77a.size()) {
            interfaceC0442k.mo26448b(this.f77a.get(i));
        }
    }

    public C0050c(int i) {
        this.f77a = new ArrayList<>(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.f77a.add(C7567r.m1177b(i));
        }
    }

    /* renamed from: a */
    public void m27733a(int i, int i2) {
        m27732b(Math.max(i, i2) + 1);
        this.f77a.get(i).add(i2);
        this.f77a.get(i2).add(i);
    }
}
