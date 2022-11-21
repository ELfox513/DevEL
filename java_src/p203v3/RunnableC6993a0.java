package p203v3;

import p194u3.C6883a;
/* renamed from: v3.a0 */
/* loaded from: classes.dex */
public final class RunnableC6993a0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C6996b0 f35899a;

    public RunnableC6993a0(C6996b0 c6996b0) {
        this.f35899a = c6996b0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C6883a.InterfaceC6892f interfaceC6892f;
        C6883a.InterfaceC6892f interfaceC6892f2;
        interfaceC6892f = this.f35899a.f35905a.f35913b;
        interfaceC6892f2 = this.f35899a.f35905a.f35913b;
        interfaceC6892f.mo2656b(interfaceC6892f2.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
