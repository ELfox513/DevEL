package p168r4;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import java.util.ArrayList;
import p016b3.InterfaceC0549y1;
import p235z2.C7601t;
/* renamed from: r4.u02 */
/* loaded from: classes2.dex */
public final class u02 {

    /* renamed from: a */
    public final C5882ip f32103a;

    /* renamed from: b */
    public final Context f32104b;

    /* renamed from: c */
    public final b02 f32105c;

    /* renamed from: d */
    public final im0 f32106d;

    /* renamed from: e */
    public final String f32107e;

    /* renamed from: f */
    public final xt2 f32108f;

    /* renamed from: g */
    public final InterfaceC0549y1 f32109g = C7601t.m935h().m9051p();

    public u02(Context context, im0 im0Var, C5882ip c5882ip, b02 b02Var, String str, xt2 xt2Var) {
        this.f32104b = context;
        this.f32106d = im0Var;
        this.f32103a = c5882ip;
        this.f32105c = b02Var;
        this.f32107e = str;
        this.f32108f = xt2Var;
    }

    /* renamed from: a */
    public final void m6671a(final boolean z) {
        String str;
        try {
            this.f32105c.m12892a(new ps2(this, z) { // from class: r4.q02

                /* renamed from: a */
                public final u02 f29876a;

                /* renamed from: b */
                public final boolean f29877b;

                {
                    this.f29876a = this;
                    this.f29877b = z;
                }

                @Override // p168r4.ps2
                /* renamed from: a */
                public final Object mo4065a(Object obj) {
                    this.f29876a.m6670b(this.f29877b, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                str = "Error in offline signals database startup: ".concat(valueOf);
            } else {
                str = new String("Error in offline signals database startup: ");
            }
            cm0.m12440c(str);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ Void m6670b(boolean z, SQLiteDatabase sQLiteDatabase) {
        String str;
        String str2;
        String str3;
        if (z) {
            this.f32104b.deleteDatabase("OfflineUpload.db");
            return null;
        }
        int i = 2;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            wt2 m5590a = wt2.m5590a("oa_upload");
            m5590a.m5588c("oa_failed_reqs", String.valueOf(p02.m8525b(sQLiteDatabase, 0)));
            m5590a.m5588c("oa_total_reqs", String.valueOf(p02.m8525b(sQLiteDatabase, 1)));
            m5590a.m5588c("oa_upload_time", String.valueOf(C7601t.m932k().mo24763a()));
            m5590a.m5588c("oa_last_successful_time", String.valueOf(p02.m8524c(sQLiteDatabase, 2)));
            if (this.f32109g.mo26190y()) {
                str = "";
            } else {
                str = this.f32107e;
            }
            m5590a.m5588c("oa_session_id", str);
            this.f32108f.mo4985a(m5590a);
            ArrayList<C6254sr> m8526a = p02.m8526a(sQLiteDatabase);
            m6669c(sQLiteDatabase, m8526a);
            int size = m8526a.size();
            for (int i2 = 0; i2 < size; i2++) {
                C6254sr c6254sr = m8526a.get(i2);
                wt2 m5590a2 = wt2.m5590a("oa_signals");
                if (this.f32109g.mo26190y()) {
                    str2 = "";
                } else {
                    str2 = this.f32107e;
                }
                m5590a2.m5588c("oa_session_id", str2);
                C6069nr m7053L = c6254sr.m7053L();
                if (m7053L.m9012C()) {
                    str3 = String.valueOf(m7053L.m9007K() - 1);
                } else {
                    str3 = "-1";
                }
                String obj = h43.m10983b(c6254sr.m7054K(), t02.f31602a).toString();
                m5590a2.m5588c("oa_sig_ts", String.valueOf(c6254sr.m7057E()));
                m5590a2.m5588c("oa_sig_status", String.valueOf(c6254sr.m7040Y() - 1));
                m5590a2.m5588c("oa_sig_resp_lat", String.valueOf(c6254sr.m7056I()));
                m5590a2.m5588c("oa_sig_render_lat", String.valueOf(c6254sr.m7055J()));
                m5590a2.m5588c("oa_sig_formats", obj);
                m5590a2.m5588c("oa_sig_nw_type", str3);
                m5590a2.m5588c("oa_sig_wifi", String.valueOf(c6254sr.m7039Z() - 1));
                m5590a2.m5588c("oa_sig_airplane", String.valueOf(c6254sr.m7038a0() - 1));
                m5590a2.m5588c("oa_sig_data", String.valueOf(c6254sr.m7037b0() - 1));
                m5590a2.m5588c("oa_sig_nw_resp", String.valueOf(c6254sr.m7052M()));
                m5590a2.m5588c("oa_sig_offline", String.valueOf(c6254sr.m7036c0() - 1));
                m5590a2.m5588c("oa_sig_nw_state", String.valueOf(c6254sr.m7051N().zza()));
                if (m7053L.m9011D() && m7053L.m9012C() && m7053L.m9007K() == 2) {
                    m5590a2.m5588c("oa_sig_cell_type", String.valueOf(m7053L.m9006L() - 1));
                }
                this.f32108f.mo4985a(m5590a2);
            }
        } else {
            ArrayList<C6254sr> m8526a2 = p02.m8526a(sQLiteDatabase);
            C6291tr m5152C = C6439xr.m5152C();
            m5152C.m6748B(this.f32104b.getPackageName());
            m5152C.m6747C(Build.MODEL);
            m5152C.m6744x(p02.m8525b(sQLiteDatabase, 0));
            m5152C.m6745v(m8526a2);
            m5152C.m6743z(p02.m8525b(sQLiteDatabase, 1));
            m5152C.m6749A(C7601t.m932k().mo24763a());
            m5152C.m6746D(p02.m8524c(sQLiteDatabase, 2));
            final C6439xr m9614o = m5152C.m9614o();
            m6669c(sQLiteDatabase, m8526a2);
            this.f32103a.m10582b(new InterfaceC5845hp(m9614o) { // from class: r4.r02

                /* renamed from: a */
                public final C6439xr f30399a;

                {
                    this.f30399a = m9614o;
                }

                @Override // p168r4.InterfaceC5845hp
                /* renamed from: a */
                public final void mo6727a(C6438xq c6438xq) {
                    c6438xq.m5175I(this.f30399a);
                }
            });
            C5885is m10203C = C5921js.m10203C();
            m10203C.m10552v(this.f32106d.f25172b);
            m10203C.m10551x(this.f32106d.f25173d);
            if (true == this.f32106d.f25174k) {
                i = 0;
            }
            m10203C.m10550z(i);
            final C5921js m9614o2 = m10203C.m9614o();
            this.f32103a.m10582b(new InterfaceC5845hp(m9614o2) { // from class: r4.s02

                /* renamed from: a */
                public final C5921js f31201a;

                {
                    this.f31201a = m9614o2;
                }

                @Override // p168r4.InterfaceC5845hp
                /* renamed from: a */
                public final void mo6727a(C6438xq c6438xq) {
                    C5921js c5921js = this.f31201a;
                    C6142pq m8250x = c6438xq.m5179B().m8250x();
                    m8250x.m8223x(c5921js);
                    c6438xq.m5178C(m8250x);
                }
            });
            this.f32103a.m10581c(10004);
        }
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }

    /* renamed from: c */
    public static final void m6669c(SQLiteDatabase sQLiteDatabase, ArrayList<C6254sr> arrayList) {
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            C6254sr c6254sr = arrayList.get(i);
            if (c6254sr.m7040Y() == 2 && c6254sr.m7057E() > j) {
                j = c6254sr.m7057E();
            }
        }
        if (j != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(j));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }
}
