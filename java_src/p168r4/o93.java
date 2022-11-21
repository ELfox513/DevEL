package p168r4;

import java.util.Collections;
import java.util.Map;
import p168r4.ao3;
/* renamed from: r4.o93 */
/* loaded from: classes2.dex */
public abstract class o93<KeyFormatProtoT extends ao3, KeyT> {

    /* renamed from: a */
    public final Class<KeyFormatProtoT> f28937a;

    public o93(Class<KeyFormatProtoT> cls) {
        this.f28937a = cls;
    }

    /* renamed from: a */
    public final Class<KeyFormatProtoT> m8856a() {
        return this.f28937a;
    }

    /* renamed from: b */
    public abstract void mo5374b(KeyFormatProtoT keyformatprotot);

    /* renamed from: c */
    public abstract KeyFormatProtoT mo5373c(ll3 ll3Var);

    /* renamed from: d */
    public abstract KeyT mo5372d(KeyFormatProtoT keyformatprotot);

    /* renamed from: e */
    public Map<String, n93<KeyFormatProtoT>> mo5371e() {
        return Collections.emptyMap();
    }
}
