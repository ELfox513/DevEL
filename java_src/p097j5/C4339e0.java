package p097j5;

import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: j5.e0 */
/* loaded from: classes2.dex */
public final class C4339e0<TResult> {

    /* renamed from: a */
    public final Object f18211a = new Object();

    /* renamed from: b */
    public Queue<InterfaceC4337d0<TResult>> f18212b;

    /* renamed from: c */
    public boolean f18213c;

    /* renamed from: a */
    public final void m16806a(InterfaceC4337d0<TResult> interfaceC4337d0) {
        synchronized (this.f18211a) {
            if (this.f18212b == null) {
                this.f18212b = new ArrayDeque();
            }
            this.f18212b.add(interfaceC4337d0);
        }
    }

    /* renamed from: b */
    public final void m16805b(AbstractC4346i<TResult> abstractC4346i) {
        InterfaceC4337d0<TResult> poll;
        synchronized (this.f18211a) {
            if (this.f18212b != null && !this.f18213c) {
                this.f18213c = true;
                while (true) {
                    synchronized (this.f18211a) {
                        poll = this.f18212b.poll();
                        if (poll == null) {
                            this.f18213c = false;
                            return;
                        }
                    }
                    poll.mo16749b(abstractC4346i);
                }
            }
        }
    }
}
