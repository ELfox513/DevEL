package p230y5;

import android.content.Context;
import java.io.File;
import p196u5.C6930f;
import p222x5.C7341g;
/* renamed from: y5.b */
/* loaded from: classes2.dex */
public class C7503b {

    /* renamed from: d */
    public static final C7506c f37333d = new C7506c();

    /* renamed from: a */
    public final Context f37334a;

    /* renamed from: b */
    public final InterfaceC7505b f37335b;

    /* renamed from: c */
    public InterfaceC7502a f37336c;

    /* renamed from: y5.b$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC7505b {
        /* renamed from: a */
        File mo1363a();
    }

    /* renamed from: y5.b$c */
    /* loaded from: classes2.dex */
    public static final class C7506c implements InterfaceC7502a {
        public C7506c() {
        }

        @Override // p230y5.InterfaceC7502a
        /* renamed from: a */
        public void mo1336a() {
        }

        @Override // p230y5.InterfaceC7502a
        /* renamed from: b */
        public String mo1335b() {
            return null;
        }

        @Override // p230y5.InterfaceC7502a
        /* renamed from: c */
        public byte[] mo1334c() {
            return null;
        }

        @Override // p230y5.InterfaceC7502a
        /* renamed from: d */
        public void mo1333d() {
        }

        @Override // p230y5.InterfaceC7502a
        /* renamed from: e */
        public void mo1332e(long j, String str) {
        }
    }

    public C7503b(Context context, InterfaceC7505b interfaceC7505b) {
        this(context, interfaceC7505b, null);
    }

    /* renamed from: a */
    public void m1370a() {
        this.f37336c.mo1333d();
    }

    /* renamed from: b */
    public byte[] m1369b() {
        return this.f37336c.mo1334c();
    }

    /* renamed from: c */
    public String m1368c() {
        return this.f37336c.mo1335b();
    }

    /* renamed from: f */
    public void m1365f(File file, int i) {
        this.f37336c = new C7512d(file, i);
    }

    /* renamed from: g */
    public void m1364g(long j, String str) {
        this.f37336c.mo1332e(j, str);
    }

    public C7503b(Context context, InterfaceC7505b interfaceC7505b, String str) {
        this.f37334a = context;
        this.f37335b = interfaceC7505b;
        this.f37336c = f37333d;
        m1366e(str);
    }

    /* renamed from: d */
    public final File m1367d(String str) {
        return new File(this.f37335b.mo1363a(), "crashlytics-userlog-" + str + ".temp");
    }

    /* renamed from: e */
    public final void m1366e(String str) {
        this.f37336c.mo1336a();
        this.f37336c = f37333d;
        if (str == null) {
            return;
        }
        if (!C7341g.m1785k(this.f37334a, "com.crashlytics.CollectCustomLogs", true)) {
            C6930f.m3016f().m3020b("Preferences requested no custom logs. Aborting log file creation.");
        } else {
            m1365f(m1367d(str), 65536);
        }
    }
}
