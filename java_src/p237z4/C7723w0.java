package p237z4;

import java.util.Map;
/* renamed from: z4.w0 */
/* loaded from: classes2.dex */
public final class C7723w0<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    public Map.Entry<K, C7715u0> f37907a;

    public C7723w0(Map.Entry<K, C7715u0> entry) {
        this.f37907a = entry;
    }

    /* renamed from: a */
    public final C7715u0 m553a() {
        return this.f37907a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f37907a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f37907a.getValue() == null) {
            return null;
        }
        return C7715u0.m587e();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof InterfaceC7703r1) {
            return this.f37907a.getValue().m458d((InterfaceC7703r1) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
