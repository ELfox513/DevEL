package p220x3;

import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: x3.o */
/* loaded from: classes.dex */
public final class C7289o {

    /* renamed from: x3.o$a */
    /* loaded from: classes.dex */
    public static final class C7290a {

        /* renamed from: a */
        public final List<String> f36768a;

        /* renamed from: b */
        public final Object f36769b;

        public /* synthetic */ C7290a(Object obj, C7322y0 c7322y0) {
            C7297q.m1883j(obj);
            this.f36769b = obj;
            this.f36768a = new ArrayList();
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C7290a m1905a(@RecentlyNonNull String str, Object obj) {
            List<String> list = this.f36768a;
            C7297q.m1883j(str);
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(str.length() + 1 + valueOf.length());
            sb.append(str);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        @RecentlyNonNull
        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f36769b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f36768a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f36768a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static boolean m1908a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public static int m1907b(@RecentlyNonNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static C7290a m1906c(@RecentlyNonNull Object obj) {
        return new C7290a(obj, null);
    }
}
