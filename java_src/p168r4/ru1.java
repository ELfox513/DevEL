package p168r4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;
import p016b3.C0497k2;
import p042d4.C3325e;
import p235z2.C7601t;
/* renamed from: r4.ru1 */
/* loaded from: classes2.dex */
public final class ru1 {

    /* renamed from: a */
    public final Context f30690a;

    /* renamed from: b */
    public final ApplicationInfo f30691b;

    /* renamed from: e */
    public String f30694e = "";

    /* renamed from: c */
    public final int f30692c = ((Integer) C5592av.m12935c().m8098c(C6225rz.f30781C6)).intValue();

    /* renamed from: d */
    public final int f30693d = ((Integer) C5592av.m12935c().m8098c(C6225rz.f30789D6)).intValue();

    /* renamed from: a */
    public final JSONObject m7336a() {
        Drawable drawable;
        String encodeToString;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", C3325e.m19140a(this.f30690a).m19145d(this.f30691b.packageName));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        jSONObject.put("packageName", this.f30691b.packageName);
        C7601t.m939d();
        jSONObject.put("adMobAppId", C0497k2.m26323c0(this.f30690a));
        if (this.f30694e.isEmpty()) {
            try {
                drawable = C3325e.m19140a(this.f30690a).m19144e(this.f30691b.packageName).f2924b;
            } catch (PackageManager.NameNotFoundException unused2) {
                drawable = null;
            }
            if (drawable == null) {
                encodeToString = "";
            } else {
                drawable.setBounds(0, 0, this.f30692c, this.f30693d);
                Bitmap createBitmap = Bitmap.createBitmap(this.f30692c, this.f30693d, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.f30694e = encodeToString;
        }
        if (!this.f30694e.isEmpty()) {
            jSONObject.put("icon", this.f30694e);
            jSONObject.put("iconWidthPx", this.f30692c);
            jSONObject.put("iconHeightPx", this.f30693d);
        }
        return jSONObject;
    }

    public ru1(Context context) {
        this.f30690a = context;
        this.f30691b = context.getApplicationInfo();
    }
}
