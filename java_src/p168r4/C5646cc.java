package p168r4;

import android.os.Handler;
import android.os.Message;
/* renamed from: r4.cc */
/* loaded from: classes2.dex */
public final class C5646cc implements InterfaceC6385wa {

    /* renamed from: a */
    public Message f21470a;

    /* renamed from: b */
    public C5683dc f21471b;

    public C5646cc() {
    }

    public /* synthetic */ C5646cc(C5610bc c5610bc) {
    }

    /* renamed from: a */
    public final C5646cc m12496a(Message message, C5683dc c5683dc) {
        this.f21470a = message;
        this.f21471b = c5683dc;
        return this;
    }

    /* renamed from: c */
    public final void m12494c() {
        this.f21470a = null;
        this.f21471b = null;
        C5683dc.m12171a(this);
    }

    /* renamed from: b */
    public final boolean m12495b(Handler handler) {
        Message message = this.f21470a;
        message.getClass();
        boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        m12494c();
        return sendMessageAtFrontOfQueue;
    }

    @Override // p168r4.InterfaceC6385wa
    public final void zza() {
        Message message = this.f21470a;
        message.getClass();
        message.sendToTarget();
        m12494c();
    }
}
