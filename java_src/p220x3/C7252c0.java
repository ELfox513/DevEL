package p220x3;

import android.app.Activity;
import android.content.Intent;
/* renamed from: x3.c0 */
/* loaded from: classes.dex */
public final class C7252c0 extends AbstractDialogInterface$OnClickListenerC7259e0 {

    /* renamed from: a */
    public final /* synthetic */ Intent f36676a;

    /* renamed from: b */
    public final /* synthetic */ Activity f36677b;

    /* renamed from: d */
    public final /* synthetic */ int f36678d;

    public C7252c0(Intent intent, Activity activity, int i) {
        this.f36676a = intent;
        this.f36677b = activity;
        this.f36678d = i;
    }

    @Override // p220x3.AbstractDialogInterface$OnClickListenerC7259e0
    /* renamed from: a */
    public final void mo1952a() {
        Intent intent = this.f36676a;
        if (intent != null) {
            this.f36677b.startActivityForResult(intent, this.f36678d);
        }
    }
}
