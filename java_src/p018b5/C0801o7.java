package p018b5;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Comparator;
/* renamed from: b5.o7 */
/* loaded from: classes2.dex */
public final class C0801o7 implements Comparator<AbstractC0937w7> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(AbstractC0937w7 abstractC0937w7, AbstractC0937w7 abstractC0937w72) {
        AbstractC0937w7 abstractC0937w73 = abstractC0937w7;
        AbstractC0937w7 abstractC0937w74 = abstractC0937w72;
        C0767m7 c0767m7 = new C0767m7(abstractC0937w73);
        C0767m7 c0767m72 = new C0767m7(abstractC0937w74);
        while (c0767m7.hasNext() && c0767m72.hasNext()) {
            int m25578a = C0784n7.m25578a(c0767m7.zza() & DefaultClassResolver.NAME, c0767m72.zza() & DefaultClassResolver.NAME);
            if (m25578a != 0) {
                return m25578a;
            }
        }
        return C0784n7.m25578a(abstractC0937w73.mo25037g(), abstractC0937w74.mo25037g());
    }
}
