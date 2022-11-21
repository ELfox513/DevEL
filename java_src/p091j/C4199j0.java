package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import p021c.C1017j;
import p056f0.InterfaceC3424b;
import p190u.C6820h;
/* renamed from: j.j0 */
/* loaded from: classes.dex */
public class C4199j0 {

    /* renamed from: a */
    public final TextView f17913a;

    /* renamed from: b */
    public C4229r1 f17914b;

    /* renamed from: c */
    public C4229r1 f17915c;

    /* renamed from: d */
    public C4229r1 f17916d;

    /* renamed from: e */
    public C4229r1 f17917e;

    /* renamed from: f */
    public C4229r1 f17918f;

    /* renamed from: g */
    public C4229r1 f17919g;

    /* renamed from: h */
    public C4229r1 f17920h;

    /* renamed from: i */
    public final C4216o0 f17921i;

    /* renamed from: j */
    public int f17922j = 0;

    /* renamed from: k */
    public int f17923k = -1;

    /* renamed from: l */
    public Typeface f17924l;

    /* renamed from: m */
    public boolean f17925m;

    /* renamed from: j.j0$a */
    /* loaded from: classes.dex */
    public class C4200a extends C6820h.AbstractC6823c {

        /* renamed from: a */
        public final /* synthetic */ int f17926a;

        /* renamed from: b */
        public final /* synthetic */ int f17927b;

        /* renamed from: c */
        public final /* synthetic */ WeakReference f17928c;

        public C4200a(int i, int i2, WeakReference weakReference) {
            this.f17926a = i;
            this.f17927b = i2;
            this.f17928c = weakReference;
        }

        @Override // p190u.C6820h.AbstractC6823c
        /* renamed from: d */
        public void mo3304d(int i) {
        }

        @Override // p190u.C6820h.AbstractC6823c
        /* renamed from: e */
        public void mo3303e(Typeface typeface) {
            int i;
            boolean z;
            if (Build.VERSION.SDK_INT >= 28 && (i = this.f17926a) != -1) {
                if ((this.f17927b & 2) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                typeface = Typeface.create(typeface, i, z);
            }
            C4199j0.this.m17122n(this.f17928c, typeface);
        }
    }

    /* renamed from: A */
    public final void m17137A(int i, float f) {
        this.f17921i.m17040v(i, f);
    }

    /* renamed from: a */
    public final void m17135a(Drawable drawable, C4229r1 c4229r1) {
        if (drawable == null || c4229r1 == null) {
            return;
        }
        C4188i.m17179i(drawable, c4229r1, this.f17913a.getDrawableState());
    }

    /* renamed from: c */
    public void m17133c() {
        this.f17921i.m17061a();
    }

    /* renamed from: e */
    public int m17131e() {
        return this.f17921i.m17054h();
    }

    /* renamed from: f */
    public int m17130f() {
        return this.f17921i.m17053i();
    }

    /* renamed from: g */
    public int m17129g() {
        return this.f17921i.m17052j();
    }

    /* renamed from: h */
    public int[] m17128h() {
        return this.f17921i.m17051k();
    }

    /* renamed from: i */
    public int m17127i() {
        return this.f17921i.m17050l();
    }

    /* renamed from: j */
    public ColorStateList m17126j() {
        C4229r1 c4229r1 = this.f17920h;
        if (c4229r1 != null) {
            return c4229r1.f18010a;
        }
        return null;
    }

    /* renamed from: k */
    public PorterDuff.Mode m17125k() {
        C4229r1 c4229r1 = this.f17920h;
        if (c4229r1 != null) {
            return c4229r1.f18011b;
        }
        return null;
    }

    /* renamed from: l */
    public boolean m17124l() {
        return this.f17921i.m17046p();
    }

    /* renamed from: p */
    public void m17120p() {
        m17134b();
    }

    /* renamed from: r */
    public void m17118r(boolean z) {
        this.f17913a.setAllCaps(z);
    }

    /* renamed from: s */
    public void m17117s(int i, int i2, int i3, int i4) {
        this.f17921i.m17044r(i, i2, i3, i4);
    }

    /* renamed from: t */
    public void m17116t(int[] iArr, int i) {
        this.f17921i.m17043s(iArr, i);
    }

    /* renamed from: u */
    public void m17115u(int i) {
        this.f17921i.m17042t(i);
    }

    /* renamed from: B */
    public final void m17136B(Context context, C4235t1 c4235t1) {
        String m16973n;
        Typeface create;
        boolean z;
        boolean z2;
        Typeface create2;
        this.f17922j = c4235t1.m16977j(C1017j.f2738M2, this.f17922j);
        int i = Build.VERSION.SDK_INT;
        boolean z3 = false;
        if (i >= 28) {
            int m16977j = c4235t1.m16977j(C1017j.f2758R2, -1);
            this.f17923k = m16977j;
            if (m16977j != -1) {
                this.f17922j = (this.f17922j & 2) | 0;
            }
        }
        int i2 = C1017j.f2754Q2;
        if (!c4235t1.m16969r(i2) && !c4235t1.m16969r(C1017j.f2762S2)) {
            int i3 = C1017j.f2734L2;
            if (c4235t1.m16969r(i3)) {
                this.f17925m = false;
                int m16977j2 = c4235t1.m16977j(i3, 1);
                if (m16977j2 != 1) {
                    if (m16977j2 != 2) {
                        if (m16977j2 == 3) {
                            this.f17924l = Typeface.MONOSPACE;
                            return;
                        }
                        return;
                    }
                    this.f17924l = Typeface.SERIF;
                    return;
                }
                this.f17924l = Typeface.SANS_SERIF;
                return;
            }
            return;
        }
        this.f17924l = null;
        int i4 = C1017j.f2762S2;
        if (c4235t1.m16969r(i4)) {
            i2 = i4;
        }
        int i5 = this.f17923k;
        int i6 = this.f17922j;
        if (!context.isRestricted()) {
            try {
                Typeface m16978i = c4235t1.m16978i(i2, this.f17922j, new C4200a(i5, i6, new WeakReference(this.f17913a)));
                if (m16978i != null) {
                    if (i >= 28 && this.f17923k != -1) {
                        Typeface create3 = Typeface.create(m16978i, 0);
                        int i7 = this.f17923k;
                        if ((this.f17922j & 2) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        create2 = Typeface.create(create3, i7, z2);
                        this.f17924l = create2;
                    } else {
                        this.f17924l = m16978i;
                    }
                }
                if (this.f17924l == null) {
                    z = true;
                } else {
                    z = false;
                }
                this.f17925m = z;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f17924l == null && (m16973n = c4235t1.m16973n(i2)) != null) {
            if (Build.VERSION.SDK_INT >= 28 && this.f17923k != -1) {
                Typeface create4 = Typeface.create(m16973n, 0);
                int i8 = this.f17923k;
                if ((this.f17922j & 2) != 0) {
                    z3 = true;
                }
                create = Typeface.create(create4, i8, z3);
                this.f17924l = create;
                return;
            }
            this.f17924l = Typeface.create(m16973n, this.f17922j);
        }
    }

    /* renamed from: b */
    public void m17134b() {
        Drawable[] compoundDrawablesRelative;
        if (this.f17914b != null || this.f17915c != null || this.f17916d != null || this.f17917e != null) {
            Drawable[] compoundDrawables = this.f17913a.getCompoundDrawables();
            m17135a(compoundDrawables[0], this.f17914b);
            m17135a(compoundDrawables[1], this.f17915c);
            m17135a(compoundDrawables[2], this.f17916d);
            m17135a(compoundDrawables[3], this.f17917e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f17918f != null || this.f17919g != null) {
                compoundDrawablesRelative = this.f17913a.getCompoundDrawablesRelative();
                m17135a(compoundDrawablesRelative[0], this.f17918f);
                m17135a(compoundDrawablesRelative[2], this.f17919g);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:163:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c5 A[ADDED_TO_REGION] */
    @android.annotation.SuppressLint({"NewApi"})
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m17123m(android.util.AttributeSet r24, int r25) {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p091j.C4199j0.m17123m(android.util.AttributeSet, int):void");
    }

    /* renamed from: n */
    public void m17122n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f17925m) {
            this.f17924l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.f17922j);
            }
        }
    }

    /* renamed from: o */
    public void m17121o(boolean z, int i, int i2, int i3, int i4) {
        if (!InterfaceC3424b.f15874m) {
            m17133c();
        }
    }

    /* renamed from: q */
    public void m17119q(Context context, int i) {
        String m16973n;
        ColorStateList m16984c;
        C4235t1 m16968s = C4235t1.m16968s(context, i, C1017j.f2724J2);
        int i2 = C1017j.f2770U2;
        if (m16968s.m16969r(i2)) {
            m17118r(m16968s.m16986a(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            int i4 = C1017j.f2742N2;
            if (m16968s.m16969r(i4) && (m16984c = m16968s.m16984c(i4)) != null) {
                this.f17913a.setTextColor(m16984c);
            }
        }
        int i5 = C1017j.f2729K2;
        if (m16968s.m16969r(i5) && m16968s.m16982e(i5, -1) == 0) {
            this.f17913a.setTextSize(0, 0.0f);
        }
        m17136B(context, m16968s);
        if (i3 >= 26) {
            int i6 = C1017j.f2766T2;
            if (m16968s.m16969r(i6) && (m16973n = m16968s.m16973n(i6)) != null) {
                this.f17913a.setFontVariationSettings(m16973n);
            }
        }
        m16968s.m16965v();
        Typeface typeface = this.f17924l;
        if (typeface != null) {
            this.f17913a.setTypeface(typeface, this.f17922j);
        }
    }

    /* renamed from: v */
    public void m17114v(ColorStateList colorStateList) {
        boolean z;
        if (this.f17920h == null) {
            this.f17920h = new C4229r1();
        }
        C4229r1 c4229r1 = this.f17920h;
        c4229r1.f18010a = colorStateList;
        if (colorStateList != null) {
            z = true;
        } else {
            z = false;
        }
        c4229r1.f18013d = z;
        m17111y();
    }

    /* renamed from: w */
    public void m17113w(PorterDuff.Mode mode) {
        boolean z;
        if (this.f17920h == null) {
            this.f17920h = new C4229r1();
        }
        C4229r1 c4229r1 = this.f17920h;
        c4229r1.f18011b = mode;
        if (mode != null) {
            z = true;
        } else {
            z = false;
        }
        c4229r1.f18012c = z;
        m17111y();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0038, code lost:
        r11 = r6.f17913a.getCompoundDrawablesRelative();
     */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17112x(android.graphics.drawable.Drawable r7, android.graphics.drawable.Drawable r8, android.graphics.drawable.Drawable r9, android.graphics.drawable.Drawable r10, android.graphics.drawable.Drawable r11, android.graphics.drawable.Drawable r12) {
        /*
            r6 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 17
            r2 = 3
            r3 = 1
            r4 = 0
            r5 = 2
            if (r0 < r1) goto L2e
            if (r11 != 0) goto Le
            if (r12 == 0) goto L2e
        Le:
            android.widget.TextView r7 = r6.f17913a
            android.graphics.drawable.Drawable[] r7 = p091j.C4268z.m16886a(r7)
            android.widget.TextView r9 = r6.f17913a
            if (r11 == 0) goto L19
            goto L1b
        L19:
            r11 = r7[r4]
        L1b:
            if (r8 == 0) goto L1e
            goto L20
        L1e:
            r8 = r7[r3]
        L20:
            if (r12 == 0) goto L23
            goto L25
        L23:
            r12 = r7[r5]
        L25:
            if (r10 == 0) goto L28
            goto L2a
        L28:
            r10 = r7[r2]
        L2a:
            p091j.C4185h0.m17195a(r9, r11, r8, r12, r10)
            goto L77
        L2e:
            if (r7 != 0) goto L36
            if (r8 != 0) goto L36
            if (r9 != 0) goto L36
            if (r10 == 0) goto L77
        L36:
            if (r0 < r1) goto L58
            android.widget.TextView r11 = r6.f17913a
            android.graphics.drawable.Drawable[] r11 = p091j.C4268z.m16886a(r11)
            r12 = r11[r4]
            if (r12 != 0) goto L46
            r0 = r11[r5]
            if (r0 == 0) goto L58
        L46:
            android.widget.TextView r7 = r6.f17913a
            if (r8 == 0) goto L4b
            goto L4d
        L4b:
            r8 = r11[r3]
        L4d:
            r9 = r11[r5]
            if (r10 == 0) goto L52
            goto L54
        L52:
            r10 = r11[r2]
        L54:
            p091j.C4185h0.m17195a(r7, r12, r8, r9, r10)
            return
        L58:
            android.widget.TextView r11 = r6.f17913a
            android.graphics.drawable.Drawable[] r11 = r11.getCompoundDrawables()
            android.widget.TextView r12 = r6.f17913a
            if (r7 == 0) goto L63
            goto L65
        L63:
            r7 = r11[r4]
        L65:
            if (r8 == 0) goto L68
            goto L6a
        L68:
            r8 = r11[r3]
        L6a:
            if (r9 == 0) goto L6d
            goto L6f
        L6d:
            r9 = r11[r5]
        L6f:
            if (r10 == 0) goto L72
            goto L74
        L72:
            r10 = r11[r2]
        L74:
            r12.setCompoundDrawablesWithIntrinsicBounds(r7, r8, r9, r10)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p091j.C4199j0.m17112x(android.graphics.drawable.Drawable, android.graphics.drawable.Drawable, android.graphics.drawable.Drawable, android.graphics.drawable.Drawable, android.graphics.drawable.Drawable, android.graphics.drawable.Drawable):void");
    }

    /* renamed from: y */
    public final void m17111y() {
        C4229r1 c4229r1 = this.f17920h;
        this.f17914b = c4229r1;
        this.f17915c = c4229r1;
        this.f17916d = c4229r1;
        this.f17917e = c4229r1;
        this.f17918f = c4229r1;
        this.f17919g = c4229r1;
    }

    /* renamed from: z */
    public void m17110z(int i, float f) {
        if (!InterfaceC3424b.f15874m && !m17124l()) {
            m17137A(i, f);
        }
    }

    public C4199j0(TextView textView) {
        this.f17913a = textView;
        this.f17921i = new C4216o0(textView);
    }

    /* renamed from: d */
    public static C4229r1 m17132d(Context context, C4188i c4188i, int i) {
        ColorStateList m17182f = c4188i.m17182f(context, i);
        if (m17182f != null) {
            C4229r1 c4229r1 = new C4229r1();
            c4229r1.f18013d = true;
            c4229r1.f18010a = m17182f;
            return c4229r1;
        }
        return null;
    }
}
