package p222x5;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p080h6.C4059e;
import p080h6.InterfaceC4058d;
import p238z5.AbstractC7762a0;
import p238z5.C7806b0;
/* renamed from: x5.n */
/* loaded from: classes2.dex */
public class C7374n {

    /* renamed from: e */
    public static final Map<String, Integer> f36934e;

    /* renamed from: f */
    public static final String f36935f;

    /* renamed from: a */
    public final Context f36936a;

    /* renamed from: b */
    public final C7386v f36937b;

    /* renamed from: c */
    public final C7329a f36938c;

    /* renamed from: d */
    public final InterfaceC4058d f36939d;

    /* renamed from: c */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d m1663c(Throwable th, Thread thread, String str, long j, int i, int i2, boolean z) {
        int i3 = this.f36936a.getResources().getConfiguration().orientation;
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.m352a().mo213f(str).mo214e(j).mo217b(m1658h(i3, new C4059e(th, this.f36939d), thread, i, i2, z)).mo216c(m1656j(i3)).mo218a();
    }

    /* renamed from: d */
    public AbstractC7762a0 m1662d(String str, long j) {
        return m1665a().mo321i(m1648r(str, j)).mo329a();
    }

    /* renamed from: g */
    public final C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a> m1659g() {
        return C7806b0.m319e(m1660f());
    }

    /* renamed from: k */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c m1655k(C4059e c4059e, int i, int i2) {
        return m1654l(c4059e, i, i2, 0);
    }

    /* renamed from: v */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e m1644v(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return m1643w(thread, stackTraceElementArr, 0);
    }

    static {
        HashMap hashMap = new HashMap();
        f36934e = hashMap;
        hashMap.put("armeabi", 5);
        hashMap.put("armeabi-v7a", 6);
        hashMap.put("arm64-v8a", 9);
        hashMap.put("x86", 0);
        hashMap.put("x86_64", 1);
        f36935f = String.format(Locale.US, "Crashlytics Android SDK/%s", "18.2.3");
    }

    /* renamed from: e */
    public static int m1661e() {
        Integer num;
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str) || (num = f36934e.get(str.toLowerCase(Locale.US))) == null) {
            return 7;
        }
        return num.intValue();
    }

    /* renamed from: b */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d m1664b(AbstractC7762a0.AbstractC7763a abstractC7763a) {
        int i = this.f36936a.getResources().getConfiguration().orientation;
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.m352a().mo213f("anr").mo214e(abstractC7763a.mo312h()).mo217b(m1657i(i, abstractC7763a)).mo216c(m1656j(i)).mo218a();
    }

    /* renamed from: h */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a m1658h(int i, C4059e c4059e, Thread thread, int i2, int i3, boolean z) {
        Boolean bool;
        boolean z2;
        ActivityManager.RunningAppProcessInfo m1786j = C7341g.m1786j(this.f36938c.f36818d, this.f36936a);
        if (m1786j != null) {
            if (m1786j.importance != 100) {
                z2 = true;
            } else {
                z2 = false;
            }
            bool = Boolean.valueOf(z2);
        } else {
            bool = null;
        }
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.m351a().mo205b(bool).mo201f(i).mo203d(m1653m(c4059e, thread, i2, i3, z)).mo206a();
    }

    /* renamed from: j */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c m1656j(int i) {
        Double d;
        C7335d m1828a = C7335d.m1828a(this.f36936a);
        Float m1827b = m1828a.m1827b();
        if (m1827b != null) {
            d = Double.valueOf(m1827b.doubleValue());
        } else {
            d = null;
        }
        int m1826c = m1828a.m1826c();
        boolean m1781o = C7341g.m1781o(this.f36936a);
        long m1777s = C7341g.m1777s() - C7341g.m1795a(this.f36936a);
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.m342a().mo137b(d).mo136c(m1826c).mo133f(m1781o).mo134e(i).mo132g(m1777s).mo135d(C7341g.m1794b(Environment.getDataDirectory().getPath())).mo138a();
    }

    /* renamed from: l */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c m1654l(C4059e c4059e, int i, int i2, int i3) {
        String str = c4059e.f17586b;
        String str2 = c4059e.f17585a;
        StackTraceElement[] stackTraceElementArr = c4059e.f17587c;
        int i4 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        C4059e c4059e2 = c4059e.f17588d;
        if (i3 >= i2) {
            C4059e c4059e3 = c4059e2;
            while (c4059e3 != null) {
                c4059e3 = c4059e3.f17588d;
                i4++;
            }
        }
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a mo172d = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.m346a().mo170f(str).mo171e(str2).mo173c(C7806b0.m320d(m1650p(stackTraceElementArr, i))).mo172d(i4);
        if (c4059e2 != null && i4 == 0) {
            mo172d.mo174b(m1654l(c4059e2, i, i2, i3 + 1));
        }
        return mo172d.mo175a();
    }

    /* renamed from: p */
    public final C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b> m1650p(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(m1651o(stackTraceElement, AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.m343a().mo148c(i)));
        }
        return C7806b0.m320d(arrayList);
    }

    /* renamed from: s */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7777c m1647s() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int m1661e = m1661e();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long m1777s = C7341g.m1777s();
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        boolean m1772x = C7341g.m1772x(this.f36936a);
        int m1783m = C7341g.m1783m(this.f36936a);
        String str = Build.MANUFACTURER;
        return AbstractC7762a0.AbstractC7772e.AbstractC7777c.m353a().mo233b(m1661e).mo229f(Build.MODEL).mo232c(availableProcessors).mo227h(m1777s).mo231d(blockCount).mo226i(m1772x).mo225j(m1783m).mo230e(str).mo228g(Build.PRODUCT).mo234a();
    }

    /* renamed from: x */
    public final C7806b0<AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e> m1642x(C4059e c4059e, Thread thread, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m1643w(thread, c4059e.f17587c, i));
        if (z) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(m1644v(key, this.f36939d.mo17478a(entry.getValue())));
                }
            }
        }
        return C7806b0.m320d(arrayList);
    }

    public C7374n(Context context, C7386v c7386v, C7329a c7329a, InterfaceC4058d interfaceC4058d) {
        this.f36936a = context;
        this.f36937b = c7386v;
        this.f36938c = c7329a;
        this.f36939d = interfaceC4058d;
    }

    /* renamed from: a */
    public final AbstractC7762a0.AbstractC7765b m1665a() {
        return AbstractC7762a0.m367b().mo322h("18.2.3").mo326d(this.f36938c.f36815a).mo325e(this.f36937b.mo1602a()).mo328b(this.f36938c.f36819e).mo327c(this.f36938c.f36820f).mo323g(4);
    }

    /* renamed from: f */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a m1660f() {
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.m349a().mo184b(0L).mo182d(0L).mo183c(this.f36938c.f36818d).mo181e(this.f36938c.f36816b).mo185a();
    }

    /* renamed from: i */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a m1657i(int i, AbstractC7762a0.AbstractC7763a abstractC7763a) {
        boolean z;
        if (abstractC7763a.mo318b() != 100) {
            z = true;
        } else {
            z = false;
        }
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.m351a().mo205b(Boolean.valueOf(z)).mo201f(i).mo203d(m1652n(abstractC7763a)).mo206a();
    }

    /* renamed from: m */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b m1653m(C4059e c4059e, Thread thread, int i, int i2, boolean z) {
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.m350a().mo190f(m1642x(c4059e, thread, i, z)).mo192d(m1655k(c4059e, i, i2)).mo191e(m1645u()).mo193c(m1659g()).mo195a();
    }

    /* renamed from: n */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b m1652n(AbstractC7762a0.AbstractC7763a abstractC7763a) {
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.m350a().mo194b(abstractC7763a).mo191e(m1645u()).mo193c(m1659g()).mo195a();
    }

    /* renamed from: o */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b m1651o(StackTraceElement stackTraceElement, AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a abstractC7793a) {
        long j;
        long j2 = 0;
        if (stackTraceElement.isNativeMethod()) {
            j = Math.max(stackTraceElement.getLineNumber(), 0L);
        } else {
            j = 0;
        }
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            j2 = stackTraceElement.getLineNumber();
        }
        return abstractC7793a.mo146e(j).mo145f(str).mo149b(fileName).mo147d(j2).mo150a();
    }

    /* renamed from: q */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7773a m1649q() {
        AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a mo246f = AbstractC7762a0.AbstractC7772e.AbstractC7773a.m355a().mo247e(this.f36937b.m1610f()).mo245g(this.f36938c.f36819e).mo248d(this.f36938c.f36820f).mo246f(this.f36937b.mo1602a());
        String mo17318a = this.f36938c.f36821g.mo17318a();
        if (mo17318a != null) {
            mo246f.mo250b("Unity").mo249c(mo17318a);
        }
        return mo246f.mo251a();
    }

    /* renamed from: r */
    public final AbstractC7762a0.AbstractC7772e m1648r(String str, long j) {
        return AbstractC7762a0.AbstractC7772e.m359a().mo260l(j).mo262i(str).mo264g(f36935f).mo269b(m1649q()).mo261k(m1646t()).mo267d(m1647s()).mo263h(3).mo270a();
    }

    /* renamed from: t */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7799e m1646t() {
        return AbstractC7762a0.AbstractC7772e.AbstractC7799e.m340a().mo121d(3).mo120e(Build.VERSION.RELEASE).mo123b(Build.VERSION.CODENAME).mo122c(C7341g.m1771y(this.f36936a)).mo124a();
    }

    /* renamed from: u */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d m1645u() {
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.m345a().mo163d("0").mo164c("0").mo165b(0L).mo166a();
    }

    /* renamed from: w */
    public final AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e m1643w(Thread thread, StackTraceElement[] stackTraceElementArr, int i) {
        return AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.m344a().mo156d(thread.getName()).mo157c(i).mo158b(C7806b0.m320d(m1650p(stackTraceElementArr, i))).mo159a();
    }
}
