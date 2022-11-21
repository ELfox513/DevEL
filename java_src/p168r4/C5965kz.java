package p168r4;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONObject;
/* renamed from: r4.kz */
/* loaded from: classes2.dex */
public final class C5965kz {

    /* renamed from: a */
    public final Collection<AbstractC5928jz<?>> f26990a = new ArrayList();

    /* renamed from: b */
    public final Collection<AbstractC5928jz<String>> f26991b = new ArrayList();

    /* renamed from: c */
    public final Collection<AbstractC5928jz<String>> f26992c = new ArrayList();

    /* renamed from: a */
    public final void m9832a(AbstractC5928jz abstractC5928jz) {
        this.f26990a.add(abstractC5928jz);
    }

    /* renamed from: b */
    public final void m9831b(AbstractC5928jz<String> abstractC5928jz) {
        this.f26991b.add(abstractC5928jz);
    }

    /* renamed from: c */
    public final void m9830c(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (AbstractC5928jz<?> abstractC5928jz : this.f26990a) {
            if (abstractC5928jz.m10133m() == 1) {
                abstractC5928jz.mo10144b(editor, abstractC5928jz.mo10143c(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            cm0.m12440c("Flag Json is null.");
        }
    }

    /* renamed from: d */
    public final List<String> m9829d() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC5928jz<String> abstractC5928jz : this.f26991b) {
            String str = (String) C5592av.m12935c().m8098c(abstractC5928jz);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(C6262sz.m6948a());
        return arrayList;
    }

    /* renamed from: e */
    public final List<String> m9828e() {
        List<String> m9829d = m9829d();
        for (AbstractC5928jz<String> abstractC5928jz : this.f26992c) {
            String str = (String) C5592av.m12935c().m8098c(abstractC5928jz);
            if (!TextUtils.isEmpty(str)) {
                m9829d.add(str);
            }
        }
        m9829d.addAll(C6262sz.m6947b());
        return m9829d;
    }
}
