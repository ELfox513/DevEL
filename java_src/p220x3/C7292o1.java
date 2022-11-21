package p220x3;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
/* renamed from: x3.o1 */
/* loaded from: classes.dex */
public final class C7292o1 implements Handler.Callback {

    /* renamed from: a */
    public final /* synthetic */ C7296p1 f36770a;

    public /* synthetic */ C7292o1(C7296p1 c7296p1, C7285m1 c7285m1) {
        this.f36770a = c7296p1;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                return false;
            }
            hashMap4 = this.f36770a.f36777d;
            synchronized (hashMap4) {
                C7282l1 c7282l1 = (C7282l1) message.obj;
                hashMap5 = this.f36770a.f36777d;
                ServiceConnectionC7288n1 serviceConnectionC7288n1 = (ServiceConnectionC7288n1) hashMap5.get(c7282l1);
                if (serviceConnectionC7288n1 != null && serviceConnectionC7288n1.m1913f() == 3) {
                    String valueOf = String.valueOf(c7282l1);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName m1909j = serviceConnectionC7288n1.m1909j();
                    if (m1909j == null) {
                        m1909j = c7282l1.m1921b();
                    }
                    if (m1909j == null) {
                        String m1922a = c7282l1.m1922a();
                        C7297q.m1883j(m1922a);
                        m1909j = new ComponentName(m1922a, "unknown");
                    }
                    serviceConnectionC7288n1.onServiceDisconnected(m1909j);
                }
            }
            return true;
        }
        hashMap = this.f36770a.f36777d;
        synchronized (hashMap) {
            C7282l1 c7282l12 = (C7282l1) message.obj;
            hashMap2 = this.f36770a.f36777d;
            ServiceConnectionC7288n1 serviceConnectionC7288n12 = (ServiceConnectionC7288n1) hashMap2.get(c7282l12);
            if (serviceConnectionC7288n12 != null && serviceConnectionC7288n12.m1911h()) {
                if (serviceConnectionC7288n12.m1914e()) {
                    serviceConnectionC7288n12.m1917b("GmsClientSupervisor");
                }
                hashMap3 = this.f36770a.f36777d;
                hashMap3.remove(c7282l12);
            }
        }
        return true;
    }
}
