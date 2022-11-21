package androidx.work;

import android.content.Context;
import androidx.work.C0376a;
import java.util.Collections;
import java.util.List;
import p173s0.InterfaceC6567b;
import p209w0.AbstractC7114j;
import p209w0.AbstractC7131t;
/* loaded from: classes.dex */
public final class WorkManagerInitializer implements InterfaceC6567b<AbstractC7131t> {

    /* renamed from: a */
    public static final String f1322a = AbstractC7114j.m2489f("WrkMgrInitializer");

    @Override // p173s0.InterfaceC6567b
    /* renamed from: a */
    public List<Class<? extends InterfaceC6567b<?>>> mo3904a() {
        return Collections.emptyList();
    }

    @Override // p173s0.InterfaceC6567b
    /* renamed from: c */
    public AbstractC7131t mo3903b(Context context) {
        AbstractC7114j.m2491c().mo2488a(f1322a, "Initializing WorkManager with default configuration.", new Throwable[0]);
        AbstractC7131t.m2474h(context, new C0376a.C0378b().m26669a());
        return AbstractC7131t.m2475g(context);
    }
}
