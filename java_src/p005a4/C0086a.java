package p005a4;

import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import java.util.Locale;
import net.bytebuddy.pool.TypePool;
import p220x3.C7270i;
/* renamed from: a4.a */
/* loaded from: classes.dex */
public class C0086a {

    /* renamed from: a */
    public final String f152a;

    /* renamed from: b */
    public final String f153b;

    /* renamed from: c */
    public final C7270i f154c;

    /* renamed from: d */
    public final int f155d;

    public C0086a(@RecentlyNonNull String str, @RecentlyNonNull String... strArr) {
        String sb;
        if (strArr.length == 0) {
            sb = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
            for (String str2 : strArr) {
                if (sb2.length() > 1) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
            sb2.append("] ");
            sb = sb2.toString();
        }
        this.f153b = sb;
        this.f152a = str;
        this.f154c = new C7270i(str);
        int i = 2;
        while (i <= 7 && !Log.isLoggable(this.f152a, i)) {
            i++;
        }
        this.f155d = i;
    }

    /* renamed from: a */
    public void m27686a(@RecentlyNonNull String str, Object... objArr) {
        if (m27683d(3)) {
            Log.d(this.f152a, m27684c(str, objArr));
        }
    }

    /* renamed from: b */
    public void m27685b(@RecentlyNonNull String str, Object... objArr) {
        Log.e(this.f152a, m27684c(str, objArr));
    }

    /* renamed from: d */
    public boolean m27683d(int i) {
        return this.f155d <= i;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public String m27684c(@RecentlyNonNull String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f153b.concat(str);
    }
}
