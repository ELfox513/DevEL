package p070g5;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
/* renamed from: g5.j3 */
/* loaded from: classes2.dex */
public final class C3705j3 extends AbstractC3658f4 {

    /* renamed from: c */
    public final C3693i3 f16651c;

    /* renamed from: d */
    public boolean f16652d;

    @Override // p070g5.AbstractC3658f4
    /* renamed from: i */
    public final boolean mo17880i() {
        return false;
    }

    /* renamed from: j */
    public final SQLiteDatabase m18144j() {
        if (this.f16652d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f16651c.getWritableDatabase();
        if (writableDatabase == null) {
            this.f16652d = true;
            return null;
        }
        return writableDatabase;
    }

    /* renamed from: m */
    public final boolean m18141m() {
        return m18135s(3, new byte[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x020b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x01e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0258 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0258 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0258 A[SYNTHETIC] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p228y3.AbstractC7408a> m18143k(int r24) {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3705j3.m18143k(int):java.util.List");
    }

    /* renamed from: n */
    public final boolean m18140n() {
        Context mo17856O = this.f17008a.mo17856O();
        this.f17008a.m18513u();
        return mo17856O.getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* renamed from: o */
    public final boolean m18139o() {
        mo17839c();
        if (!this.f16652d && m18140n()) {
            int i = 5;
            for (int i2 = 0; i2 < 5; i2++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase m18144j = m18144j();
                    if (m18144j == null) {
                        this.f16652d = true;
                        return false;
                    }
                    m18144j.beginTransaction();
                    m18144j.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    m18144j.setTransactionSuccessful();
                    m18144j.endTransaction();
                    m18144j.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i);
                    i += 20;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                } catch (SQLiteFullException e) {
                    this.f17008a.mo17858F().m18018m().m18041b("Error deleting app launch break from local database", e);
                    this.f16652d = true;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                } catch (SQLiteException e2) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    }
                    this.f17008a.mo17858F().m18018m().m18041b("Error deleting app launch break from local database", e2);
                    this.f16652d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            this.f17008a.mo17858F().m18013r().m18042a("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    /* renamed from: p */
    public final boolean m18138p(C3617c c3617c) {
        byte[] m18182c0 = this.f17008a.m18538K().m18182c0(c3617c);
        if (m18182c0.length > 131072) {
            this.f17008a.mo17858F().m18016o().m18042a("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return m18135s(2, m18182c0);
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0129  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m18135s(int r17, byte[] r18) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3705j3.m18135s(int, byte[]):boolean");
    }

    public C3705j3(C3611b5 c3611b5) {
        super(c3611b5);
        Context mo17856O = this.f17008a.mo17856O();
        this.f17008a.m18513u();
        this.f16651c = new C3693i3(this, mo17856O, "google_app_measurement_local.db");
    }

    /* renamed from: l */
    public final void m18142l() {
        int delete;
        mo17839c();
        try {
            SQLiteDatabase m18144j = m18144j();
            if (m18144j != null && (delete = m18144j.delete("messages", null, null)) > 0) {
                this.f17008a.mo17858F().m18014q().m18041b("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            this.f17008a.mo17858F().m18018m().m18041b("Error resetting local analytics data. error", e);
        }
    }

    /* renamed from: q */
    public final boolean m18137q(C3833u c3833u) {
        Parcel obtain = Parcel.obtain();
        C3845v.m17932a(c3833u, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f17008a.mo17858F().m18016o().m18042a("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return m18135s(0, marshall);
    }

    /* renamed from: r */
    public final boolean m18136r(C3652ea c3652ea) {
        Parcel obtain = Parcel.obtain();
        C3664fa.m18380a(c3652ea, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f17008a.mo17858F().m18016o().m18042a("User property too long for local database. Sending directly to service");
            return false;
        }
        return m18135s(1, marshall);
    }
}
