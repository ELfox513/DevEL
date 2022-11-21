package p070g5;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p168r4.C6226s;
import p220x3.C7297q;
/* renamed from: g5.a4 */
/* loaded from: classes2.dex */
public final class C3598a4 {

    /* renamed from: a */
    public final String f16195a;

    /* renamed from: b */
    public final Bundle f16196b;

    /* renamed from: c */
    public Bundle f16197c;

    /* renamed from: d */
    public final /* synthetic */ C3670g4 f16198d;

    public C3598a4(C3670g4 c3670g4, String str, Bundle bundle) {
        this.f16198d = c3670g4;
        C7297q.m1887f("default_event_parameters");
        this.f16195a = "default_event_parameters";
        this.f16196b = new Bundle();
    }

    /* renamed from: a */
    public final Bundle m18555a() {
        char c;
        if (this.f16197c == null) {
            String string = this.f16198d.m18352j().getString(this.f16195a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            int hashCode = string3.hashCode();
                            if (hashCode != 100) {
                                if (hashCode != 108) {
                                    if (hashCode == 115 && string3.equals(C6226s.f31189J)) {
                                        c = 0;
                                    }
                                    c = 65535;
                                } else {
                                    if (string3.equals("l")) {
                                        c = 2;
                                    }
                                    c = 65535;
                                }
                            } else {
                                if (string3.equals("d")) {
                                    c = 1;
                                }
                                c = 65535;
                            }
                            if (c != 0) {
                                if (c != 1) {
                                    if (c != 2) {
                                        this.f16198d.f17008a.mo17858F().m18018m().m18041b("Unrecognized persisted bundle type. Type", string3);
                                    } else {
                                        bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                                    }
                                } else {
                                    bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                                }
                            } else {
                                bundle.putString(string2, jSONObject.getString("v"));
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            this.f16198d.f17008a.mo17858F().m18018m().m18042a("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f16197c = bundle;
                } catch (JSONException unused2) {
                    this.f16198d.f17008a.mo17858F().m18018m().m18042a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.f16197c == null) {
                this.f16197c = this.f16196b;
            }
        }
        return this.f16197c;
    }

    /* renamed from: b */
    public final void m18554b(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        SharedPreferences.Editor edit = this.f16198d.m18352j().edit();
        if (bundle.size() == 0) {
            edit.remove(this.f16195a);
        } else {
            String str = this.f16195a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", C6226s.f31189J);
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            this.f16198d.f17008a.mo17858F().m18018m().m18041b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        this.f16198d.f17008a.mo17858F().m18018m().m18041b("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f16197c = bundle;
    }
}
