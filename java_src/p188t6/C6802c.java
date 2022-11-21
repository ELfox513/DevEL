package p188t6;

import com.badlogic.gdx.net.HttpResponseHeader;
import com.prineside.luaj.lib.OsLib;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
import p124m5.C4638c;
/* renamed from: t6.c */
/* loaded from: classes2.dex */
public class C6802c {

    /* renamed from: a */
    public final File f35502a;

    /* renamed from: b */
    public final C4638c f35503b;

    /* renamed from: t6.c$a */
    /* loaded from: classes2.dex */
    public enum EnumC6803a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    /* renamed from: a */
    public AbstractC6804d m3409a(AbstractC6804d abstractC6804d) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", abstractC6804d.mo3403d());
            jSONObject.put(HttpResponseHeader.Status, abstractC6804d.mo3400g().ordinal());
            jSONObject.put("AuthToken", abstractC6804d.mo3405b());
            jSONObject.put("RefreshToken", abstractC6804d.mo3401f());
            jSONObject.put("TokenCreationEpochInSecs", abstractC6804d.mo3399h());
            jSONObject.put("ExpiresInSecs", abstractC6804d.mo3404c());
            jSONObject.put("FisError", abstractC6804d.mo3402e());
            createTempFile = File.createTempFile("PersistedInstallation", OsLib.TMP_SUFFIX, this.f35503b.m15899h().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException unused) {
        }
        if (!createTempFile.renameTo(this.f35502a)) {
            throw new IOException("unable to rename the tmpfile to PersistedInstallation");
        }
        return abstractC6804d;
    }

    /* renamed from: b */
    public final JSONObject m3408b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f35502a);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 16384);
                if (read < 0) {
                    JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                    fileInputStream.close();
                    return jSONObject;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException | JSONException unused) {
            return new JSONObject();
        }
    }

    public C6802c(C4638c c4638c) {
        File filesDir = c4638c.m15899h().getFilesDir();
        this.f35502a = new File(filesDir, "PersistedInstallation." + c4638c.m15895l() + ".json");
        this.f35503b = c4638c;
    }

    /* renamed from: c */
    public AbstractC6804d m3407c() {
        JSONObject m3408b = m3408b();
        String optString = m3408b.optString("Fid", null);
        int optInt = m3408b.optInt(HttpResponseHeader.Status, EnumC6803a.ATTEMPT_MIGRATION.ordinal());
        String optString2 = m3408b.optString("AuthToken", null);
        String optString3 = m3408b.optString("RefreshToken", null);
        long optLong = m3408b.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = m3408b.optLong("ExpiresInSecs", 0L);
        return AbstractC6804d.m3406a().mo3383d(optString).mo3380g(EnumC6803a.values()[optInt]).mo3385b(optString2).mo3381f(optString3).mo3379h(optLong).mo3384c(optLong2).mo3382e(m3408b.optString("FisError", null)).mo3386a();
    }
}
