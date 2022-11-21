package p148p2;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;
/* renamed from: p2.h0 */
/* loaded from: classes.dex */
public final class C5336h0 extends SQLiteOpenHelper {

    /* renamed from: d */
    public static int f19934d = 4;

    /* renamed from: k */
    public static final InterfaceC5337a f19935k;

    /* renamed from: p */
    public static final InterfaceC5337a f19936p;

    /* renamed from: q */
    public static final InterfaceC5337a f19937q;

    /* renamed from: r */
    public static final InterfaceC5337a f19938r;

    /* renamed from: s */
    public static final List<InterfaceC5337a> f19939s;

    /* renamed from: a */
    public final int f19940a;

    /* renamed from: b */
    public boolean f19941b;

    /* renamed from: p2.h0$a */
    /* loaded from: classes.dex */
    public interface InterfaceC5337a {
        /* renamed from: a */
        void mo13424a(SQLiteDatabase sQLiteDatabase);
    }

    public C5336h0(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f19941b = false;
        this.f19940a = i;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f19941b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m13426m(sQLiteDatabase, this.f19940a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        m13431g(sQLiteDatabase);
    }

    static {
        InterfaceC5337a interfaceC5337a = new InterfaceC5337a() { // from class: p2.d0
            @Override // p148p2.C5336h0.InterfaceC5337a
            /* renamed from: a */
            public final void mo13424a(SQLiteDatabase sQLiteDatabase) {
                C5336h0.m13430h(sQLiteDatabase);
            }
        };
        f19935k = interfaceC5337a;
        InterfaceC5337a interfaceC5337a2 = new InterfaceC5337a() { // from class: p2.e0
            @Override // p148p2.C5336h0.InterfaceC5337a
            /* renamed from: a */
            public final void mo13424a(SQLiteDatabase sQLiteDatabase) {
                C5336h0.m13429i(sQLiteDatabase);
            }
        };
        f19936p = interfaceC5337a2;
        InterfaceC5337a interfaceC5337a3 = new InterfaceC5337a() { // from class: p2.f0
            @Override // p148p2.C5336h0.InterfaceC5337a
            /* renamed from: a */
            public final void mo13424a(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
            }
        };
        f19937q = interfaceC5337a3;
        InterfaceC5337a interfaceC5337a4 = new InterfaceC5337a() { // from class: p2.g0
            @Override // p148p2.C5336h0.InterfaceC5337a
            /* renamed from: a */
            public final void mo13424a(SQLiteDatabase sQLiteDatabase) {
                C5336h0.m13427k(sQLiteDatabase);
            }
        };
        f19938r = interfaceC5337a4;
        f19939s = Arrays.asList(interfaceC5337a, interfaceC5337a2, interfaceC5337a3, interfaceC5337a4);
    }

    /* renamed from: h */
    public static /* synthetic */ void m13430h(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* renamed from: i */
    public static /* synthetic */ void m13429i(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* renamed from: k */
    public static /* synthetic */ void m13427k(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* renamed from: g */
    public final void m13431g(SQLiteDatabase sQLiteDatabase) {
        if (!this.f19941b) {
            onConfigure(sQLiteDatabase);
        }
    }

    /* renamed from: n */
    public final void m13425n(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<InterfaceC5337a> list = f19939s;
        if (i2 <= list.size()) {
            while (i < i2) {
                f19939s.get(i).mo13424a(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        m13426m(sQLiteDatabase, i2);
    }

    /* renamed from: m */
    public final void m13426m(SQLiteDatabase sQLiteDatabase, int i) {
        m13431g(sQLiteDatabase);
        m13425n(sQLiteDatabase, 0, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m13431g(sQLiteDatabase);
        m13425n(sQLiteDatabase, i, i2);
    }
}
