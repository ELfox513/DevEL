package p185t3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Message;
import android.util.Log;
import p213w4.HandlerC7182e;
@SuppressLint({"HandlerLeak"})
/* renamed from: t3.q */
/* loaded from: classes.dex */
public final class HandlerC6761q extends HandlerC7182e {

    /* renamed from: a */
    public final Context f35443a;

    /* renamed from: b */
    public final /* synthetic */ C6744g f35444b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public HandlerC6761q(p185t3.C6744g r1, android.content.Context r2) {
        /*
            r0 = this;
            r0.f35444b = r1
            android.os.Looper r1 = android.os.Looper.myLooper()
            if (r1 != 0) goto Ld
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            goto L11
        Ld:
            android.os.Looper r1 = android.os.Looper.myLooper()
        L11:
            r0.<init>(r1)
            android.content.Context r1 = r2.getApplicationContext()
            r0.f35443a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p185t3.HandlerC6761q.<init>(t3.g, android.content.Context):void");
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Don't know how to handle this message: ");
            sb.append(i);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        int mo3489g = this.f35444b.mo3489g(this.f35443a);
        if (this.f35444b.mo3486j(mo3489g)) {
            this.f35444b.m3506o(this.f35443a, mo3489g);
        }
    }
}
