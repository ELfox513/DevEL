package androidx.work;

import android.net.Network;
import android.net.Uri;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7134v;
import p209w0.InterfaceC7109f;
import p209w0.InterfaceC7126o;
/* loaded from: classes.dex */
public final class WorkerParameters {

    /* renamed from: a */
    public UUID f1325a;

    /* renamed from: b */
    public C0380b f1326b;

    /* renamed from: c */
    public Set<String> f1327c;

    /* renamed from: d */
    public C0375a f1328d;

    /* renamed from: e */
    public int f1329e;

    /* renamed from: f */
    public Executor f1330f;

    /* renamed from: g */
    public InterfaceC4086a f1331g;

    /* renamed from: h */
    public AbstractC7134v f1332h;

    /* renamed from: i */
    public InterfaceC7126o f1333i;

    /* renamed from: j */
    public InterfaceC7109f f1334j;

    /* renamed from: androidx.work.WorkerParameters$a */
    /* loaded from: classes.dex */
    public static class C0375a {

        /* renamed from: a */
        public List<String> f1335a = Collections.emptyList();

        /* renamed from: b */
        public List<Uri> f1336b = Collections.emptyList();

        /* renamed from: c */
        public Network f1337c;
    }

    /* renamed from: a */
    public Executor m26694a() {
        return this.f1330f;
    }

    /* renamed from: b */
    public InterfaceC7109f m26693b() {
        return this.f1334j;
    }

    /* renamed from: c */
    public UUID m26692c() {
        return this.f1325a;
    }

    /* renamed from: d */
    public C0380b m26691d() {
        return this.f1326b;
    }

    /* renamed from: e */
    public Network m26690e() {
        return this.f1328d.f1337c;
    }

    /* renamed from: f */
    public InterfaceC7126o m26689f() {
        return this.f1333i;
    }

    /* renamed from: g */
    public int m26688g() {
        return this.f1329e;
    }

    /* renamed from: h */
    public Set<String> m26687h() {
        return this.f1327c;
    }

    /* renamed from: i */
    public InterfaceC4086a m26686i() {
        return this.f1331g;
    }

    /* renamed from: j */
    public List<String> m26685j() {
        return this.f1328d.f1335a;
    }

    /* renamed from: k */
    public List<Uri> m26684k() {
        return this.f1328d.f1336b;
    }

    /* renamed from: l */
    public AbstractC7134v m26683l() {
        return this.f1332h;
    }

    public WorkerParameters(UUID uuid, C0380b c0380b, Collection<String> collection, C0375a c0375a, int i, Executor executor, InterfaceC4086a interfaceC4086a, AbstractC7134v abstractC7134v, InterfaceC7126o interfaceC7126o, InterfaceC7109f interfaceC7109f) {
        this.f1325a = uuid;
        this.f1326b = c0380b;
        this.f1327c = new HashSet(collection);
        this.f1328d = c0375a;
        this.f1329e = i;
        this.f1330f = executor;
        this.f1331g = interfaceC4086a;
        this.f1332h = abstractC7134v;
        this.f1333i = interfaceC7126o;
        this.f1334j = interfaceC7109f;
    }
}
