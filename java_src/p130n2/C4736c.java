package p130n2;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import p058f2.InterfaceC3509h;
import p085i2.AbstractC4104h;
import p085i2.AbstractC4113m;
import p085i2.C4119r;
import p094j2.InterfaceC4314e;
import p094j2.InterfaceC4325m;
import p139o2.InterfaceC5091v;
import p148p2.InterfaceC5321c;
import p157q2.InterfaceC5408b;
/* renamed from: n2.c */
/* loaded from: classes.dex */
public class C4736c implements InterfaceC4738e {

    /* renamed from: f */
    public static final Logger f18969f = Logger.getLogger(C4119r.class.getName());

    /* renamed from: a */
    public final InterfaceC5091v f18970a;

    /* renamed from: b */
    public final Executor f18971b;

    /* renamed from: c */
    public final InterfaceC4314e f18972c;

    /* renamed from: d */
    public final InterfaceC5321c f18973d;

    /* renamed from: e */
    public final InterfaceC5408b f18974e;

    @Override // p130n2.InterfaceC4738e
    /* renamed from: a */
    public void mo15494a(final AbstractC4113m abstractC4113m, final AbstractC4104h abstractC4104h, final InterfaceC3509h interfaceC3509h) {
        this.f18971b.execute(new Runnable() { // from class: n2.a
            @Override // java.lang.Runnable
            public final void run() {
                C4736c.this.m15498e(abstractC4113m, interfaceC3509h, abstractC4104h);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ Object m15499d(AbstractC4113m abstractC4113m, AbstractC4104h abstractC4104h) {
        this.f18973d.mo13471b0(abstractC4113m, abstractC4104h);
        this.f18970a.mo14673b(abstractC4113m, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m15498e(final AbstractC4113m abstractC4113m, InterfaceC3509h interfaceC3509h, AbstractC4104h abstractC4104h) {
        try {
            InterfaceC4325m mo16821a = this.f18972c.mo16821a(abstractC4113m.mo17356b());
            if (mo16821a == null) {
                String format = String.format("Transport backend '%s' is not registered", abstractC4113m.mo17356b());
                f18969f.warning(format);
                interfaceC3509h.mo17347a(new IllegalArgumentException(format));
                return;
            }
            final AbstractC4104h mo16813a = mo16821a.mo16813a(abstractC4104h);
            this.f18974e.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: n2.b
                @Override // p157q2.InterfaceC5408b.InterfaceC5409a
                /* renamed from: d */
                public final Object mo13328d() {
                    Object m15499d;
                    m15499d = C4736c.this.m15499d(abstractC4113m, mo16813a);
                    return m15499d;
                }
            });
            interfaceC3509h.mo17347a(null);
        } catch (Exception e) {
            Logger logger = f18969f;
            logger.warning("Error scheduling event " + e.getMessage());
            interfaceC3509h.mo17347a(e);
        }
    }

    public C4736c(Executor executor, InterfaceC4314e interfaceC4314e, InterfaceC5091v interfaceC5091v, InterfaceC5321c interfaceC5321c, InterfaceC5408b interfaceC5408b) {
        this.f18971b = executor;
        this.f18972c = interfaceC4314e;
        this.f18970a = interfaceC5091v;
        this.f18973d = interfaceC5321c;
        this.f18974e = interfaceC5408b;
    }
}
