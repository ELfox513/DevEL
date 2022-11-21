package p232z;

import android.p010os.LocaleList;
import java.util.Locale;
/* renamed from: z.g */
/* loaded from: classes.dex */
public final class C7526g implements InterfaceC7525f {

    /* renamed from: a */
    public final LocaleList f37388a;

    @Override // p232z.InterfaceC7525f
    /* renamed from: a */
    public Object mo1299a() {
        return this.f37388a;
    }

    public boolean equals(Object obj) {
        return this.f37388a.equals(((InterfaceC7525f) obj).mo1299a());
    }

    @Override // p232z.InterfaceC7525f
    public Locale get(int i) {
        return this.f37388a.get(i);
    }

    public int hashCode() {
        return this.f37388a.hashCode();
    }

    public String toString() {
        return this.f37388a.toString();
    }

    public C7526g(LocaleList localeList) {
        this.f37388a = localeList;
    }
}
