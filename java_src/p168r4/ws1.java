package p168r4;

import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import p026c4.InterfaceC1045f;
/* renamed from: r4.ws1 */
/* loaded from: classes2.dex */
public final class ws1 {

    /* renamed from: a */
    public final InterfaceC1045f f33311a;

    public ws1(InterfaceC1045f interfaceC1045f) {
        this.f33311a = interfaceC1045f;
    }

    /* renamed from: a */
    public final void m5600a(List<Object> list, String str, String str2, Object... objArr) {
        String str3;
        String str4;
        if (!i10.f24923a.m6673e().booleanValue()) {
            return;
        }
        long mo24763a = this.f33311a.mo24763a();
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(mo24763a);
            jsonWriter.name("source").value(str);
            jsonWriter.name("event").value(str2);
            jsonWriter.name("components").beginArray();
            for (Object obj : list) {
                jsonWriter.value(obj.toString());
            }
            jsonWriter.endArray();
            jsonWriter.name("params").beginArray();
            for (Object obj2 : objArr) {
                if (obj2 != null) {
                    str4 = obj2.toString();
                } else {
                    str4 = null;
                }
                jsonWriter.value(str4);
            }
            jsonWriter.endArray();
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            cm0.m12439d("unable to log", e);
        }
        String valueOf = String.valueOf(stringWriter.toString());
        if (valueOf.length() != 0) {
            str3 = "AD-DBG ".concat(valueOf);
        } else {
            str3 = new String("AD-DBG ");
        }
        cm0.m12438e(str3);
    }
}
