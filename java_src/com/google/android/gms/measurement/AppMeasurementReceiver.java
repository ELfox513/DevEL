package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import p070g5.C3730l4;
import p070g5.InterfaceC3718k4;
import p092j0.AbstractC4271a;
/* loaded from: classes2.dex */
public final class AppMeasurementReceiver extends AbstractC4271a implements InterfaceC3718k4 {

    /* renamed from: d */
    public C3730l4 f7836d;

    @Override // p070g5.InterfaceC3718k4
    /* renamed from: a */
    public void mo18083a(Context context, Intent intent) {
        AbstractC4271a.m16880c(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f7836d == null) {
            this.f7836d = new C3730l4(this);
        }
        this.f7836d.m18069a(context, intent);
    }
}
