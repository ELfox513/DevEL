package p168r4;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.badlogic.gdx.net.HttpRequestHeader;
import java.util.Map;
import p219x2.C7239a;
import p235z2.C7601t;
/* renamed from: r4.ce0 */
/* loaded from: classes2.dex */
public final class ce0 extends fe0 {

    /* renamed from: c */
    public final Map<String, String> f21500c;

    /* renamed from: d */
    public final Context f21501d;

    public ce0(cs0 cs0Var, Map<String, String> map) {
        super(cs0Var, "storePicture");
        this.f21500c = map;
        this.f21501d = cs0Var.mo5078h();
    }

    /* renamed from: i */
    public final void m12483i() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (this.f21501d == null) {
            m11557b("Activity context is not available");
            return;
        }
        C7601t.m939d();
        if (!new C5596az(this.f21501d).m12916a()) {
            m11557b("Feature is not supported by the device.");
            return;
        }
        String str7 = this.f21500c.get("iurl");
        if (TextUtils.isEmpty(str7)) {
            m11557b("Image url cannot be empty.");
        } else if (!URLUtil.isValidUrl(str7)) {
            String valueOf = String.valueOf(str7);
            if (valueOf.length() != 0) {
                str6 = "Invalid image url: ".concat(valueOf);
            } else {
                str6 = new String("Invalid image url: ");
            }
            m11557b(str6);
        } else {
            String lastPathSegment = Uri.parse(str7).getLastPathSegment();
            C7601t.m939d();
            if (!TextUtils.isEmpty(lastPathSegment) && lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
                Resources m9057j = C7601t.m935h().m9057j();
                C7601t.m939d();
                AlertDialog.Builder builder = new AlertDialog.Builder(this.f21501d);
                if (m9057j != null) {
                    str2 = m9057j.getString(C7239a.f36630h);
                } else {
                    str2 = "Save image";
                }
                builder.setTitle(str2);
                if (m9057j != null) {
                    str3 = m9057j.getString(C7239a.f36631i);
                } else {
                    str3 = "Allow Ad to store image in Picture gallery?";
                }
                builder.setMessage(str3);
                if (m9057j != null) {
                    str4 = m9057j.getString(C7239a.f36632j);
                } else {
                    str4 = HttpRequestHeader.Accept;
                }
                builder.setPositiveButton(str4, new ae0(this, str7, lastPathSegment));
                if (m9057j != null) {
                    str5 = m9057j.getString(C7239a.f36633k);
                } else {
                    str5 = "Decline";
                }
                builder.setNegativeButton(str5, new be0(this));
                builder.create().show();
                return;
            }
            String valueOf2 = String.valueOf(lastPathSegment);
            if (valueOf2.length() != 0) {
                str = "Image type not recognized: ".concat(valueOf2);
            } else {
                str = new String("Image type not recognized: ");
            }
            m11557b(str);
        }
    }
}
