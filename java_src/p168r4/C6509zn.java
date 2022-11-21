package p168r4;

import java.util.Comparator;
/* renamed from: r4.zn */
/* loaded from: classes2.dex */
public final class C6509zn implements Comparator<C6102on> {
    public C6509zn(C5585ao c5585ao) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(C6102on c6102on, C6102on c6102on2) {
        C6102on c6102on3 = c6102on;
        C6102on c6102on4 = c6102on2;
        if (c6102on3.m8756b() >= c6102on4.m8756b()) {
            if (c6102on3.m8756b() > c6102on4.m8756b()) {
                return 1;
            }
            if (c6102on3.m8757a() >= c6102on4.m8757a()) {
                if (c6102on3.m8757a() > c6102on4.m8757a()) {
                    return 1;
                }
                float m8754d = (c6102on3.m8754d() - c6102on3.m8756b()) * (c6102on3.m8755c() - c6102on3.m8757a());
                float m8754d2 = (c6102on4.m8754d() - c6102on4.m8756b()) * (c6102on4.m8755c() - c6102on4.m8757a());
                if (m8754d <= m8754d2) {
                    if (m8754d < m8754d2) {
                        return 1;
                    }
                    return 0;
                }
            }
        }
        return -1;
    }
}
