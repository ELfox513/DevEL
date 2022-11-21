package p073h;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0166g;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import net.bytebuddy.jar.asm.Opcodes;
import org.xmlpull.v1.XmlPullParserException;
import p021c.C1017j;
import p038d0.AbstractC3155b;
import p038d0.C3206p;
import p082i.MenuItemC4071c;
import p091j.C4235t1;
import p091j.C4237u0;
import p216x.InterfaceMenuC7187a;
/* renamed from: h.g */
/* loaded from: classes.dex */
public class C3918g extends MenuInflater {

    /* renamed from: e */
    public static final Class<?>[] f17173e;

    /* renamed from: f */
    public static final Class<?>[] f17174f;

    /* renamed from: a */
    public final Object[] f17175a;

    /* renamed from: b */
    public final Object[] f17176b;

    /* renamed from: c */
    public Context f17177c;

    /* renamed from: d */
    public Object f17178d;

    /* renamed from: h.g$a */
    /* loaded from: classes.dex */
    public static class MenuItem$OnMenuItemClickListenerC3919a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c */
        public static final Class<?>[] f17179c = {MenuItem.class};

        /* renamed from: a */
        public Object f17180a;

        /* renamed from: b */
        public Method f17181b;

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f17181b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f17181b.invoke(this.f17180a, menuItem)).booleanValue();
                }
                this.f17181b.invoke(this.f17180a, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public MenuItem$OnMenuItemClickListenerC3919a(Object obj, String str) {
            this.f17180a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f17181b = cls.getMethod(str, f17179c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }
    }

    /* renamed from: h.g$b */
    /* loaded from: classes.dex */
    public class C3920b {

        /* renamed from: A */
        public AbstractC3155b f17182A;

        /* renamed from: B */
        public CharSequence f17183B;

        /* renamed from: C */
        public CharSequence f17184C;

        /* renamed from: D */
        public ColorStateList f17185D = null;

        /* renamed from: E */
        public PorterDuff.Mode f17186E = null;

        /* renamed from: a */
        public Menu f17188a;

        /* renamed from: b */
        public int f17189b;

        /* renamed from: c */
        public int f17190c;

        /* renamed from: d */
        public int f17191d;

        /* renamed from: e */
        public int f17192e;

        /* renamed from: f */
        public boolean f17193f;

        /* renamed from: g */
        public boolean f17194g;

        /* renamed from: h */
        public boolean f17195h;

        /* renamed from: i */
        public int f17196i;

        /* renamed from: j */
        public int f17197j;

        /* renamed from: k */
        public CharSequence f17198k;

        /* renamed from: l */
        public CharSequence f17199l;

        /* renamed from: m */
        public int f17200m;

        /* renamed from: n */
        public char f17201n;

        /* renamed from: o */
        public int f17202o;

        /* renamed from: p */
        public char f17203p;

        /* renamed from: q */
        public int f17204q;

        /* renamed from: r */
        public int f17205r;

        /* renamed from: s */
        public boolean f17206s;

        /* renamed from: t */
        public boolean f17207t;

        /* renamed from: u */
        public boolean f17208u;

        /* renamed from: v */
        public int f17209v;

        /* renamed from: w */
        public int f17210w;

        /* renamed from: x */
        public String f17211x;

        /* renamed from: y */
        public String f17212y;

        /* renamed from: z */
        public String f17213z;

        /* renamed from: a */
        public void m17744a() {
            this.f17195h = true;
            m17736i(this.f17188a.add(this.f17189b, this.f17196i, this.f17197j, this.f17198k));
        }

        /* renamed from: b */
        public SubMenu m17743b() {
            this.f17195h = true;
            SubMenu addSubMenu = this.f17188a.addSubMenu(this.f17189b, this.f17196i, this.f17197j, this.f17198k);
            m17736i(addSubMenu.getItem());
            return addSubMenu;
        }

        /* renamed from: c */
        public final char m17742c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        /* renamed from: d */
        public boolean m17741d() {
            return this.f17195h;
        }

        /* renamed from: e */
        public final <T> T m17740e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, C3918g.this.f17177c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* renamed from: h */
        public void m17737h() {
            this.f17189b = 0;
            this.f17190c = 0;
            this.f17191d = 0;
            this.f17192e = 0;
            this.f17193f = true;
            this.f17194g = true;
        }

        public C3920b(Menu menu) {
            this.f17188a = menu;
            m17737h();
        }

        /* renamed from: f */
        public void m17739f(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = C3918g.this.f17177c.obtainStyledAttributes(attributeSet, C1017j.f2878r1);
            this.f17189b = obtainStyledAttributes.getResourceId(C1017j.f2888t1, 0);
            this.f17190c = obtainStyledAttributes.getInt(C1017j.f2898v1, 0);
            this.f17191d = obtainStyledAttributes.getInt(C1017j.f2903w1, 0);
            this.f17192e = obtainStyledAttributes.getInt(C1017j.f2908x1, 0);
            this.f17193f = obtainStyledAttributes.getBoolean(C1017j.f2893u1, true);
            this.f17194g = obtainStyledAttributes.getBoolean(C1017j.f2883s1, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: g */
        public void m17738g(AttributeSet attributeSet) {
            boolean z;
            C4235t1 m16967t = C4235t1.m16967t(C3918g.this.f17177c, attributeSet, C1017j.f2913y1);
            this.f17196i = m16967t.m16974m(C1017j.f2683B1, 0);
            this.f17197j = (m16967t.m16977j(C1017j.f2698E1, this.f17190c) & Opcodes.V_PREVIEW) | (m16967t.m16977j(C1017j.f2703F1, this.f17191d) & MeshBuilder.MAX_INDEX);
            this.f17198k = m16967t.m16972o(C1017j.f2708G1);
            this.f17199l = m16967t.m16972o(C1017j.f2713H1);
            this.f17200m = m16967t.m16974m(C1017j.f2918z1, 0);
            this.f17201n = m17742c(m16967t.m16973n(C1017j.f2718I1));
            this.f17202o = m16967t.m16977j(C1017j.f2749P1, 4096);
            this.f17203p = m17742c(m16967t.m16973n(C1017j.f2723J1));
            this.f17204q = m16967t.m16977j(C1017j.f2765T1, 4096);
            int i = C1017j.f2728K1;
            if (m16967t.m16969r(i)) {
                this.f17205r = m16967t.m16986a(i, false) ? 1 : 0;
            } else {
                this.f17205r = this.f17192e;
            }
            this.f17206s = m16967t.m16986a(C1017j.f2688C1, false);
            this.f17207t = m16967t.m16986a(C1017j.f2693D1, this.f17193f);
            this.f17208u = m16967t.m16986a(C1017j.f2678A1, this.f17194g);
            this.f17209v = m16967t.m16977j(C1017j.f2769U1, -1);
            this.f17213z = m16967t.m16973n(C1017j.f2733L1);
            this.f17210w = m16967t.m16974m(C1017j.f2737M1, 0);
            this.f17211x = m16967t.m16973n(C1017j.f2745O1);
            String m16973n = m16967t.m16973n(C1017j.f2741N1);
            this.f17212y = m16973n;
            if (m16973n != null) {
                z = true;
            } else {
                z = false;
            }
            if (z && this.f17210w == 0 && this.f17211x == null) {
                this.f17182A = (AbstractC3155b) m17740e(m16973n, C3918g.f17174f, C3918g.this.f17176b);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.f17182A = null;
            }
            this.f17183B = m16967t.m16972o(C1017j.f2753Q1);
            this.f17184C = m16967t.m16972o(C1017j.f2773V1);
            int i2 = C1017j.f2761S1;
            if (m16967t.m16969r(i2)) {
                this.f17186E = C4237u0.m16955d(m16967t.m16977j(i2, -1), this.f17186E);
            } else {
                this.f17186E = null;
            }
            int i3 = C1017j.f2757R1;
            if (m16967t.m16969r(i3)) {
                this.f17185D = m16967t.m16984c(i3);
            } else {
                this.f17185D = null;
            }
            m16967t.m16965v();
            this.f17195h = false;
        }

        /* renamed from: i */
        public final void m17736i(MenuItem menuItem) {
            boolean z;
            MenuItem enabled = menuItem.setChecked(this.f17206s).setVisible(this.f17207t).setEnabled(this.f17208u);
            boolean z2 = false;
            if (this.f17205r >= 1) {
                z = true;
            } else {
                z = false;
            }
            enabled.setCheckable(z).setTitleCondensed(this.f17199l).setIcon(this.f17200m);
            int i = this.f17209v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.f17213z != null) {
                if (!C3918g.this.f17177c.isRestricted()) {
                    menuItem.setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC3919a(C3918g.this.m17746b(), this.f17213z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.f17205r >= 2) {
                if (menuItem instanceof C0166g) {
                    ((C0166g) menuItem).m27479t(true);
                } else if (menuItem instanceof MenuItemC4071c) {
                    ((MenuItemC4071c) menuItem).m17436h(true);
                }
            }
            String str = this.f17211x;
            if (str != null) {
                menuItem.setActionView((View) m17740e(str, C3918g.f17173e, C3918g.this.f17175a));
                z2 = true;
            }
            int i2 = this.f17210w;
            if (i2 > 0) {
                if (!z2) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            AbstractC3155b abstractC3155b = this.f17182A;
            if (abstractC3155b != null) {
                C3206p.m19410a(menuItem, abstractC3155b);
            }
            C3206p.m19408c(menuItem, this.f17183B);
            C3206p.m19404g(menuItem, this.f17184C);
            C3206p.m19409b(menuItem, this.f17201n, this.f17202o);
            C3206p.m19405f(menuItem, this.f17203p, this.f17204q);
            PorterDuff.Mode mode = this.f17186E;
            if (mode != null) {
                C3206p.m19406e(menuItem, mode);
            }
            ColorStateList colorStateList = this.f17185D;
            if (colorStateList != null) {
                C3206p.m19407d(menuItem, colorStateList);
            }
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f17173e = clsArr;
        f17174f = clsArr;
    }

    /* renamed from: a */
    public final Object m17747a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        if (obj instanceof ContextWrapper) {
            return m17747a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    /* renamed from: b */
    public Object m17746b() {
        if (this.f17178d == null) {
            this.f17178d = m17747a(this.f17177c);
        }
        return this.f17178d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        r8 = null;
        r6 = false;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r6 != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (r15 == 1) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
        if (r15 == 2) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
        if (r15 == 3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
        if (r7 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
        if (r15.equals(r8) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005b, code lost:
        r8 = null;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0062, code lost:
        if (r15.equals("group") == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
        r0.m17737h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
        if (r15.equals("item") == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
        if (r0.m17741d() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
        r15 = r0.f17182A;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
        if (r15 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
        if (r15.mo17435a() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007e, code lost:
        r0.m17743b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
        r0.m17744a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008a, code lost:
        if (r15.equals("menu") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008e, code lost:
        if (r7 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0091, code lost:
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0099, code lost:
        if (r15.equals("group") == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009b, code lost:
        r0.m17739f(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a3, code lost:
        if (r15.equals("item") == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a5, code lost:
        r0.m17738g(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ad, code lost:
        if (r15.equals("menu") == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00af, code lost:
        m17745c(r13, r14, r0.m17743b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b7, code lost:
        r8 = r15;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b9, code lost:
        r15 = r13.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c5, code lost:
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c6, code lost:
        return;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17745c(org.xmlpull.v1.XmlPullParser r13, android.util.AttributeSet r14, android.view.Menu r15) {
        /*
            r12 = this;
            h.g$b r0 = new h.g$b
            r0.<init>(r15)
            int r15 = r13.getEventType()
        L9:
            r1 = 2
            java.lang.String r2 = "menu"
            r3 = 1
            if (r15 != r1) goto L35
            java.lang.String r15 = r13.getName()
            boolean r4 = r15.equals(r2)
            if (r4 == 0) goto L1e
            int r15 = r13.next()
            goto L3b
        L1e:
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r0 = "Expecting menu, got "
            r14.append(r0)
            r14.append(r15)
            java.lang.String r14 = r14.toString()
            r13.<init>(r14)
            throw r13
        L35:
            int r15 = r13.next()
            if (r15 != r3) goto L9
        L3b:
            r4 = 0
            r5 = 0
            r8 = r4
            r6 = 0
            r7 = 0
        L40:
            if (r6 != 0) goto Lc6
            if (r15 == r3) goto Lbe
            java.lang.String r9 = "item"
            java.lang.String r10 = "group"
            if (r15 == r1) goto L8e
            r11 = 3
            if (r15 == r11) goto L4f
            goto Lb9
        L4f:
            java.lang.String r15 = r13.getName()
            if (r7 == 0) goto L5e
            boolean r11 = r15.equals(r8)
            if (r11 == 0) goto L5e
            r8 = r4
            r7 = 0
            goto Lb9
        L5e:
            boolean r10 = r15.equals(r10)
            if (r10 == 0) goto L68
            r0.m17737h()
            goto Lb9
        L68:
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto L86
            boolean r15 = r0.m17741d()
            if (r15 != 0) goto Lb9
            d0.b r15 = r0.f17182A
            if (r15 == 0) goto L82
            boolean r15 = r15.mo17435a()
            if (r15 == 0) goto L82
            r0.m17743b()
            goto Lb9
        L82:
            r0.m17744a()
            goto Lb9
        L86:
            boolean r15 = r15.equals(r2)
            if (r15 == 0) goto Lb9
            r6 = 1
            goto Lb9
        L8e:
            if (r7 == 0) goto L91
            goto Lb9
        L91:
            java.lang.String r15 = r13.getName()
            boolean r10 = r15.equals(r10)
            if (r10 == 0) goto L9f
            r0.m17739f(r14)
            goto Lb9
        L9f:
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto La9
            r0.m17738g(r14)
            goto Lb9
        La9:
            boolean r9 = r15.equals(r2)
            if (r9 == 0) goto Lb7
            android.view.SubMenu r15 = r0.m17743b()
            r12.m17745c(r13, r14, r15)
            goto Lb9
        Lb7:
            r8 = r15
            r7 = 1
        Lb9:
            int r15 = r13.next()
            goto L40
        Lbe:
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.String r14 = "Unexpected end of document"
            r13.<init>(r14)
            throw r13
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p073h.C3918g.m17745c(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof InterfaceMenuC7187a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f17177c.getResources().getLayout(i);
                    m17745c(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }

    public C3918g(Context context) {
        super(context);
        this.f17177c = context;
        Object[] objArr = {context};
        this.f17175a = objArr;
        this.f17176b = objArr;
    }
}
