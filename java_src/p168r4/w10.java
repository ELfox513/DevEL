package p168r4;

import android.graphics.Color;
import com.badlogic.gdx.net.HttpStatus;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.w10 */
/* loaded from: classes2.dex */
public final class w10 extends g20 {

    /* renamed from: t */
    public static final int f33006t;

    /* renamed from: u */
    public static final int f33007u;

    /* renamed from: v */
    public static final int f33008v;

    /* renamed from: w */
    public static final int f33009w;

    /* renamed from: a */
    public final String f33010a;

    /* renamed from: b */
    public final List<z10> f33011b = new ArrayList();

    /* renamed from: d */
    public final List<p20> f33012d = new ArrayList();

    /* renamed from: k */
    public final int f33013k;

    /* renamed from: p */
    public final int f33014p;

    /* renamed from: q */
    public final int f33015q;

    /* renamed from: r */
    public final int f33016r;

    /* renamed from: s */
    public final int f33017s;

    @Override // p168r4.h20
    /* renamed from: a */
    public final String mo5944a() {
        return this.f33010a;
    }

    @Override // p168r4.h20
    /* renamed from: b */
    public final List<p20> mo5943b() {
        return this.f33012d;
    }

    /* renamed from: c */
    public final int m5942c() {
        return this.f33013k;
    }

    /* renamed from: d */
    public final int m5941d() {
        return this.f33014p;
    }

    /* renamed from: e */
    public final List<z10> m5940e() {
        return this.f33011b;
    }

    /* renamed from: g7 */
    public final int m5939g7() {
        return this.f33015q;
    }

    /* renamed from: h7 */
    public final int m5938h7() {
        return this.f33016r;
    }

    /* renamed from: j */
    public final int m5937j() {
        return this.f33017s;
    }

    static {
        int rgb = Color.rgb(12, 174, (int) HttpStatus.SC_PARTIAL_CONTENT);
        f33006t = rgb;
        int rgb2 = Color.rgb((int) HttpStatus.SC_NO_CONTENT, (int) HttpStatus.SC_NO_CONTENT, (int) HttpStatus.SC_NO_CONTENT);
        f33007u = rgb2;
        f33008v = rgb2;
        f33009w = rgb;
    }

    public w10(String str, List<z10> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5;
        this.f33010a = str;
        for (int i6 = 0; i6 < list.size(); i6++) {
            z10 z10Var = list.get(i6);
            this.f33011b.add(z10Var);
            this.f33012d.add(z10Var);
        }
        if (num != null) {
            i3 = num.intValue();
        } else {
            i3 = f33008v;
        }
        this.f33013k = i3;
        if (num2 != null) {
            i4 = num2.intValue();
        } else {
            i4 = f33009w;
        }
        this.f33014p = i4;
        if (num3 != null) {
            i5 = num3.intValue();
        } else {
            i5 = 12;
        }
        this.f33015q = i5;
        this.f33016r = i;
        this.f33017s = i2;
    }
}
