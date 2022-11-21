package p070g5;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p018b5.C0696i4;
import p018b5.C0713j4;
import p018b5.C0866s4;
import p018b5.C0883t4;
import p018b5.C0909ud;
import p220x3.C7297q;
/* renamed from: g5.k */
/* loaded from: classes2.dex */
public final class C3713k extends AbstractC3807r9 {

    /* renamed from: f */
    public static final String[] f16668f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: g */
    public static final String[] f16669g = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: h */
    public static final String[] f16670h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"};

    /* renamed from: i */
    public static final String[] f16671i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: j */
    public static final String[] f16672j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: k */
    public static final String[] f16673k = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: l */
    public static final String[] f16674l = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: m */
    public static final String[] f16675m = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: d */
    public final C3701j f16676d;

    /* renamed from: e */
    public final C3759n9 f16677e;

    /* renamed from: L */
    public final long m18124L() {
        return m18126J("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    /* renamed from: M */
    public final long m18123M() {
        return m18126J("select max(timestamp) from raw_events", null, 0L);
    }

    /* renamed from: V */
    public final C3689i m18117V(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return m18116W(j, str, 1L, false, false, z3, false, z5);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0133  */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p070g5.C3689i m18116W(long r23, java.lang.String r25, long r26, boolean r28, boolean r29, boolean r30, boolean r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18116W(long, java.lang.String, long, boolean, boolean, boolean, boolean, boolean):g5.i");
    }

    @Override // p070g5.AbstractC3807r9
    /* renamed from: g */
    public final boolean mo17810g() {
        return false;
    }

    /* renamed from: o */
    public final boolean m18095o() {
        return m18127I("select count(1) > 0 from raw_events", null) != 0;
    }

    /* renamed from: p */
    public final boolean m18094p() {
        return m18127I("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    /* renamed from: q */
    public final boolean m18093q() {
        return m18127I("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    /* renamed from: E */
    public static final void m18129E(ContentValues contentValues, String str, Object obj) {
        C7297q.m1887f("value");
        C7297q.m1883j(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put("value", (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x023d: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:101:0x023d */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    /* renamed from: D */
    public final void m18130D(String str, long j, long j2, C3604aa c3604aa) {
        ?? r4;
        Cursor cursor;
        Cursor rawQuery;
        String string;
        char c;
        String str2;
        String[] strArr;
        C7297q.m1883j(c3604aa);
        mo17839c();
        m18000d();
        Cursor cursor2 = null;
        r3 = null;
        r3 = null;
        String str3 = null;
        try {
            try {
                SQLiteDatabase m18121R = m18121R();
                r4 = TextUtils.isEmpty(null);
                String str4 = "";
                try {
                    if (r4 != 0) {
                        String[] strArr2 = j2 != -1 ? new String[]{String.valueOf(j2), String.valueOf(j)} : new String[]{String.valueOf(j)};
                        if (j2 != -1) {
                            str4 = "rowid <= ? and ";
                        }
                        StringBuilder sb = new StringBuilder(str4.length() + 148);
                        sb.append("select app_id, metadata_fingerprint from raw_events where ");
                        sb.append(str4);
                        sb.append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;");
                        rawQuery = m18121R.rawQuery(sb.toString(), strArr2);
                        if (!rawQuery.moveToFirst()) {
                            rawQuery.close();
                            return;
                        }
                        str3 = rawQuery.getString(0);
                        string = rawQuery.getString(1);
                        rawQuery.close();
                    } else {
                        String[] strArr3 = j2 != -1 ? new String[]{null, String.valueOf(j2)} : new String[]{null};
                        if (j2 != -1) {
                            str4 = " and rowid <= ?";
                        }
                        StringBuilder sb2 = new StringBuilder(str4.length() + 84);
                        sb2.append("select metadata_fingerprint from raw_events where app_id = ?");
                        sb2.append(str4);
                        sb2.append(" order by rowid limit 1;");
                        rawQuery = m18121R.rawQuery(sb2.toString(), strArr3);
                        if (!rawQuery.moveToFirst()) {
                            rawQuery.close();
                            return;
                        } else {
                            string = rawQuery.getString(0);
                            rawQuery.close();
                        }
                    }
                    Cursor cursor3 = rawQuery;
                    String str5 = string;
                    try {
                        Cursor query = m18121R.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str3, str5}, null, null, "rowid", "2");
                        try {
                            if (!query.moveToFirst()) {
                                this.f17008a.mo17858F().m18018m().m18041b("Raw event metadata record is missing. appId", C3789q3.m18010u(str3));
                                query.close();
                                return;
                            }
                            try {
                                try {
                                    C0883t4 m25101i = ((C0866s4) C3640da.m18390y(C0883t4.m25206J1(), query.getBlob(0))).m25101i();
                                    if (query.moveToNext()) {
                                        this.f17008a.mo17858F().m18013r().m18041b("Get multiple raw event metadata records, expected one. appId", C3789q3.m18010u(str3));
                                    }
                                    query.close();
                                    C7297q.m1883j(m25101i);
                                    c3604aa.f16212a = m25101i;
                                    if (j2 != -1) {
                                        c = 1;
                                        str2 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                        strArr = new String[]{str3, str5, String.valueOf(j2)};
                                    } else {
                                        c = 1;
                                        str2 = "app_id = ? and metadata_fingerprint = ?";
                                        strArr = new String[]{str3, str5};
                                    }
                                    String[] strArr4 = new String[4];
                                    strArr4[0] = "rowid";
                                    strArr4[c] = "name";
                                    strArr4[2] = "timestamp";
                                    strArr4[3] = "data";
                                    Cursor query2 = m18121R.query("raw_events", strArr4, str2, strArr, null, null, "rowid", null);
                                    if (query2.moveToFirst()) {
                                        do {
                                            long j3 = query2.getLong(0);
                                            try {
                                                C0696i4 c0696i4 = (C0696i4) C3640da.m18390y(C0713j4.m25756w(), query2.getBlob(3));
                                                c0696i4.m25813D(query2.getString(1));
                                                c0696i4.m25809I(query2.getLong(2));
                                                if (!c3604aa.m18553a(j3, c0696i4.m25101i())) {
                                                    query2.close();
                                                    return;
                                                }
                                            } catch (IOException e) {
                                                this.f17008a.mo17858F().m18018m().m18040c("Data loss. Failed to merge raw event. appId", C3789q3.m18010u(str3), e);
                                            }
                                        } while (query2.moveToNext());
                                        query2.close();
                                        return;
                                    }
                                    this.f17008a.mo17858F().m18013r().m18041b("Raw event data disappeared while in transaction. appId", C3789q3.m18010u(str3));
                                    query2.close();
                                } catch (IOException e2) {
                                    this.f17008a.mo17858F().m18018m().m18040c("Data loss. Failed to merge raw event metadata. appId", C3789q3.m18010u(str3), e2);
                                    query.close();
                                }
                            } catch (SQLiteException e3) {
                                e = e3;
                                r4 = query;
                                this.f17008a.mo17858F().m18018m().m18040c("Data loss. Error selecting raw event. appId", C3789q3.m18010u(str3), e);
                                if (r4 != 0) {
                                    r4.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                cursor2 = query;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e4) {
                            e = e4;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (SQLiteException e5) {
                        e = e5;
                        r4 = cursor3;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor2 = cursor3;
                    }
                } catch (SQLiteException e6) {
                    e = e6;
                }
            } catch (Throwable th4) {
                th = th4;
                cursor2 = cursor;
            }
        } catch (SQLiteException e7) {
            e = e7;
            r4 = 0;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    /* renamed from: K */
    public final long m18125K(String str, String str2) {
        long m18126J;
        C7297q.m1887f(str);
        C7297q.m1887f("first_open_count");
        mo17839c();
        m18000d();
        SQLiteDatabase m18121R = m18121R();
        m18121R.beginTransaction();
        long j = 0;
        try {
            try {
                StringBuilder sb = new StringBuilder(48);
                sb.append("select ");
                sb.append("first_open_count");
                sb.append(" from app2 where app_id=?");
                m18126J = m18126J(sb.toString(), new String[]{str}, -1L);
                if (m18126J == -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", str);
                    contentValues.put("first_open_count", (Integer) 0);
                    contentValues.put("previous_install_count", (Integer) 0);
                    if (m18121R.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                        this.f17008a.mo17858F().m18018m().m18040c("Failed to insert column (got -1). appId", C3789q3.m18010u(str), "first_open_count");
                        return -1L;
                    }
                    m18126J = 0;
                }
            } catch (SQLiteException e) {
                e = e;
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str);
                contentValues2.put("first_open_count", Long.valueOf(1 + m18126J));
                if (m18121R.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                    this.f17008a.mo17858F().m18018m().m18040c("Failed to update column (got 0). appId", C3789q3.m18010u(str), "first_open_count");
                    return -1L;
                }
                m18121R.setTransactionSuccessful();
                return m18126J;
            } catch (SQLiteException e2) {
                e = e2;
                j = m18126J;
                this.f17008a.mo17858F().m18018m().m18039d("Error inserting column. appId", C3789q3.m18010u(str), "first_open_count", e);
                m18121R.endTransaction();
                return j;
            }
        } finally {
            m18121R.endTransaction();
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0281: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:57:0x0281 */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0194 A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:4:0x00db, B:8:0x00e5, B:10:0x0145, B:15:0x014f, B:19:0x0199, B:21:0x01ce, B:25:0x01dd, B:24:0x01d9, B:26:0x01e0, B:28:0x01e8, B:31:0x01ef, B:35:0x020a, B:37:0x0215, B:38:0x0227, B:40:0x0238, B:41:0x0241, B:43:0x024a, B:34:0x0206, B:18:0x0194, B:52:0x0267), top: B:61:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01ce A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:4:0x00db, B:8:0x00e5, B:10:0x0145, B:15:0x014f, B:19:0x0199, B:21:0x01ce, B:25:0x01dd, B:24:0x01d9, B:26:0x01e0, B:28:0x01e8, B:31:0x01ef, B:35:0x020a, B:37:0x0215, B:38:0x0227, B:40:0x0238, B:41:0x0241, B:43:0x024a, B:34:0x0206, B:18:0x0194, B:52:0x0267), top: B:61:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0206 A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:4:0x00db, B:8:0x00e5, B:10:0x0145, B:15:0x014f, B:19:0x0199, B:21:0x01ce, B:25:0x01dd, B:24:0x01d9, B:26:0x01e0, B:28:0x01e8, B:31:0x01ef, B:35:0x020a, B:37:0x0215, B:38:0x0227, B:40:0x0238, B:41:0x0241, B:43:0x024a, B:34:0x0206, B:18:0x0194, B:52:0x0267), top: B:61:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0215 A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:4:0x00db, B:8:0x00e5, B:10:0x0145, B:15:0x014f, B:19:0x0199, B:21:0x01ce, B:25:0x01dd, B:24:0x01d9, B:26:0x01e0, B:28:0x01e8, B:31:0x01ef, B:35:0x020a, B:37:0x0215, B:38:0x0227, B:40:0x0238, B:41:0x0241, B:43:0x024a, B:34:0x0206, B:18:0x0194, B:52:0x0267), top: B:61:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0238 A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:4:0x00db, B:8:0x00e5, B:10:0x0145, B:15:0x014f, B:19:0x0199, B:21:0x01ce, B:25:0x01dd, B:24:0x01d9, B:26:0x01e0, B:28:0x01e8, B:31:0x01ef, B:35:0x020a, B:37:0x0215, B:38:0x0227, B:40:0x0238, B:41:0x0241, B:43:0x024a, B:34:0x0206, B:18:0x0194, B:52:0x0267), top: B:61:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x024a A[Catch: SQLiteException -> 0x0261, all -> 0x0280, TRY_LEAVE, TryCatch #0 {all -> 0x0280, blocks: (B:4:0x00db, B:8:0x00e5, B:10:0x0145, B:15:0x014f, B:19:0x0199, B:21:0x01ce, B:25:0x01dd, B:24:0x01d9, B:26:0x01e0, B:28:0x01e8, B:31:0x01ef, B:35:0x020a, B:37:0x0215, B:38:0x0227, B:40:0x0238, B:41:0x0241, B:43:0x024a, B:34:0x0206, B:18:0x0194, B:52:0x0267), top: B:61:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0284  */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p070g5.C3671g5 m18119T(java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18119T(java.lang.String):g5.g5");
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0151: MOVE  (r9 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:28:0x0151 */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0154  */
    /* renamed from: U */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p070g5.C3617c m18118U(java.lang.String r34, java.lang.String r35) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18118U(java.lang.String, java.lang.String):g5.c");
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x016e  */
    /* renamed from: X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p070g5.C3785q m18115X(java.lang.String r30, java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18115X(java.lang.String, java.lang.String):g5.q");
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00a8: MOVE  (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:28:0x00a8 */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ab  */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p070g5.C3676ga m18113Z(java.lang.String r20, java.lang.String r21) {
        /*
            r19 = this;
            r1 = r19
            r9 = r21
            p220x3.C7297q.m1887f(r20)
            p220x3.C7297q.m1887f(r21)
            r19.mo17839c()
            r19.m18000d()
            r10 = 0
            android.database.sqlite.SQLiteDatabase r11 = r19.m18121R()     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            r0 = 3
            java.lang.String[] r13 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            java.lang.String r0 = "set_timestamp"
            r2 = 0
            r13[r2] = r0     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            java.lang.String r0 = "value"
            r3 = 1
            r13[r3] = r0     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            java.lang.String r0 = "origin"
            r4 = 2
            r13[r4] = r0     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            java.lang.String[] r15 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            r15[r2] = r20     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            r15[r3] = r9     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            java.lang.String r12 = "user_attributes"
            java.lang.String r14 = "app_id=? and name=?"
            r16 = 0
            r17 = 0
            r18 = 0
            android.database.Cursor r11 = r11.query(r12, r13, r14, r15, r16, r17, r18)     // Catch: java.lang.Throwable -> L80 android.database.sqlite.SQLiteException -> L82
            boolean r0 = r11.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            if (r0 != 0) goto L45
            r11.close()
            return r10
        L45:
            long r6 = r11.getLong(r2)     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            java.lang.Object r8 = r1.m18112a0(r11, r3)     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            if (r8 != 0) goto L53
            r11.close()
            return r10
        L53:
            java.lang.String r4 = r11.getString(r4)     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            g5.ga r0 = new g5.ga     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            r2 = r0
            r3 = r20
            r5 = r21
            r2.<init>(r3, r4, r5, r6, r8)     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            boolean r2 = r11.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            if (r2 == 0) goto L7a
            g5.b5 r2 = r1.f17008a     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            g5.q3 r2 = r2.mo17858F()     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            g5.o3 r2 = r2.m18018m()     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            java.lang.String r3 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r4 = p070g5.C3789q3.m18010u(r20)     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
            r2.m18041b(r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L7e java.lang.Throwable -> La7
        L7a:
            r11.close()
            return r0
        L7e:
            r0 = move-exception
            goto L84
        L80:
            r0 = move-exception
            goto La9
        L82:
            r0 = move-exception
            r11 = r10
        L84:
            g5.b5 r2 = r1.f17008a     // Catch: java.lang.Throwable -> La7
            g5.q3 r2 = r2.mo17858F()     // Catch: java.lang.Throwable -> La7
            g5.o3 r2 = r2.m18018m()     // Catch: java.lang.Throwable -> La7
            java.lang.String r3 = "Error querying user property. appId"
            java.lang.Object r4 = p070g5.C3789q3.m18010u(r20)     // Catch: java.lang.Throwable -> La7
            g5.b5 r5 = r1.f17008a     // Catch: java.lang.Throwable -> La7
            g5.l3 r5 = r5.m18509y()     // Catch: java.lang.Throwable -> La7
            java.lang.String r5 = r5.m18071f(r9)     // Catch: java.lang.Throwable -> La7
            r2.m18039d(r3, r4, r5, r0)     // Catch: java.lang.Throwable -> La7
            if (r11 == 0) goto La6
            r11.close()
        La6:
            return r10
        La7:
            r0 = move-exception
            r10 = r11
        La9:
            if (r10 == 0) goto Lae
            r10.close()
        Lae:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18113Z(java.lang.String, java.lang.String):g5.ga");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x008f, code lost:
        r3 = r41.f17008a.mo17858F().m18018m();
        r41.f17008a.m18513u();
        r3.m18041b("Read more than the max allowed conditional properties, ignoring extra", java.lang.Integer.valueOf((int) com.prineside.tdi2.tiles.CoreTile.FIXED_LEVEL_XP_REQUIREMENT));
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018c  */
    /* renamed from: d0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p070g5.C3617c> m18109d0(java.lang.String r42, java.lang.String[] r43) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18109d0(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* renamed from: e0 */
    public final List<C3676ga> m18108e0(String str) {
        C7297q.m1887f(str);
        mo17839c();
        m18000d();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                this.f17008a.m18513u();
                cursor = m18121R().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(0);
                        String string2 = cursor.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str2 = string2;
                        long j = cursor.getLong(2);
                        Object m18112a0 = m18112a0(cursor, 3);
                        if (m18112a0 == null) {
                            this.f17008a.mo17858F().m18018m().m18041b("Read invalid user property value, ignoring it. appId", C3789q3.m18010u(str));
                        } else {
                            arrayList.add(new C3676ga(str, str2, string, j, m18112a0));
                        }
                    } while (cursor.moveToNext());
                    cursor.close();
                    return arrayList;
                }
                cursor.close();
                return arrayList;
            } catch (SQLiteException e) {
                this.f17008a.mo17858F().m18018m().m18040c("Error querying user properties. appId", C3789q3.m18010u(str), e);
                List<C3676ga> emptyList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return emptyList;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ad, code lost:
        r3 = r19.f17008a.mo17858F().m18018m();
        r19.f17008a.m18513u();
        r3.m18041b("Read more than the max allowed user properties, ignoring excess", java.lang.Integer.valueOf((int) com.prineside.tdi2.tiles.CoreTile.FIXED_LEVEL_XP_REQUIREMENT));
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013a  */
    /* renamed from: f0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p070g5.C3676ga> m18107f0(java.lang.String r20, java.lang.String r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18107f0(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0343, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0344, code lost:
        r11.put("session_scoped", r0);
        r11.put("data", r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0358, code lost:
        if (m18121R().insertWithOnConflict("property_filters", null, r11, 5) != (-1)) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x035a, code lost:
        r23.f17008a.mo17858F().m18018m().m18041b("Failed to insert property filter (got -1). appId", p070g5.C3789q3.m18010u(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x036e, code lost:
        r0 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0372, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0373, code lost:
        r23.f17008a.mo17858F().m18018m().m18040c("Error storing property filter. appId", p070g5.C3789q3.m18010u(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0386, code lost:
        m18000d();
        mo17839c();
        p220x3.C7297q.m1887f(r24);
        r0 = m18121R();
        r3 = r17;
        r0.delete("property_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r0.delete("event_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r17 = r3;
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x03bd, code lost:
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x018b, code lost:
        r11 = r0.m26150A().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0197, code lost:
        if (r11.hasNext() == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01a3, code lost:
        if (r11.next().m25678C() != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01a5, code lost:
        r23.f17008a.mo17858F().m18013r().m18040c("Property filter with no ID. Audience definition ignored. appId, audienceId", p070g5.C3789q3.m18010u(r24), java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01be, code lost:
        r11 = r0.m26140z().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01d4, code lost:
        if (r11.hasNext() == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d6, code lost:
        r12 = r11.next();
        m18000d();
        mo17839c();
        p220x3.C7297q.m1887f(r24);
        p220x3.C7297q.m1883j(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01f0, code lost:
        if (android.text.TextUtils.isEmpty(r12.m26075z()) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01f2, code lost:
        r0 = r23.f17008a.mo17858F().m18013r();
        r8 = p070g5.C3789q3.m18010u(r24);
        r11 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x020a, code lost:
        if (r12.m26083H() == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x020c, code lost:
        r20 = java.lang.Integer.valueOf(r12.m26080t());
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0217, code lost:
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0219, code lost:
        r0.m18039d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r8, r11, java.lang.String.valueOf(r20));
        r21 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0224, code lost:
        r3 = r12.m25982e();
        r21 = r4;
        r4 = new android.content.ContentValues();
        r4.put("app_id", r24);
        r4.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x023d, code lost:
        if (r12.m26083H() == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x023f, code lost:
        r8 = java.lang.Integer.valueOf(r12.m26080t());
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0248, code lost:
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0249, code lost:
        r4.put("filter_id", r8);
        r4.put("event_name", r12.m26075z());
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0259, code lost:
        if (r12.m26082I() == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x025b, code lost:
        r8 = java.lang.Boolean.valueOf(r12.m26085F());
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0264, code lost:
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0265, code lost:
        r4.put("session_scoped", r8);
        r4.put("data", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0279, code lost:
        if (m18121R().insertWithOnConflict("event_filters", null, r4, 5) != (-1)) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x027b, code lost:
        r23.f17008a.mo17858F().m18018m().m18041b("Failed to insert event filter (got -1). appId", p070g5.C3789q3.m18010u(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x028e, code lost:
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0294, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0295, code lost:
        r23.f17008a.mo17858F().m18018m().m18040c("Error storing event filter. appId", p070g5.C3789q3.m18010u(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02aa, code lost:
        r21 = r4;
        r0 = r0.m26150A().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02b8, code lost:
        if (r0.hasNext() == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02ba, code lost:
        r3 = r0.next();
        m18000d();
        mo17839c();
        p220x3.C7297q.m1887f(r24);
        p220x3.C7297q.m1883j(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02d4, code lost:
        if (android.text.TextUtils.isEmpty(r3.m25672w()) == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02d6, code lost:
        r0 = r23.f17008a.mo17858F().m18013r();
        r7 = p070g5.C3789q3.m18010u(r24);
        r8 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02ee, code lost:
        if (r3.m25678C() == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02f0, code lost:
        r3 = java.lang.Integer.valueOf(r3.m25676s());
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02f9, code lost:
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02fa, code lost:
        r0.m18039d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r7, r8, java.lang.String.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0303, code lost:
        r4 = r3.m25982e();
        r11 = new android.content.ContentValues();
        r11.put("app_id", r24);
        r11.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x031a, code lost:
        if (r3.m25678C() == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x031c, code lost:
        r12 = java.lang.Integer.valueOf(r3.m25676s());
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0325, code lost:
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0326, code lost:
        r11.put("filter_id", r12);
        r22 = r0;
        r11.put("property_name", r3.m25672w());
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0338, code lost:
        if (r3.m25677D() == false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x033a, code lost:
        r0 = java.lang.Boolean.valueOf(r3.m25679B());
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18101j(java.lang.String r24, java.util.List<p018b5.C0576b3> r25) {
        /*
            Method dump skipped, instructions count: 1223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18101j(java.lang.String, java.util.List):void");
    }

    /* renamed from: l */
    public final void m18098l(C3671g5 c3671g5) {
        C7297q.m1883j(c3671g5);
        mo17839c();
        m18000d();
        String m18308e0 = c3671g5.m18308e0();
        C7297q.m1883j(m18308e0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", m18308e0);
        contentValues.put("app_instance_id", c3671g5.m18306f0());
        contentValues.put("gmp_app_id", c3671g5.m18296k0());
        contentValues.put("resettable_device_id_hash", c3671g5.m18315b());
        contentValues.put("last_bundle_index", Long.valueOf(c3671g5.m18318Z()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(c3671g5.m18316a0()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(c3671g5.m18319Y()));
        contentValues.put("app_version", c3671g5.m18302h0());
        contentValues.put("app_store", c3671g5.m18304g0());
        contentValues.put("gmp_version", Long.valueOf(c3671g5.m18320X()));
        contentValues.put("dev_cert_hash", Long.valueOf(c3671g5.m18323U()));
        contentValues.put("measurement_enabled", Boolean.valueOf(c3671g5.m18333K()));
        contentValues.put("day", Long.valueOf(c3671g5.m18324T()));
        contentValues.put("daily_public_events_count", Long.valueOf(c3671g5.m18326R()));
        contentValues.put("daily_events_count", Long.valueOf(c3671g5.m18327Q()));
        contentValues.put("daily_conversions_count", Long.valueOf(c3671g5.m18329O()));
        contentValues.put("config_fetched_time", Long.valueOf(c3671g5.m18330N()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(c3671g5.m18321W()));
        contentValues.put("app_version_int", Long.valueOf(c3671g5.m18331M()));
        contentValues.put("firebase_instance_id", c3671g5.m18300i0());
        contentValues.put("daily_error_events_count", Long.valueOf(c3671g5.m18328P()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(c3671g5.m18325S()));
        contentValues.put("health_monitor_sample", c3671g5.m18317a());
        contentValues.put("android_id", Long.valueOf(c3671g5.m18343A()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(c3671g5.m18334J()));
        contentValues.put("admob_app_id", c3671g5.m18312c0());
        contentValues.put("dynamite_version", Long.valueOf(c3671g5.m18322V()));
        List<String> m18313c = c3671g5.m18313c();
        if (m18313c != null) {
            if (m18313c.size() == 0) {
                this.f17008a.mo17858F().m18013r().m18041b("Safelisted events should not be an empty list. appId", m18308e0);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", m18313c));
            }
        }
        C0909ud.m25089b();
        if (this.f17008a.m18513u().m18356w(m18308e0, C3621c3.f16366f0)) {
            contentValues.put("ga_app_id", c3671g5.m18298j0());
        }
        try {
            SQLiteDatabase m18121R = m18121R();
            if (m18121R.update("apps", contentValues, "app_id = ?", new String[]{m18308e0}) == 0 && m18121R.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                this.f17008a.mo17858F().m18018m().m18041b("Failed to insert/update app (got -1). appId", C3789q3.m18010u(m18308e0));
            }
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18040c("Error storing app. appId", C3789q3.m18010u(m18308e0), e);
        }
    }

    /* renamed from: r */
    public final boolean m18092r() {
        Context mo17856O = this.f17008a.mo17856O();
        this.f17008a.m18513u();
        return mo17856O.getDatabasePath("google_app_measurement.db").exists();
    }

    public C3713k(C3616ba c3616ba) {
        super(c3616ba);
        this.f16677e = new C3759n9(this.f17008a.mo17854Q());
        this.f17008a.m18513u();
        this.f16676d = new C3701j(this, this.f17008a.mo17856O(), "google_app_measurement.db");
    }

    /* renamed from: H */
    public final int m18128H(String str, String str2) {
        C7297q.m1887f(str);
        C7297q.m1887f(str2);
        mo17839c();
        m18000d();
        try {
            return m18121R().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18039d("Error deleting conditional property", C3789q3.m18010u(str), this.f17008a.m18509y().m18071f(str2), e);
            return 0;
        }
    }

    /* renamed from: I */
    public final long m18127I(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m18121R().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    rawQuery.close();
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                this.f17008a.mo17858F().m18018m().m18040c("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: J */
    public final long m18126J(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            try {
                cursor = m18121R().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    long j2 = cursor.getLong(0);
                    cursor.close();
                    return j2;
                }
                cursor.close();
                return j;
            } catch (SQLiteException e) {
                this.f17008a.mo17858F().m18018m().m18040c("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: N */
    public final long m18122N(String str) {
        C7297q.m1887f(str);
        return m18126J("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* renamed from: R */
    public final SQLiteDatabase m18121R() {
        mo17839c();
        try {
            return this.f16676d.getWritableDatabase();
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18013r().m18041b("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x00d6: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:44:0x00d6 */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d9  */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m18120S(java.lang.String r8) {
        /*
            r7 = this;
            r7.mo17839c()
            r7.m18000d()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.m18121R()     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lbe
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lbe
            r3 = 0
            r2[r3] = r8     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lbe
            java.lang.String r4 = "select parameters from default_event_params where app_id=?"
            android.database.Cursor r1 = r1.rawQuery(r4, r2)     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lbe
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            if (r2 != 0) goto L30
            g5.b5 r8 = r7.f17008a     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            g5.q3 r8 = r8.mo17858F()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            g5.o3 r8 = r8.m18014q()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            java.lang.String r2 = "Default event parameters not found"
            r8.m18042a(r2)     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r1.close()
            return r0
        L30:
            byte[] r2 = r1.getBlob(r3)     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            b5.i4 r3 = p018b5.C0713j4.m25756w()     // Catch: java.io.IOException -> La2 android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            b5.da r2 = p070g5.C3640da.m18390y(r3, r2)     // Catch: java.io.IOException -> La2 android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            b5.i4 r2 = (p018b5.C0696i4) r2     // Catch: java.io.IOException -> La2 android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            b5.x8 r2 = r2.m25101i()     // Catch: java.io.IOException -> La2 android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            b5.j4 r2 = (p018b5.C0713j4) r2     // Catch: java.io.IOException -> La2 android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            g5.ba r8 = r7.f16900b     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r8.m18472f0()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            java.util.List r8 = r2.m25773B()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            android.os.Bundle r2 = new android.os.Bundle     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r2.<init>()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            java.util.Iterator r8 = r8.iterator()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
        L56:
            boolean r3 = r8.hasNext()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            if (r3 == 0) goto L9e
            java.lang.Object r3 = r8.next()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            b5.n4 r3 = (p018b5.C0781n4) r3     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            java.lang.String r4 = r3.m25579z()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            boolean r5 = r3.m25591O()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            if (r5 == 0) goto L74
            double r5 = r3.m25585s()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r2.putDouble(r4, r5)     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            goto L56
        L74:
            boolean r5 = r3.m25590P()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            if (r5 == 0) goto L82
            float r3 = r3.m25584t()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r2.putFloat(r4, r3)     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            goto L56
        L82:
            boolean r5 = r3.m25587S()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            if (r5 == 0) goto L90
            java.lang.String r3 = r3.m25603A()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r2.putString(r4, r3)     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            goto L56
        L90:
            boolean r5 = r3.m25589Q()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            if (r5 == 0) goto L56
            long r5 = r3.m25582v()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r2.putLong(r4, r5)     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            goto L56
        L9e:
            r1.close()
            return r2
        La2:
            r2 = move-exception
            g5.b5 r3 = r7.f17008a     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            g5.q3 r3 = r3.mo17858F()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            g5.o3 r3 = r3.m18018m()     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            java.lang.String r4 = "Failed to retrieve default event parameters. appId"
            java.lang.Object r8 = p070g5.C3789q3.m18010u(r8)     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r3.m18040c(r4, r8, r2)     // Catch: android.database.sqlite.SQLiteException -> Lba java.lang.Throwable -> Ld5
            r1.close()
            return r0
        Lba:
            r8 = move-exception
            goto Lc0
        Lbc:
            r8 = move-exception
            goto Ld7
        Lbe:
            r8 = move-exception
            r1 = r0
        Lc0:
            g5.b5 r2 = r7.f17008a     // Catch: java.lang.Throwable -> Ld5
            g5.q3 r2 = r2.mo17858F()     // Catch: java.lang.Throwable -> Ld5
            g5.o3 r2 = r2.m18018m()     // Catch: java.lang.Throwable -> Ld5
            java.lang.String r3 = "Error selecting default event parameters"
            r2.m18041b(r3, r8)     // Catch: java.lang.Throwable -> Ld5
            if (r1 == 0) goto Ld4
            r1.close()
        Ld4:
            return r0
        Ld5:
            r8 = move-exception
            r0 = r1
        Ld7:
            if (r0 == 0) goto Ldc
            r0.close()
        Ldc:
            goto Lde
        Ldd:
            throw r8
        Lde:
            goto Ldd
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18120S(java.lang.String):android.os.Bundle");
    }

    /* renamed from: a0 */
    public final Object m18112a0(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type != 0) {
            if (type != 1) {
                if (type != 2) {
                    if (type != 3) {
                        if (type != 4) {
                            this.f17008a.mo17858F().m18018m().m18041b("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                            return null;
                        }
                        this.f17008a.mo17858F().m18018m().m18042a("Loaded invalid blob type value, ignoring it");
                        return null;
                    }
                    return cursor.getString(i);
                }
                return Double.valueOf(cursor.getDouble(i));
            }
            return Long.valueOf(cursor.getLong(i));
        }
        this.f17008a.mo17858F().m18018m().m18042a("Loaded invalid null value from database");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m18111b0() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.m18121R()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L22
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L3a
            if (r2 == 0) goto L1a
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L3a
            r0.close()
            return r1
        L1a:
            r0.close()
            return r1
        L1e:
            r2 = move-exception
            goto L25
        L20:
            r0 = move-exception
            goto L3e
        L22:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L25:
            g5.b5 r3 = r6.f17008a     // Catch: java.lang.Throwable -> L3a
            g5.q3 r3 = r3.mo17858F()     // Catch: java.lang.Throwable -> L3a
            g5.o3 r3 = r3.m18018m()     // Catch: java.lang.Throwable -> L3a
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.m18041b(r4, r2)     // Catch: java.lang.Throwable -> L3a
            if (r0 == 0) goto L39
            r0.close()
        L39:
            return r1
        L3a:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L3e:
            if (r1 == 0) goto L43
            r1.close()
        L43:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3713k.m18111b0():java.lang.String");
    }

    /* renamed from: c0 */
    public final List<C3617c> m18110c0(String str, String str2, String str3) {
        C7297q.m1887f(str);
        mo17839c();
        m18000d();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return m18109d0(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* renamed from: g0 */
    public final void m18106g0() {
        m18000d();
        m18121R().beginTransaction();
    }

    /* renamed from: h */
    public final void m18105h() {
        mo17839c();
        m18000d();
        if (m18092r()) {
            long m18548a = this.f16900b.m18476d0().f17075g.m18548a();
            long mo24762b = this.f17008a.mo17854Q().mo24762b();
            long abs = Math.abs(mo24762b - m18548a);
            this.f17008a.m18513u();
            if (abs > C3621c3.f16405z.m18550a(null).longValue()) {
                this.f16900b.m18476d0().f17075g.m18547b(mo24762b);
                mo17839c();
                m18000d();
                if (m18092r()) {
                    SQLiteDatabase m18121R = m18121R();
                    this.f17008a.m18513u();
                    int delete = m18121R.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(this.f17008a.mo17854Q().mo24763a()), String.valueOf(C3665g.m18375d())});
                    if (delete > 0) {
                        this.f17008a.mo17858F().m18014q().m18041b("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    /* renamed from: h0 */
    public final void m18104h0(List<Long> list) {
        C7297q.m1883j(list);
        mo17839c();
        m18000d();
        StringBuilder sb = new StringBuilder("rowid in (");
        for (int i = 0; i < list.size(); i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(list.get(i).longValue());
        }
        sb.append(")");
        int delete = m18121R().delete("raw_events", sb.toString(), null);
        if (delete != list.size()) {
            this.f17008a.mo17858F().m18018m().m18040c("Deleted fewer rows from raw events table than expected", Integer.valueOf(delete), Integer.valueOf(list.size()));
        }
    }

    /* renamed from: i */
    public final void m18103i(String str, String str2) {
        C7297q.m1887f(str);
        C7297q.m1887f(str2);
        mo17839c();
        m18000d();
        try {
            m18121R().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18039d("Error deleting user property. appId", C3789q3.m18010u(str), this.f17008a.m18509y().m18071f(str2), e);
        }
    }

    /* renamed from: i0 */
    public final void m18102i0() {
        m18000d();
        m18121R().endTransaction();
    }

    /* renamed from: j0 */
    public final void m18100j0(List<Long> list) {
        mo17839c();
        m18000d();
        C7297q.m1883j(list);
        C7297q.m1881l(list.size());
        if (!m18092r()) {
            return;
        }
        String join = TextUtils.join(",", list);
        StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
        sb.append("(");
        sb.append(join);
        sb.append(")");
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 80);
        sb3.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
        sb3.append(sb2);
        sb3.append(" AND retry_count =  2147483647 LIMIT 1");
        if (m18127I(sb3.toString(), null) > 0) {
            this.f17008a.mo17858F().m18013r().m18042a("The number of upload retries exceeds the limit. Will remain unchanged.");
        }
        try {
            SQLiteDatabase m18121R = m18121R();
            StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
            sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
            sb4.append(sb2);
            sb4.append(" AND (retry_count IS NULL OR retry_count < ");
            sb4.append(Integer.MAX_VALUE);
            sb4.append(")");
            m18121R.execSQL(sb4.toString());
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18041b("Error incrementing retry count. error", e);
        }
    }

    /* renamed from: k */
    public final void m18099k() {
        m18000d();
        m18121R().setTransactionSuccessful();
    }

    /* renamed from: m */
    public final void m18097m(C3785q c3785q) {
        Long l;
        C7297q.m1883j(c3785q);
        mo17839c();
        m18000d();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", c3785q.f16861a);
        contentValues.put("name", c3785q.f16862b);
        contentValues.put("lifetime_count", Long.valueOf(c3785q.f16863c));
        contentValues.put("current_bundle_count", Long.valueOf(c3785q.f16864d));
        contentValues.put("last_fire_timestamp", Long.valueOf(c3785q.f16866f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(c3785q.f16867g));
        contentValues.put("last_bundled_day", c3785q.f16868h);
        contentValues.put("last_sampled_complex_event_id", c3785q.f16869i);
        contentValues.put("last_sampling_rate", c3785q.f16870j);
        contentValues.put("current_session_count", Long.valueOf(c3785q.f16865e));
        Boolean bool = c3785q.f16871k;
        if (bool != null && bool.booleanValue()) {
            l = 1L;
        } else {
            l = null;
        }
        contentValues.put("last_exempt_from_sampling", l);
        try {
            if (m18121R().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                this.f17008a.mo17858F().m18018m().m18041b("Failed to insert/update event aggregates (got -1). appId", C3789q3.m18010u(c3785q.f16861a));
            }
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18040c("Error storing event aggregates. appId", C3789q3.m18010u(c3785q.f16861a), e);
        }
    }

    /* renamed from: n */
    public final void m18096n(String str, byte[] bArr, String str2) {
        C7297q.m1887f(str);
        mo17839c();
        m18000d();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        try {
            if (m18121R().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                this.f17008a.mo17858F().m18018m().m18041b("Failed to update remote config (got 0). appId", C3789q3.m18010u(str));
            }
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18040c("Error storing remote config. appId", C3789q3.m18010u(str), e);
        }
    }

    /* renamed from: s */
    public final boolean m18091s(String str, Long l, long j, C0713j4 c0713j4) {
        mo17839c();
        m18000d();
        C7297q.m1883j(c0713j4);
        C7297q.m1887f(str);
        C7297q.m1883j(l);
        byte[] m25982e = c0713j4.m25982e();
        this.f17008a.mo17858F().m18014q().m18040c("Saving complex main event, appId, data size", this.f17008a.m18509y().m18073d(str), Integer.valueOf(m25982e.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", m25982e);
        try {
            if (m18121R().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                this.f17008a.mo17858F().m18018m().m18041b("Failed to insert complex main event (got -1). appId", C3789q3.m18010u(str));
                return false;
            }
            return true;
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18040c("Error storing complex main event. appId", C3789q3.m18010u(str), e);
            return false;
        }
    }

    /* renamed from: t */
    public final boolean m18090t(C3617c c3617c) {
        C7297q.m1883j(c3617c);
        mo17839c();
        m18000d();
        String str = c3617c.f16309a;
        C7297q.m1883j(str);
        if (m18113Z(str, c3617c.f16311d.f16463b) == null) {
            long m18127I = m18127I("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.f17008a.m18513u();
            if (m18127I >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", c3617c.f16310b);
        contentValues.put("name", c3617c.f16311d.f16463b);
        m18129E(contentValues, "value", C7297q.m1883j(c3617c.f16311d.m18386X0()));
        contentValues.put("active", Boolean.valueOf(c3617c.f16313p));
        contentValues.put("trigger_event_name", c3617c.f16314q);
        contentValues.put("trigger_timeout", Long.valueOf(c3617c.f16316s));
        contentValues.put("timed_out_event", this.f17008a.m18538K().m18182c0(c3617c.f16315r));
        contentValues.put("creation_timestamp", Long.valueOf(c3617c.f16312k));
        contentValues.put("triggered_event", this.f17008a.m18538K().m18182c0(c3617c.f16317t));
        contentValues.put("triggered_timestamp", Long.valueOf(c3617c.f16311d.f16464d));
        contentValues.put("time_to_live", Long.valueOf(c3617c.f16318u));
        contentValues.put("expired_event", this.f17008a.m18538K().m18182c0(c3617c.f16319v));
        try {
            if (m18121R().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                this.f17008a.mo17858F().m18018m().m18041b("Failed to insert/update conditional user property (got -1)", C3789q3.m18010u(str));
            }
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18040c("Error storing conditional user property", C3789q3.m18010u(str), e);
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m18089u(C3676ga c3676ga) {
        C7297q.m1883j(c3676ga);
        mo17839c();
        m18000d();
        if (m18113Z(c3676ga.f16558a, c3676ga.f16560c) == null) {
            if (C3700ia.m18188W(c3676ga.f16560c)) {
                if (m18127I("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{c3676ga.f16558a}) >= this.f17008a.m18513u().m18368k(c3676ga.f16558a, C3621c3.f16336H, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(c3676ga.f16560c)) {
                long m18127I = m18127I("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{c3676ga.f16558a, c3676ga.f16559b});
                this.f17008a.m18513u();
                if (m18127I >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", c3676ga.f16558a);
        contentValues.put("origin", c3676ga.f16559b);
        contentValues.put("name", c3676ga.f16560c);
        contentValues.put("set_timestamp", Long.valueOf(c3676ga.f16561d));
        m18129E(contentValues, "value", c3676ga.f16562e);
        try {
            if (m18121R().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                this.f17008a.mo17858F().m18018m().m18041b("Failed to insert/update user property (got -1). appId", C3789q3.m18010u(c3676ga.f16558a));
            }
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18040c("Error storing user property. appId", C3789q3.m18010u(c3676ga.f16558a), e);
        }
        return true;
    }
}
