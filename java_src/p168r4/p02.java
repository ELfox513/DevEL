package p168r4;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
/* renamed from: r4.p02 */
/* loaded from: classes2.dex */
public final class p02 {
    /* renamed from: c */
    public static long m8524c(SQLiteDatabase sQLiteDatabase, int i) {
        long j;
        Cursor m8523d = m8523d(sQLiteDatabase, 2);
        if (m8523d.getCount() > 0) {
            m8523d.moveToNext();
            j = m8523d.getLong(m8523d.getColumnIndexOrThrow("value"));
        } else {
            j = 0;
        }
        m8523d.close();
        return j;
    }

    /* renamed from: d */
    public static Cursor m8523d(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = {"value"};
        String[] strArr2 = new String[1];
        if (i == 0) {
            strArr2[0] = "failed_requests";
        } else if (i != 1) {
            strArr2[0] = "last_successful_request_time";
        } else {
            strArr2[0] = "total_requests";
        }
        return sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
    }

    /* renamed from: a */
    public static ArrayList<C6254sr> m8526a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<C6254sr> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(C6254sr.m7050O(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (bn3 e) {
                cm0.m12440c("Unable to deserialize proto from offline signals database:");
                cm0.m12440c(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    /* renamed from: b */
    public static int m8525b(SQLiteDatabase sQLiteDatabase, int i) {
        int i2;
        Cursor m8523d = m8523d(sQLiteDatabase, i);
        if (m8523d.getCount() > 0) {
            m8523d.moveToNext();
            i2 = m8523d.getInt(m8523d.getColumnIndexOrThrow("value"));
        } else {
            i2 = 0;
        }
        m8523d.close();
        return i2;
    }
}
