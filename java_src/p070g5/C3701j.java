package p070g5;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: g5.j */
/* loaded from: classes2.dex */
public final class C3701j extends SQLiteOpenHelper {

    /* renamed from: a */
    public final /* synthetic */ C3713k f16647a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3701j(C3713k c3713k, Context context, String str) {
        super(context, "google_app_measurement.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f16647a = c3713k;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        C3759n9 c3759n9;
        C3759n9 c3759n92;
        C3759n9 c3759n93;
        c3759n9 = this.f16647a.f16677e;
        this.f16647a.f17008a.m18513u();
        if (c3759n9.m18049c(3600000L)) {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException unused) {
                c3759n92 = this.f16647a.f16677e;
                c3759n92.m18050b();
                this.f16647a.f17008a.mo17858F().m18018m().m18042a("Opening the database failed, dropping and recreating it");
                this.f16647a.f17008a.m18513u();
                if (!this.f16647a.f17008a.mo17856O().getDatabasePath("google_app_measurement.db").delete()) {
                    this.f16647a.f17008a.mo17858F().m18018m().m18041b("Failed to delete corrupted db file", "google_app_measurement.db");
                }
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    c3759n93 = this.f16647a.f16677e;
                    c3759n93.m18051a();
                    return writableDatabase;
                } catch (SQLiteException e) {
                    this.f16647a.f17008a.mo17858F().m18018m().m18041b("Failed to open freshly created database", e);
                    throw e;
                }
            }
        }
        throw new SQLiteException("Database open failed");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C3725l.m18077b(this.f16647a.f17008a.mo17858F(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4;
        String[] strArr5;
        String[] strArr6;
        String[] strArr7;
        String[] strArr8;
        C3789q3 mo17858F = this.f16647a.f17008a.mo17858F();
        strArr = C3713k.f16668f;
        C3725l.m18078a(mo17858F, sQLiteDatabase, "events", "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp", strArr);
        C3725l.m18078a(this.f16647a.f17008a.mo17858F(), sQLiteDatabase, "conditional_properties", "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;", "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event", null);
        C3789q3 mo17858F2 = this.f16647a.f17008a.mo17858F();
        strArr2 = C3713k.f16669g;
        C3725l.m18078a(mo17858F2, sQLiteDatabase, "user_attributes", "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;", "app_id,name,set_timestamp,value", strArr2);
        C3789q3 mo17858F3 = this.f16647a.f17008a.mo17858F();
        strArr3 = C3713k.f16670h;
        C3725l.m18078a(mo17858F3, sQLiteDatabase, "apps", "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;", "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp", strArr3);
        C3789q3 mo17858F4 = this.f16647a.f17008a.mo17858F();
        strArr4 = C3713k.f16672j;
        C3725l.m18078a(mo17858F4, sQLiteDatabase, "queue", "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,bundle_end_timestamp,data", strArr4);
        C3725l.m18078a(this.f16647a.f17008a.mo17858F(), sQLiteDatabase, "raw_events_metadata", "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));", "app_id,metadata_fingerprint,metadata", null);
        C3789q3 mo17858F5 = this.f16647a.f17008a.mo17858F();
        strArr5 = C3713k.f16671i;
        C3725l.m18078a(mo17858F5, sQLiteDatabase, "raw_events", "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);", "app_id,name,timestamp,metadata_fingerprint,data", strArr5);
        C3789q3 mo17858F6 = this.f16647a.f17008a.mo17858F();
        strArr6 = C3713k.f16673k;
        C3725l.m18078a(mo17858F6, sQLiteDatabase, "event_filters", "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));", "app_id,audience_id,filter_id,event_name,data", strArr6);
        C3789q3 mo17858F7 = this.f16647a.f17008a.mo17858F();
        strArr7 = C3713k.f16674l;
        C3725l.m18078a(mo17858F7, sQLiteDatabase, "property_filters", "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));", "app_id,audience_id,filter_id,property_name,data", strArr7);
        C3725l.m18078a(this.f16647a.f17008a.mo17858F(), sQLiteDatabase, "audience_filter_values", "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));", "app_id,audience_id,current_results", null);
        C3789q3 mo17858F8 = this.f16647a.f17008a.mo17858F();
        strArr8 = C3713k.f16675m;
        C3725l.m18078a(mo17858F8, sQLiteDatabase, "app2", "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));", "app_id,first_open_count", strArr8);
        C3725l.m18078a(this.f16647a.f17008a.mo17858F(), sQLiteDatabase, "main_event_params", "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,event_id,children_to_process,main_event", null);
        C3725l.m18078a(this.f16647a.f17008a.mo17858F(), sQLiteDatabase, "default_event_params", "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));", "app_id,parameters", null);
        C3725l.m18078a(this.f16647a.f17008a.mo17858F(), sQLiteDatabase, "consent_settings", "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));", "app_id,consent_state", null);
    }
}
