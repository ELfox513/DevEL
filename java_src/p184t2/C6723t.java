package p184t2;

import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: t2.t */
/* loaded from: classes.dex */
public class C6723t {
    @RecentlyNonNull

    /* renamed from: e */
    public static final List<String> f35364e = Arrays.asList("MA", "T", "PG", "G");

    /* renamed from: a */
    public final int f35365a;

    /* renamed from: b */
    public final int f35366b;

    /* renamed from: c */
    public final String f35367c;

    /* renamed from: d */
    public final List<String> f35368d;

    /* renamed from: t2.t$a */
    /* loaded from: classes.dex */
    public static class C6724a {

        /* renamed from: a */
        public int f35369a = -1;

        /* renamed from: b */
        public int f35370b = -1;

        /* renamed from: c */
        public String f35371c = null;

        /* renamed from: d */
        public final List<String> f35372d = new ArrayList();

        @RecentlyNonNull
        /* renamed from: a */
        public C6723t m3553a() {
            return new C6723t(this.f35369a, this.f35370b, this.f35371c, this.f35372d, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C6723t(int i, int i2, int i3, String str, List<String> list) {
        this.f35365a = i;
        this.f35366b = i2;
        this.f35367c = i3;
        this.f35368d = str;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public String m3557a() {
        String str = this.f35367c;
        return str == null ? "" : str;
    }

    /* renamed from: b */
    public int m3556b() {
        return this.f35365a;
    }

    /* renamed from: c */
    public int m3555c() {
        return this.f35366b;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public List<String> m3554d() {
        return new ArrayList(this.f35368d);
    }
}
