package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: r4.bg2 */
/* loaded from: classes2.dex */
public final class bg2 implements eg2<dg2<Bundle>> {

    /* renamed from: a */
    public final i83 f21054a;

    /* renamed from: b */
    public final Context f21055b;

    public bg2(i83 i83Var, Context context) {
        this.f21054a = i83Var;
        this.f21055b = context;
    }

    @Override // p168r4.eg2
    public final h83<dg2<Bundle>> zza() {
        return this.f21054a.mo8015c(new Callable(this) { // from class: r4.zf2

            /* renamed from: a */
            public final bg2 f34581a;

            {
                this.f34581a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f34581a.m12771b();
            }
        });
    }

    /* renamed from: a */
    public static Bundle m12772a(Context context, JSONArray jSONArray) {
        int i;
        SharedPreferences sharedPreferences;
        String str;
        Bundle bundle = new Bundle();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i2);
            String optString = optJSONObject.optString("bk");
            String optString2 = optJSONObject.optString("sk");
            int optInt = optJSONObject.optInt("type", -1);
            if (optInt != 0) {
                if (optInt != 1) {
                    if (optInt != 2) {
                        i = 0;
                    } else {
                        i = 3;
                    }
                } else {
                    i = 2;
                }
            } else {
                i = 1;
            }
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i != 0) {
                String[] split = optString2.split("/");
                int length = split.length;
                Object obj = null;
                if (length <= 2 && length != 0) {
                    if (length == 1) {
                        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                        str = split[0];
                    } else {
                        sharedPreferences = context.getSharedPreferences(split[0], 0);
                        str = split[1];
                    }
                    obj = sharedPreferences.getAll().get(str);
                }
                if (obj != null) {
                    int i3 = i - 1;
                    if (i3 != 0) {
                        if (i3 != 1) {
                            if (obj instanceof Boolean) {
                                bundle.putBoolean(optString, ((Boolean) obj).booleanValue());
                            }
                        } else if (obj instanceof Integer) {
                            bundle.putInt(optString, ((Integer) obj).intValue());
                        } else if (obj instanceof Long) {
                            bundle.putLong(optString, ((Long) obj).longValue());
                        } else if (obj instanceof Float) {
                            bundle.putFloat(optString, ((Float) obj).floatValue());
                        }
                    } else if (obj instanceof String) {
                        bundle.putString(optString, (String) obj);
                    }
                }
            }
        }
        return bundle;
    }

    /* renamed from: b */
    public final /* synthetic */ dg2 m12771b() {
        String str = (String) C5592av.m12935c().m8098c(C6225rz.f31126t4);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final Bundle m12772a = m12772a(this.f21055b, new JSONArray(str));
            return new dg2(m12772a) { // from class: r4.ag2

                /* renamed from: a */
                public final Bundle f20479a;

                {
                    this.f20479a = m12772a;
                }

                @Override // p168r4.dg2
                /* renamed from: d */
                public final void mo4299d(Object obj) {
                    ((Bundle) obj).putBundle("shared_pref", this.f20479a);
                }
            };
        } catch (JSONException e) {
            cm0.m12441b("JSON parsing error", e);
            return null;
        }
    }
}
