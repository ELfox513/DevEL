package p209w0;

import androidx.work.C0380b;
import java.util.List;
/* renamed from: w0.h */
/* loaded from: classes.dex */
public abstract class AbstractC7111h {

    /* renamed from: a */
    public static final String f36121a = AbstractC7114j.m2489f("InputMerger");

    /* renamed from: b */
    public abstract C0380b mo2495b(List<C0380b> list);

    /* renamed from: a */
    public static AbstractC7111h m2496a(String str) {
        try {
            return (AbstractC7111h) Class.forName(str).newInstance();
        } catch (Exception e) {
            AbstractC7114j m2491c = AbstractC7114j.m2491c();
            String str2 = f36121a;
            m2491c.mo2487b(str2, "Trouble instantiating + " + str, e);
            return null;
        }
    }
}
