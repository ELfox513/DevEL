package p168r4;

import java.util.Comparator;
import java.util.List;
import p184t2.C6723t;
/* renamed from: r4.wt */
/* loaded from: classes2.dex */
public final /* synthetic */ class C6404wt implements Comparator {

    /* renamed from: a */
    public static final Comparator f33317a = new C6404wt();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        List<String> list = C6723t.f35364e;
        return list.indexOf((String) obj) - list.indexOf((String) obj2);
    }
}
