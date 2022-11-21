package p168r4;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.badlogic.gdx.net.HttpRequestHeader;
import java.util.Map;
import p219x2.C7239a;
import p235z2.C7601t;
/* renamed from: r4.xd0 */
/* loaded from: classes2.dex */
public final class xd0 extends fe0 {

    /* renamed from: c */
    public final Map<String, String> f33558c;

    /* renamed from: d */
    public final Context f33559d;

    /* renamed from: e */
    public final String f33560e;

    /* renamed from: f */
    public final long f33561f;

    /* renamed from: g */
    public final long f33562g;

    /* renamed from: h */
    public final String f33563h;

    /* renamed from: i */
    public final String f33564i;

    /* renamed from: k */
    public final String m5365k(String str) {
        return TextUtils.isEmpty(this.f33558c.get(str)) ? "" : this.f33558c.get(str);
    }

    public xd0(cs0 cs0Var, Map<String, String> map) {
        super(cs0Var, "createCalendarEvent");
        this.f33558c = map;
        this.f33559d = cs0Var.mo5078h();
        this.f33560e = m5365k("description");
        this.f33563h = m5365k("summary");
        this.f33561f = m5364l("start_ticks");
        this.f33562g = m5364l("end_ticks");
        this.f33564i = m5365k("location");
    }

    /* renamed from: i */
    public final void m5367i() {
        String str;
        String str2;
        String str3;
        String str4;
        if (this.f33559d == null) {
            m11557b("Activity context is not available.");
            return;
        }
        C7601t.m939d();
        if (!new C5596az(this.f33559d).m12915b()) {
            m11557b("This feature is not available on the device.");
            return;
        }
        C7601t.m939d();
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f33559d);
        Resources m9057j = C7601t.m935h().m9057j();
        if (m9057j != null) {
            str = m9057j.getString(C7239a.f36634l);
        } else {
            str = "Create calendar event";
        }
        builder.setTitle(str);
        if (m9057j != null) {
            str2 = m9057j.getString(C7239a.f36635m);
        } else {
            str2 = "Allow Ad to create a calendar event?";
        }
        builder.setMessage(str2);
        if (m9057j != null) {
            str3 = m9057j.getString(C7239a.f36632j);
        } else {
            str3 = HttpRequestHeader.Accept;
        }
        builder.setPositiveButton(str3, new vd0(this));
        if (m9057j != null) {
            str4 = m9057j.getString(C7239a.f36633k);
        } else {
            str4 = "Decline";
        }
        builder.setNegativeButton(str4, new wd0(this));
        builder.create().show();
    }

    @TargetApi(14)
    /* renamed from: j */
    public final Intent m5366j() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.f33560e);
        data.putExtra("eventLocation", this.f33564i);
        data.putExtra("description", this.f33563h);
        long j = this.f33561f;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.f33562g;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }

    /* renamed from: l */
    public final long m5364l(String str) {
        String str2 = this.f33558c.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }
}
