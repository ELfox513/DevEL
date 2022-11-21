package p168r4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: r4.ad */
/* loaded from: classes2.dex */
public final class HandlerC5574ad extends Handler {

    /* renamed from: a */
    public final /* synthetic */ C5611bd f20462a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC5574ad(C5611bd c5611bd, Looper looper) {
        super(looper);
        this.f20462a = c5611bd;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f20462a.m12808s(message);
    }
}
