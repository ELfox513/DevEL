package androidx.lifecycle;

import androidx.lifecycle.AbstractC0317d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements InterfaceC0320e {

    /* renamed from: a */
    public final InterfaceC0316c[] f1187a;

    @Override // androidx.lifecycle.InterfaceC0320e
    /* renamed from: c */
    public void mo26714c(InterfaceC0322g interfaceC0322g, AbstractC0317d.EnumC0318a enumC0318a) {
        C0329l c0329l = new C0329l();
        for (InterfaceC0316c interfaceC0316c : this.f1187a) {
            interfaceC0316c.m26797a(interfaceC0322g, enumC0318a, false, c0329l);
        }
        for (InterfaceC0316c interfaceC0316c2 : this.f1187a) {
            interfaceC0316c2.m26797a(interfaceC0322g, enumC0318a, true, c0329l);
        }
    }

    public CompositeGeneratedAdaptersObserver(InterfaceC0316c[] interfaceC0316cArr) {
        this.f1187a = interfaceC0316cArr;
    }
}
