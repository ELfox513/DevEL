package p070g5;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: g5.i3 */
/* loaded from: classes2.dex */
public final class C3693i3 extends SQLiteOpenHelper {

    /* renamed from: a */
    public final /* synthetic */ C3705j3 f16609a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3693i3(C3705j3 c3705j3, Context context, String str) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f16609a = c3705j3;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C3725l.m18077b(this.f16609a.f17008a.mo17858F(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        C3725l.m18078a(this.f16609a.f17008a.mo17858F(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException unused) {
            this.f16609a.f17008a.mo17858F().m18018m().m18042a("Opening the local database failed, dropping and recreating it");
            this.f16609a.f17008a.m18513u();
            if (!this.f16609a.f17008a.mo17856O().getDatabasePath("google_app_measurement_local.db").delete()) {
                this.f16609a.f17008a.mo17858F().m18018m().m18041b("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e2) {
                this.f16609a.f17008a.mo17858F().m18018m().m18041b("Failed to open local database. Events will bypass local storage", e2);
                return null;
            }
        }
    }
}
