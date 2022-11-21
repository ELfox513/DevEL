package p229y4;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: y4.l */
/* loaded from: classes2.dex */
public final class C7457l implements InterfaceC7477r1 {

    /* renamed from: a */
    public final Application f37219a;

    /* renamed from: b */
    public final C7463n f37220b;

    /* renamed from: c */
    public final Executor f37221c;

    public C7457l(Application application, C7463n c7463n, Executor executor) {
        this.f37219a = application;
        this.f37220b = c7463n;
        this.f37221c = executor;
    }

    @Override // p229y4.InterfaceC7477r1
    public final Executor zza() {
        return this.f37221c;
    }

    @Override // p229y4.InterfaceC7477r1
    /* renamed from: a */
    public final boolean mo1399a(String str, JSONObject jSONObject) {
        char c;
        String str2;
        String str3;
        int hashCode = str.hashCode();
        if (hashCode != 94746189) {
            if (hashCode == 113399775 && str.equals("write")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals("clear")) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                return false;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("keys");
            if (optJSONArray != null && optJSONArray.length() != 0) {
                HashSet hashSet = new HashSet();
                int length = optJSONArray.length();
                for (int i = 0; i < length; i++) {
                    String optString = optJSONArray.optString(i);
                    if (TextUtils.isEmpty(optString)) {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append("Action[clear]: empty key at index: ");
                        sb.append(i);
                        Log.d("UserMessagingPlatform", sb.toString());
                    } else {
                        hashSet.add(optString);
                    }
                }
                C7427d1.m1452b(this.f37219a, hashSet);
            } else {
                String valueOf = String.valueOf(jSONObject.toString());
                if (valueOf.length() != 0) {
                    str3 = "Action[clear]: wrong args.".concat(valueOf);
                } else {
                    str3 = new String("Action[clear]: wrong args.");
                }
                Log.d("UserMessagingPlatform", str3);
            }
            return true;
        }
        C7419b1 c7419b1 = new C7419b1(this.f37219a);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            String valueOf2 = String.valueOf(opt);
            StringBuilder sb2 = new StringBuilder(String.valueOf(next).length() + 23 + valueOf2.length());
            sb2.append("Writing to storage: [");
            sb2.append(next);
            sb2.append("] ");
            sb2.append(valueOf2);
            Log.d("UserMessagingPlatform", sb2.toString());
            if (c7419b1.m1460c(next, opt)) {
                this.f37220b.m1413c().add(next);
            } else {
                String valueOf3 = String.valueOf(next);
                if (valueOf3.length() != 0) {
                    str2 = "Failed writing key: ".concat(valueOf3);
                } else {
                    str2 = new String("Failed writing key: ");
                }
                Log.d("UserMessagingPlatform", str2);
            }
        }
        this.f37220b.m1412d();
        c7419b1.m1461b();
        return true;
    }
}
