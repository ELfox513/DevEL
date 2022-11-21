package p220x3;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import p185t3.C6734b;
import p220x3.AbstractC7246c;
import p221x4.HandlerC7328d;
/* renamed from: x3.a1 */
/* loaded from: classes.dex */
public final class HandlerC7242a1 extends HandlerC7328d {

    /* renamed from: a */
    public final /* synthetic */ AbstractC7246c f36638a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC7242a1(AbstractC7246c abstractC7246c, Looper looper) {
        super(looper);
        this.f36638a = abstractC7246c;
    }

    /* renamed from: b */
    public static final boolean m2039b(Message message) {
        int i = message.what;
        return i == 2 || i == 1 || i == 7;
    }

    /* renamed from: a */
    public static final void m2040a(Message message) {
        AbstractC7245b1 abstractC7245b1 = (AbstractC7245b1) message.obj;
        abstractC7245b1.mo1875a();
        abstractC7245b1.m2027d();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        AbstractC7246c.InterfaceC7247a interfaceC7247a;
        AbstractC7246c.InterfaceC7247a interfaceC7247a2;
        C6734b c6734b;
        C6734b c6734b2;
        C6734b c6734b3;
        C6734b c6734b4;
        boolean z;
        if (this.f36638a.f36659N.get() != message.arg1) {
            if (m2039b(message)) {
                m2040a(message);
                return;
            }
            return;
        }
        int i = message.what;
        if ((i != 1 && i != 7 && ((i != 4 || this.f36638a.m1983s()) && message.what != 5)) || this.f36638a.m2000c()) {
            int i2 = message.what;
            PendingIntent pendingIntent = null;
            if (i2 == 4) {
                this.f36638a.f36656K = new C6734b(message.arg2);
                if (AbstractC7246c.m2006X(this.f36638a)) {
                    z = this.f36638a.f36657L;
                    if (!z) {
                        this.f36638a.m1992g0(3, null);
                        return;
                    }
                }
                c6734b3 = this.f36638a.f36656K;
                if (c6734b3 != null) {
                    c6734b4 = this.f36638a.f36656K;
                } else {
                    c6734b4 = new C6734b(8);
                }
                this.f36638a.f36646A.mo1978a(c6734b4);
                this.f36638a.mo2020J(c6734b4);
                return;
            } else if (i2 == 5) {
                c6734b = this.f36638a.f36656K;
                if (c6734b != null) {
                    c6734b2 = this.f36638a.f36656K;
                } else {
                    c6734b2 = new C6734b(8);
                }
                this.f36638a.f36646A.mo1978a(c6734b2);
                this.f36638a.mo2020J(c6734b2);
                return;
            } else if (i2 == 3) {
                Object obj = message.obj;
                if (obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) obj;
                }
                C6734b c6734b5 = new C6734b(message.arg2, pendingIntent);
                this.f36638a.f36646A.mo1978a(c6734b5);
                this.f36638a.mo2020J(c6734b5);
                return;
            } else if (i2 == 6) {
                this.f36638a.m1992g0(5, null);
                interfaceC7247a = this.f36638a.f36651F;
                if (interfaceC7247a != null) {
                    interfaceC7247a2 = this.f36638a.f36651F;
                    interfaceC7247a2.mo1948j0(message.arg2);
                }
                this.f36638a.m2019K(message.arg2);
                AbstractC7246c.m1999c0(this.f36638a, 5, 1, null);
                return;
            } else if (i2 == 2 && !this.f36638a.isConnected()) {
                m2040a(message);
                return;
            } else if (m2039b(message)) {
                ((AbstractC7245b1) message.obj).m2028c();
                return;
            } else {
                int i3 = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i3);
                Log.wtf("GmsClient", sb.toString(), new Exception());
                return;
            }
        }
        m2040a(message);
    }
}
