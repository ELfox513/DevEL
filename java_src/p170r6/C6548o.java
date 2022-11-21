package p170r6;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p188t6.AbstractC6804d;
import p206v6.C7078b;
import p206v6.InterfaceC7077a;
/* renamed from: r6.o */
/* loaded from: classes2.dex */
public final class C6548o {

    /* renamed from: b */
    public static final long f34856b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c */
    public static final Pattern f34857c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d */
    public static C6548o f34858d;

    /* renamed from: a */
    public final InterfaceC7077a f34859a;

    /* renamed from: c */
    public static C6548o m3945c() {
        return m3944d(C7078b.m2566b());
    }

    /* renamed from: g */
    public static boolean m3941g(String str) {
        return f34857c.matcher(str).matches();
    }

    /* renamed from: h */
    public static boolean m3940h(String str) {
        return str.contains(":");
    }

    /* renamed from: a */
    public long m3947a() {
        return this.f34859a.mo2567a();
    }

    /* renamed from: b */
    public long m3946b() {
        return TimeUnit.MILLISECONDS.toSeconds(m3947a());
    }

    /* renamed from: e */
    public long m3943e() {
        return (long) (Math.random() * 1000.0d);
    }

    /* renamed from: d */
    public static C6548o m3944d(InterfaceC7077a interfaceC7077a) {
        if (f34858d == null) {
            f34858d = new C6548o(interfaceC7077a);
        }
        return f34858d;
    }

    public C6548o(InterfaceC7077a interfaceC7077a) {
        this.f34859a = interfaceC7077a;
    }

    /* renamed from: f */
    public boolean m3942f(AbstractC6804d abstractC6804d) {
        if (TextUtils.isEmpty(abstractC6804d.mo3405b()) || abstractC6804d.mo3399h() + abstractC6804d.mo3404c() < m3946b() + f34856b) {
            return true;
        }
        return false;
    }
}
