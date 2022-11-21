package p168r4;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.RemoteException;
import java.util.concurrent.Callable;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p016b3.InterfaceC0548y0;
import p060f4.BinderC3514b;
import p235z2.C7601t;
/* renamed from: r4.c12 */
/* loaded from: classes2.dex */
public final class c12 extends SQLiteOpenHelper {

    /* renamed from: a */
    public final Context f21305a;

    /* renamed from: b */
    public final i83 f21306b;

    /* renamed from: k */
    public static final void m12653k(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    /* renamed from: d */
    public final void m12660d(final SQLiteDatabase sQLiteDatabase, final hm0 hm0Var, final String str) {
        this.f21306b.execute(new Runnable(sQLiteDatabase, str, hm0Var) { // from class: r4.x02

            /* renamed from: a */
            public final SQLiteDatabase f33402a;

            /* renamed from: b */
            public final String f33403b;

            /* renamed from: d */
            public final hm0 f33404d;

            {
                this.f33402a = sQLiteDatabase;
                this.f33403b = str;
                this.f33404d = hm0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                c12.m12655i(this.f33402a, this.f33403b, this.f33404d);
            }
        });
    }

    /* renamed from: e */
    public final void m12659e(final hm0 hm0Var, final String str) {
        m12661c(new ps2(this, hm0Var, str) { // from class: r4.y02

            /* renamed from: a */
            public final c12 f33827a;

            /* renamed from: b */
            public final hm0 f33828b;

            /* renamed from: c */
            public final String f33829c;

            {
                this.f33827a = this;
                this.f33828b = hm0Var;
                this.f33829c = str;
            }

            @Override // p168r4.ps2
            /* renamed from: a */
            public final Object mo4065a(Object obj) {
                this.f33827a.m12660d((SQLiteDatabase) obj, this.f33828b, this.f33829c);
                return null;
            }
        });
    }

    /* renamed from: f */
    public final void m12658f(final String str) {
        m12661c(new ps2(this, str) { // from class: r4.z02

            /* renamed from: a */
            public final c12 f34276a;

            /* renamed from: b */
            public final String f34277b;

            {
                this.f34276a = this;
                this.f34277b = str;
            }

            @Override // p168r4.ps2
            /* renamed from: a */
            public final Object mo4065a(Object obj) {
                c12.m12653k((SQLiteDatabase) obj, this.f34277b);
                return null;
            }
        });
    }

    /* renamed from: g */
    public final void m12657g(final e12 e12Var) {
        m12661c(new ps2(this, e12Var) { // from class: r4.a12

            /* renamed from: a */
            public final c12 f20339a;

            /* renamed from: b */
            public final e12 f20340b;

            {
                this.f20339a = this;
                this.f20340b = e12Var;
            }

            @Override // p168r4.ps2
            /* renamed from: a */
            public final Object mo4065a(Object obj) {
                this.f20339a.m12656h(this.f20340b, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    public c12(Context context, i83 i83Var) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) C5592av.m12935c().m8098c(C6225rz.f30964Z5)).intValue());
        this.f21305a = context;
        this.f21306b = i83Var;
    }

    /* renamed from: i */
    public static final /* synthetic */ void m12655i(SQLiteDatabase sQLiteDatabase, String str, hm0 hm0Var) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        m12652m(sQLiteDatabase, hm0Var);
    }

    /* renamed from: m */
    public static void m12652m(SQLiteDatabase sQLiteDatabase, hm0 hm0Var) {
        sQLiteDatabase.beginTransaction();
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("event_state = ");
            sb.append(1);
            Cursor query = sQLiteDatabase.query("offline_buffered_pings", new String[]{"url"}, sb.toString(), null, null, null, "timestamp ASC", null);
            int count = query.getCount();
            String[] strArr = new String[count];
            int i = 0;
            while (query.moveToNext()) {
                int columnIndex = query.getColumnIndex("url");
                if (columnIndex != -1) {
                    strArr[i] = query.getString(columnIndex);
                }
                i++;
            }
            query.close();
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            for (int i2 = 0; i2 < count; i2++) {
                hm0Var.mo6488q(strArr[i2]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    /* renamed from: c */
    public final void m12661c(ps2<SQLiteDatabase, Void> ps2Var) {
        y73.m4799p(this.f21306b.mo8015c(new Callable(this) { // from class: r4.v02

            /* renamed from: a */
            public final c12 f32533a;

            {
                this.f32533a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f32533a.getWritableDatabase();
            }
        }), new b12(this, ps2Var), this.f21306b);
    }

    /* renamed from: h */
    public final /* synthetic */ Void m12656h(e12 e12Var, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(e12Var.f22734a));
        contentValues.put("gws_query_id", e12Var.f22735b);
        contentValues.put("url", e12Var.f22736c);
        contentValues.put("event_state", Integer.valueOf(e12Var.f22737d - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        C7601t.m939d();
        InterfaceC0548y0 m26322d = C0497k2.m26322d(this.f21305a);
        if (m26322d != null) {
            try {
                m26322d.zzf(BinderC3514b.m18741L0(this.f21305a));
            } catch (RemoteException e) {
                C0543w1.m26250l("Failed to schedule offline ping sender.", e);
            }
        }
        return null;
    }
}
