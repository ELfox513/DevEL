package p135n7;

import android.content.Context;
import com.google.firebase.remoteconfig.internal.C1433a;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: n7.l */
/* loaded from: classes2.dex */
public class C4776l {

    /* renamed from: c */
    public static final Map<String, C4776l> f19065c = new HashMap();

    /* renamed from: a */
    public final Context f19066a;

    /* renamed from: b */
    public final String f19067b;

    /* renamed from: a */
    public synchronized Void m15395a() {
        this.f19066a.deleteFile(this.f19067b);
        return null;
    }

    /* renamed from: b */
    public String m15394b() {
        return this.f19067b;
    }

    /* renamed from: d */
    public synchronized C1433a m15392d() {
        FileInputStream fileInputStream;
        Throwable th;
        try {
            fileInputStream = this.f19066a.openFileInput(this.f19067b);
            try {
                int available = fileInputStream.available();
                byte[] bArr = new byte[available];
                fileInputStream.read(bArr, 0, available);
                C1433a m22903b = C1433a.m22903b(new JSONObject(new String(bArr, "UTF-8")));
                fileInputStream.close();
                return m22903b;
            } catch (FileNotFoundException | JSONException unused) {
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (FileNotFoundException | JSONException unused2) {
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
        }
    }

    /* renamed from: e */
    public synchronized Void m15391e(C1433a c1433a) {
        FileOutputStream openFileOutput = this.f19066a.openFileOutput(this.f19067b, 0);
        openFileOutput.write(c1433a.toString().getBytes("UTF-8"));
        openFileOutput.close();
        return null;
    }

    /* renamed from: c */
    public static synchronized C4776l m15393c(Context context, String str) {
        C4776l c4776l;
        synchronized (C4776l.class) {
            Map<String, C4776l> map = f19065c;
            if (!map.containsKey(str)) {
                map.put(str, new C4776l(context, str));
            }
            c4776l = map.get(str);
        }
        return c4776l;
    }

    public C4776l(Context context, String str) {
        this.f19066a = context;
        this.f19067b = str;
    }
}
