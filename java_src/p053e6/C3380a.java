package p053e6;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;
import p028c6.C1077i;
import p196u5.C6930f;
import p222x5.C7341g;
/* renamed from: e6.a */
/* loaded from: classes2.dex */
public class C3380a {

    /* renamed from: a */
    public final Context f15752a;

    /* renamed from: a */
    public final File m19038a() {
        return new File(new C1077i(this.f15752a).mo24645b(), "com.crashlytics.settings.json");
    }

    /* renamed from: b */
    public JSONObject m19037b() {
        Throwable th;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        C6930f.m3016f().m3020b("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File m19038a = m19038a();
                if (m19038a.exists()) {
                    fileInputStream = new FileInputStream(m19038a);
                    try {
                        jSONObject = new JSONObject(C7341g.m1796A(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e) {
                        e = e;
                        C6930f.m3016f().m3017e("Failed to fetch cached settings", e);
                        C7341g.m1791e(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    C6930f.m3016f().m3013i("Settings file does not exist.");
                    jSONObject = null;
                }
                C7341g.m1791e(fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th2) {
                th = th2;
                C7341g.m1791e(null, "Error while closing settings cache file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            C7341g.m1791e(null, "Error while closing settings cache file.");
            throw th;
        }
    }

    /* renamed from: c */
    public void m19036c(long j, JSONObject jSONObject) {
        FileWriter fileWriter;
        C6930f.m3016f().m3013i("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter = new FileWriter(m19038a());
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                fileWriter.write(jSONObject.toString());
                fileWriter.flush();
                C7341g.m1791e(fileWriter, "Failed to close settings writer.");
            } catch (Exception e2) {
                e = e2;
                fileWriter2 = fileWriter;
                C6930f.m3016f().m3017e("Failed to cache settings", e);
                C7341g.m1791e(fileWriter2, "Failed to close settings writer.");
            } catch (Throwable th2) {
                th = th2;
                fileWriter2 = fileWriter;
                C7341g.m1791e(fileWriter2, "Failed to close settings writer.");
                throw th;
            }
        }
    }

    public C3380a(Context context) {
        this.f15752a = context;
    }
}
