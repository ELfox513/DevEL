package p155q0;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.List;
/* renamed from: q0.c */
/* loaded from: classes.dex */
public interface InterfaceC5383c extends Closeable {

    /* renamed from: q0.c$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC5384a {

        /* renamed from: a */
        public final int f20075a;

        /* renamed from: b */
        public void mo13361b(InterfaceC5382b interfaceC5382b) {
        }

        /* renamed from: d */
        public abstract void mo13359d(InterfaceC5382b interfaceC5382b);

        /* renamed from: e */
        public abstract void mo13358e(InterfaceC5382b interfaceC5382b, int i, int i2);

        /* renamed from: f */
        public void mo13357f(InterfaceC5382b interfaceC5382b) {
        }

        /* renamed from: g */
        public abstract void mo13356g(InterfaceC5382b interfaceC5382b, int i, int i2);

        /* renamed from: a */
        public final void m13362a(String str) {
            if (!str.equalsIgnoreCase(":memory:") && str.trim().length() != 0) {
                Log.w("SupportSQLite", "deleting the database file: " + str);
                try {
                    SQLiteDatabase.deleteDatabase(new File(str));
                } catch (Exception e) {
                    Log.w("SupportSQLite", "delete failed: ", e);
                }
            }
        }

        /* renamed from: c */
        public void m13360c(InterfaceC5382b interfaceC5382b) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + interfaceC5382b.mo13138D0());
            if (!interfaceC5382b.isOpen()) {
                m13362a(interfaceC5382b.mo13138D0());
                return;
            }
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = interfaceC5382b.mo13141A();
                } catch (SQLiteException unused) {
                }
                try {
                    interfaceC5382b.close();
                } catch (IOException unused2) {
                }
            } finally {
                if (list != null) {
                    for (Pair<String, String> next : list) {
                        m13362a((String) next.second);
                    }
                } else {
                    m13362a(interfaceC5382b.mo13138D0());
                }
            }
        }

        public AbstractC5384a(int i) {
            this.f20075a = i;
        }
    }

    /* renamed from: q0.c$c */
    /* loaded from: classes.dex */
    public interface InterfaceC5387c {
        /* renamed from: a */
        InterfaceC5383c mo13123a(C5385b c5385b);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    /* renamed from: n0 */
    InterfaceC5382b mo13127n0();

    void setWriteAheadLoggingEnabled(boolean z);

    /* renamed from: q0.c$b */
    /* loaded from: classes.dex */
    public static class C5385b {

        /* renamed from: a */
        public final Context f20076a;

        /* renamed from: b */
        public final String f20077b;

        /* renamed from: c */
        public final AbstractC5384a f20078c;

        /* renamed from: d */
        public final boolean f20079d;

        /* renamed from: q0.c$b$a */
        /* loaded from: classes.dex */
        public static class C5386a {

            /* renamed from: a */
            public Context f20080a;

            /* renamed from: b */
            public String f20081b;

            /* renamed from: c */
            public AbstractC5384a f20082c;

            /* renamed from: d */
            public boolean f20083d;

            /* renamed from: b */
            public C5386a m13353b(AbstractC5384a abstractC5384a) {
                this.f20082c = abstractC5384a;
                return this;
            }

            /* renamed from: c */
            public C5386a m13352c(String str) {
                this.f20081b = str;
                return this;
            }

            /* renamed from: d */
            public C5386a m13351d(boolean z) {
                this.f20083d = z;
                return this;
            }

            /* renamed from: a */
            public C5385b m13354a() {
                if (this.f20082c != null) {
                    if (this.f20080a != null) {
                        if (this.f20083d && TextUtils.isEmpty(this.f20081b)) {
                            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                        }
                        return new C5385b(this.f20080a, this.f20081b, this.f20082c, this.f20083d);
                    }
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            public C5386a(Context context) {
                this.f20080a = context;
            }
        }

        /* renamed from: a */
        public static C5386a m13355a(Context context) {
            return new C5386a(context);
        }

        public C5385b(Context context, String str, AbstractC5384a abstractC5384a, boolean z) {
            this.f20076a = context;
            this.f20077b = str;
            this.f20078c = abstractC5384a;
            this.f20079d = z;
        }
    }
}
