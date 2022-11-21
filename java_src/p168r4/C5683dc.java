package p168r4;

import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.dc */
/* loaded from: classes2.dex */
public final class C5683dc implements InterfaceC6422xa {

    /* renamed from: b */
    public static final List<C5646cc> f22218b = new ArrayList(50);

    /* renamed from: a */
    public final Handler f22219a;

    public C5683dc(Handler handler) {
        this.f22219a = handler;
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: C */
    public final boolean mo5440C(int i) {
        return this.f22219a.sendEmptyMessage(i);
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: Y */
    public final void mo5439Y(int i) {
        this.f22219a.removeMessages(2);
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: b */
    public final void mo5438b(Object obj) {
        this.f22219a.removeCallbacksAndMessages(null);
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: c */
    public final InterfaceC6385wa mo5437c(int i, Object obj) {
        C5646cc m12170i = m12170i();
        m12170i.m12496a(this.f22219a.obtainMessage(i, obj), this);
        return m12170i;
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: e */
    public final boolean mo5435e(InterfaceC6385wa interfaceC6385wa) {
        return ((C5646cc) interfaceC6385wa).m12495b(this.f22219a);
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: f */
    public final boolean mo5434f(int i, long j) {
        return this.f22219a.sendEmptyMessageAtTime(2, j);
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: g */
    public final boolean mo5433g(Runnable runnable) {
        return this.f22219a.post(runnable);
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: h */
    public final boolean mo5432h(int i) {
        return this.f22219a.hasMessages(0);
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: x */
    public final InterfaceC6385wa mo5431x(int i) {
        C5646cc m12170i = m12170i();
        m12170i.m12496a(this.f22219a.obtainMessage(i), this);
        return m12170i;
    }

    /* renamed from: a */
    public static /* synthetic */ void m12171a(C5646cc c5646cc) {
        List<C5646cc> list = f22218b;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(c5646cc);
            }
        }
    }

    /* renamed from: i */
    public static C5646cc m12170i() {
        C5646cc remove;
        List<C5646cc> list = f22218b;
        synchronized (list) {
            if (list.isEmpty()) {
                remove = new C5646cc(null);
            } else {
                remove = list.remove(list.size() - 1);
            }
        }
        return remove;
    }

    @Override // p168r4.InterfaceC6422xa
    /* renamed from: d */
    public final InterfaceC6385wa mo5436d(int i, int i2, int i3) {
        C5646cc m12170i = m12170i();
        m12170i.m12496a(this.f22219a.obtainMessage(1, i2, i3), this);
        return m12170i;
    }
}
