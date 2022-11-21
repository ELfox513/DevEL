package p220x3;

import android.content.Intent;
import p203v3.InterfaceC7014h;
/* renamed from: x3.d0 */
/* loaded from: classes.dex */
public final class C7256d0 extends AbstractDialogInterface$OnClickListenerC7259e0 {

    /* renamed from: a */
    public final /* synthetic */ Intent f36696a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC7014h f36697b;

    public C7256d0(Intent intent, InterfaceC7014h interfaceC7014h, int i) {
        this.f36696a = intent;
        this.f36697b = interfaceC7014h;
    }

    @Override // p220x3.AbstractDialogInterface$OnClickListenerC7259e0
    /* renamed from: a */
    public final void mo1952a() {
        Intent intent = this.f36696a;
        if (intent != null) {
            this.f36697b.startActivityForResult(intent, 2);
        }
    }
}
