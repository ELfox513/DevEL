package p229y4;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: y4.s1 */
/* loaded from: classes2.dex */
public final class C7480s1 {

    /* renamed from: a */
    public final Executor f37271a;

    public C7480s1(Executor executor) {
        this.f37271a = executor;
    }

    /* renamed from: a */
    public final Executor m1398a() {
        return this.f37271a;
    }

    /* renamed from: b */
    public final void m1397b(final String str, final String str2, final InterfaceC7477r1... interfaceC7477r1Arr) {
        this.f37271a.execute(new Runnable() { // from class: y4.p1
            @Override // java.lang.Runnable
            public final void run() {
                final JSONObject jSONObject;
                String str3 = str;
                String str4 = str2;
                InterfaceC7477r1[] interfaceC7477r1Arr2 = interfaceC7477r1Arr;
                if (TextUtils.isEmpty(str3)) {
                    Log.d("UserMessagingPlatform", "Error on action: empty action name");
                    return;
                }
                final String lowerCase = str3.toLowerCase();
                if (TextUtils.isEmpty(str4)) {
                    jSONObject = new JSONObject();
                } else {
                    try {
                        jSONObject = new JSONObject(str4);
                    } catch (JSONException unused) {
                        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 32 + String.valueOf(str4).length());
                        sb.append("Action[");
                        sb.append(lowerCase);
                        sb.append("]: failed to parse args: ");
                        sb.append(str4);
                        Log.d("UserMessagingPlatform", sb.toString());
                        return;
                    }
                }
                String valueOf = String.valueOf(jSONObject);
                StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase).length() + 10 + valueOf.length());
                sb2.append("Action[");
                sb2.append(lowerCase);
                sb2.append("]: ");
                sb2.append(valueOf);
                Log.d("UserMessagingPlatform", sb2.toString());
                for (final InterfaceC7477r1 interfaceC7477r1 : interfaceC7477r1Arr2) {
                    FutureTask futureTask = new FutureTask(new Callable() { // from class: y4.q1
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return Boolean.valueOf(InterfaceC7477r1.this.mo1399a(lowerCase, jSONObject));
                        }
                    });
                    interfaceC7477r1.zza().execute(futureTask);
                    try {
                    } catch (InterruptedException e) {
                        StringBuilder sb3 = new StringBuilder(String.valueOf(lowerCase).length() + 33);
                        sb3.append("Thread interrupted for Action[");
                        sb3.append(lowerCase);
                        sb3.append("]: ");
                        Log.d("UserMessagingPlatform", sb3.toString(), e);
                    } catch (ExecutionException e2) {
                        StringBuilder sb4 = new StringBuilder(String.valueOf(lowerCase).length() + 24);
                        sb4.append("Failed to run Action[");
                        sb4.append(lowerCase);
                        sb4.append("]: ");
                        Log.d("UserMessagingPlatform", sb4.toString(), e2.getCause());
                    }
                    if (((Boolean) futureTask.get()).booleanValue()) {
                        return;
                    }
                }
            }
        });
    }
}
