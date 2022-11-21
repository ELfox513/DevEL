package p053e6;

import org.json.JSONObject;
import p062f6.C3524e;
import p222x5.InterfaceC7378q;
/* renamed from: e6.f */
/* loaded from: classes2.dex */
public class C3386f {

    /* renamed from: a */
    public final InterfaceC7378q f15767a;

    /* renamed from: a */
    public static InterfaceC3387g m19011a(int i) {
        if (i != 3) {
            return new C3381b();
        }
        return new C3388h();
    }

    /* renamed from: b */
    public C3524e m19010b(JSONObject jSONObject) {
        return m19011a(jSONObject.getInt("settings_version")).mo19009a(this.f15767a, jSONObject);
    }

    public C3386f(InterfaceC7378q interfaceC7378q) {
        this.f15767a = interfaceC7378q;
    }
}
