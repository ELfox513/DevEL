package p047e0;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.jar.asm.Opcodes;
import p047e0.InterfaceC3350m;
import p154q.C5379b;
import p232z.C7519a;
/* renamed from: e0.j */
/* loaded from: classes.dex */
public class C3346j {

    /* renamed from: d */
    public static int f15678d;

    /* renamed from: a */
    public final AccessibilityNodeInfo f15679a;

    /* renamed from: b */
    public int f15680b = -1;

    /* renamed from: c */
    public int f15681c = -1;

    /* renamed from: e0.j$a */
    /* loaded from: classes.dex */
    public static class C3347a {

        /* renamed from: A */
        public static final C3347a f15682A;

        /* renamed from: B */
        public static final C3347a f15683B;

        /* renamed from: C */
        public static final C3347a f15684C;

        /* renamed from: D */
        public static final C3347a f15685D;

        /* renamed from: E */
        public static final C3347a f15686E;

        /* renamed from: F */
        public static final C3347a f15687F;

        /* renamed from: G */
        public static final C3347a f15688G;

        /* renamed from: H */
        public static final C3347a f15689H;

        /* renamed from: I */
        public static final C3347a f15690I;

        /* renamed from: J */
        public static final C3347a f15691J;

        /* renamed from: K */
        public static final C3347a f15692K;

        /* renamed from: L */
        public static final C3347a f15693L;

        /* renamed from: M */
        public static final C3347a f15694M;

        /* renamed from: N */
        public static final C3347a f15695N;

        /* renamed from: O */
        public static final C3347a f15696O;

        /* renamed from: P */
        public static final C3347a f15697P;

        /* renamed from: Q */
        public static final C3347a f15698Q;

        /* renamed from: e */
        public static final C3347a f15699e = new C3347a(1, null);

        /* renamed from: f */
        public static final C3347a f15700f = new C3347a(2, null);

        /* renamed from: g */
        public static final C3347a f15701g = new C3347a(4, null);

        /* renamed from: h */
        public static final C3347a f15702h = new C3347a(8, null);

        /* renamed from: i */
        public static final C3347a f15703i = new C3347a(16, null);

        /* renamed from: j */
        public static final C3347a f15704j = new C3347a(32, null);

        /* renamed from: k */
        public static final C3347a f15705k = new C3347a(64, null);

        /* renamed from: l */
        public static final C3347a f15706l = new C3347a(128, null);

        /* renamed from: m */
        public static final C3347a f15707m = new C3347a(256, null, InterfaceC3350m.C3352b.class);

        /* renamed from: n */
        public static final C3347a f15708n = new C3347a(512, null, InterfaceC3350m.C3352b.class);

        /* renamed from: o */
        public static final C3347a f15709o = new C3347a(1024, null, InterfaceC3350m.C3353c.class);

        /* renamed from: p */
        public static final C3347a f15710p = new C3347a(2048, null, InterfaceC3350m.C3353c.class);

        /* renamed from: q */
        public static final C3347a f15711q = new C3347a(4096, null);

        /* renamed from: r */
        public static final C3347a f15712r = new C3347a(8192, null);

        /* renamed from: s */
        public static final C3347a f15713s = new C3347a(16384, null);

        /* renamed from: t */
        public static final C3347a f15714t = new C3347a(32768, null);

        /* renamed from: u */
        public static final C3347a f15715u = new C3347a(65536, null);

        /* renamed from: v */
        public static final C3347a f15716v = new C3347a(131072, null, InterfaceC3350m.C3357g.class);

        /* renamed from: w */
        public static final C3347a f15717w = new C3347a(262144, null);

        /* renamed from: x */
        public static final C3347a f15718x = new C3347a(Opcodes.ASM8, null);

        /* renamed from: y */
        public static final C3347a f15719y = new C3347a(1048576, null);

        /* renamed from: z */
        public static final C3347a f15720z = new C3347a(2097152, null, InterfaceC3350m.C3358h.class);

        /* renamed from: a */
        public final Object f15721a;

        /* renamed from: b */
        public final int f15722b;

        /* renamed from: c */
        public final Class<? extends InterfaceC3350m.AbstractC3351a> f15723c;

        /* renamed from: d */
        public final InterfaceC3350m f15724d;

        public C3347a(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof C3347a)) {
                C3347a c3347a = (C3347a) obj;
                Object obj2 = this.f15721a;
                return obj2 == null ? c3347a.f15721a == null : obj2.equals(c3347a.f15721a);
            }
            return false;
        }

        public int hashCode() {
            Object obj = this.f15721a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        static {
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction2;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction3;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction4;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction5;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction6;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction7;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction8;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction9;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction10;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction11;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction12;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction13;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction14;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction15;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction16;
            AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction17 = null;
            int i = Build.VERSION.SDK_INT;
            if (i >= 23) {
                accessibilityNodeInfo$AccessibilityAction = AccessibilityNodeInfo$AccessibilityAction.ACTION_SHOW_ON_SCREEN;
            } else {
                accessibilityNodeInfo$AccessibilityAction = null;
            }
            f15682A = new C3347a(accessibilityNodeInfo$AccessibilityAction, 16908342, null, null, null);
            if (i >= 23) {
                accessibilityNodeInfo$AccessibilityAction2 = AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_TO_POSITION;
            } else {
                accessibilityNodeInfo$AccessibilityAction2 = null;
            }
            f15683B = new C3347a(accessibilityNodeInfo$AccessibilityAction2, 16908343, null, null, InterfaceC3350m.C3355e.class);
            if (i >= 23) {
                accessibilityNodeInfo$AccessibilityAction3 = AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_UP;
            } else {
                accessibilityNodeInfo$AccessibilityAction3 = null;
            }
            f15684C = new C3347a(accessibilityNodeInfo$AccessibilityAction3, 16908344, null, null, null);
            if (i >= 23) {
                accessibilityNodeInfo$AccessibilityAction4 = AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_LEFT;
            } else {
                accessibilityNodeInfo$AccessibilityAction4 = null;
            }
            f15685D = new C3347a(accessibilityNodeInfo$AccessibilityAction4, 16908345, null, null, null);
            if (i >= 23) {
                accessibilityNodeInfo$AccessibilityAction5 = AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_DOWN;
            } else {
                accessibilityNodeInfo$AccessibilityAction5 = null;
            }
            f15686E = new C3347a(accessibilityNodeInfo$AccessibilityAction5, 16908346, null, null, null);
            if (i >= 23) {
                accessibilityNodeInfo$AccessibilityAction6 = AccessibilityNodeInfo$AccessibilityAction.ACTION_SCROLL_RIGHT;
            } else {
                accessibilityNodeInfo$AccessibilityAction6 = null;
            }
            f15687F = new C3347a(accessibilityNodeInfo$AccessibilityAction6, 16908347, null, null, null);
            if (i >= 29) {
                accessibilityNodeInfo$AccessibilityAction7 = AccessibilityNodeInfo$AccessibilityAction.ACTION_PAGE_UP;
            } else {
                accessibilityNodeInfo$AccessibilityAction7 = null;
            }
            f15688G = new C3347a(accessibilityNodeInfo$AccessibilityAction7, 16908358, null, null, null);
            if (i >= 29) {
                accessibilityNodeInfo$AccessibilityAction8 = AccessibilityNodeInfo$AccessibilityAction.ACTION_PAGE_DOWN;
            } else {
                accessibilityNodeInfo$AccessibilityAction8 = null;
            }
            f15689H = new C3347a(accessibilityNodeInfo$AccessibilityAction8, 16908359, null, null, null);
            if (i >= 29) {
                accessibilityNodeInfo$AccessibilityAction9 = AccessibilityNodeInfo$AccessibilityAction.ACTION_PAGE_LEFT;
            } else {
                accessibilityNodeInfo$AccessibilityAction9 = null;
            }
            f15690I = new C3347a(accessibilityNodeInfo$AccessibilityAction9, 16908360, null, null, null);
            if (i >= 29) {
                accessibilityNodeInfo$AccessibilityAction10 = AccessibilityNodeInfo$AccessibilityAction.ACTION_PAGE_RIGHT;
            } else {
                accessibilityNodeInfo$AccessibilityAction10 = null;
            }
            f15691J = new C3347a(accessibilityNodeInfo$AccessibilityAction10, 16908361, null, null, null);
            if (i >= 23) {
                accessibilityNodeInfo$AccessibilityAction11 = AccessibilityNodeInfo$AccessibilityAction.ACTION_CONTEXT_CLICK;
            } else {
                accessibilityNodeInfo$AccessibilityAction11 = null;
            }
            f15692K = new C3347a(accessibilityNodeInfo$AccessibilityAction11, 16908348, null, null, null);
            if (i >= 24) {
                accessibilityNodeInfo$AccessibilityAction12 = AccessibilityNodeInfo$AccessibilityAction.ACTION_SET_PROGRESS;
            } else {
                accessibilityNodeInfo$AccessibilityAction12 = null;
            }
            f15693L = new C3347a(accessibilityNodeInfo$AccessibilityAction12, 16908349, null, null, InterfaceC3350m.C3356f.class);
            if (i >= 26) {
                accessibilityNodeInfo$AccessibilityAction13 = AccessibilityNodeInfo$AccessibilityAction.ACTION_MOVE_WINDOW;
            } else {
                accessibilityNodeInfo$AccessibilityAction13 = null;
            }
            f15694M = new C3347a(accessibilityNodeInfo$AccessibilityAction13, 16908354, null, null, InterfaceC3350m.C3354d.class);
            if (i >= 28) {
                accessibilityNodeInfo$AccessibilityAction14 = AccessibilityNodeInfo$AccessibilityAction.ACTION_SHOW_TOOLTIP;
            } else {
                accessibilityNodeInfo$AccessibilityAction14 = null;
            }
            f15695N = new C3347a(accessibilityNodeInfo$AccessibilityAction14, 16908356, null, null, null);
            if (i >= 28) {
                accessibilityNodeInfo$AccessibilityAction15 = AccessibilityNodeInfo$AccessibilityAction.ACTION_HIDE_TOOLTIP;
            } else {
                accessibilityNodeInfo$AccessibilityAction15 = null;
            }
            f15696O = new C3347a(accessibilityNodeInfo$AccessibilityAction15, 16908357, null, null, null);
            if (i >= 30) {
                accessibilityNodeInfo$AccessibilityAction16 = AccessibilityNodeInfo$AccessibilityAction.ACTION_PRESS_AND_HOLD;
            } else {
                accessibilityNodeInfo$AccessibilityAction16 = null;
            }
            f15697P = new C3347a(accessibilityNodeInfo$AccessibilityAction16, 16908362, null, null, null);
            if (i >= 30) {
                accessibilityNodeInfo$AccessibilityAction17 = AccessibilityNodeInfo$AccessibilityAction.ACTION_IME_ENTER;
            }
            f15698Q = new C3347a(accessibilityNodeInfo$AccessibilityAction17, 16908372, null, null, null);
        }

        public C3347a(Object obj) {
            this(obj, 0, null, null, null);
        }

        /* renamed from: a */
        public int m19047a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo$AccessibilityAction) this.f15721a).getId();
            }
            return 0;
        }

        /* renamed from: b */
        public CharSequence m19046b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo$AccessibilityAction) this.f15721a).getLabel();
            }
            return null;
        }

        /* renamed from: c */
        public boolean m19045c(View view, Bundle bundle) {
            String name;
            InterfaceC3350m.AbstractC3351a newInstance;
            if (this.f15724d == null) {
                return false;
            }
            InterfaceC3350m.AbstractC3351a abstractC3351a = null;
            Class<? extends InterfaceC3350m.AbstractC3351a> cls = this.f15723c;
            if (cls != null) {
                try {
                    newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e) {
                    e = e;
                }
                try {
                    newInstance.m19040a(bundle);
                    abstractC3351a = newInstance;
                } catch (Exception e2) {
                    e = e2;
                    abstractC3351a = newInstance;
                    Class<? extends InterfaceC3350m.AbstractC3351a> cls2 = this.f15723c;
                    if (cls2 == null) {
                        name = "null";
                    } else {
                        name = cls2.getName();
                    }
                    Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: " + name, e);
                    return this.f15724d.m19041a(view, abstractC3351a);
                }
            }
            return this.f15724d.m19041a(view, abstractC3351a);
        }

        public C3347a(int i, CharSequence charSequence, Class<? extends InterfaceC3350m.AbstractC3351a> cls) {
            this(null, i, charSequence, null, cls);
        }

        public C3347a(Object obj, int i, CharSequence charSequence, InterfaceC3350m interfaceC3350m, Class<? extends InterfaceC3350m.AbstractC3351a> cls) {
            this.f15722b = i;
            this.f15724d = interfaceC3350m;
            if (Build.VERSION.SDK_INT >= 21 && obj == null) {
                this.f15721a = new AccessibilityNodeInfo$AccessibilityAction(i, charSequence);
            } else {
                this.f15721a = obj;
            }
            this.f15723c = cls;
        }
    }

    /* renamed from: P */
    public static C3346j m19074P(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new C3346j(accessibilityNodeInfo);
    }

    /* renamed from: g */
    public static String m19067g(int i) {
        if (i != 1) {
            if (i != 2) {
                switch (i) {
                    case 4:
                        return "ACTION_SELECT";
                    case 8:
                        return "ACTION_CLEAR_SELECTION";
                    case 16:
                        return "ACTION_CLICK";
                    case 32:
                        return "ACTION_LONG_CLICK";
                    case 64:
                        return "ACTION_ACCESSIBILITY_FOCUS";
                    case 128:
                        return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                    case 256:
                        return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                    case 512:
                        return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                    case 1024:
                        return "ACTION_NEXT_HTML_ELEMENT";
                    case 2048:
                        return "ACTION_PREVIOUS_HTML_ELEMENT";
                    case 4096:
                        return "ACTION_SCROLL_FORWARD";
                    case 8192:
                        return "ACTION_SCROLL_BACKWARD";
                    case 16384:
                        return "ACTION_COPY";
                    case 32768:
                        return "ACTION_PASTE";
                    case 65536:
                        return "ACTION_CUT";
                    case 131072:
                        return "ACTION_SET_SELECTION";
                    case 262144:
                        return "ACTION_EXPAND";
                    case Opcodes.ASM8 /* 524288 */:
                        return "ACTION_COLLAPSE";
                    case 2097152:
                        return "ACTION_SET_TEXT";
                    case 16908354:
                        return "ACTION_MOVE_WINDOW";
                    case 16908372:
                        return "ACTION_IME_ENTER";
                    default:
                        switch (i) {
                            case 16908342:
                                return "ACTION_SHOW_ON_SCREEN";
                            case 16908343:
                                return "ACTION_SCROLL_TO_POSITION";
                            case 16908344:
                                return "ACTION_SCROLL_UP";
                            case 16908345:
                                return "ACTION_SCROLL_LEFT";
                            case 16908346:
                                return "ACTION_SCROLL_DOWN";
                            case 16908347:
                                return "ACTION_SCROLL_RIGHT";
                            case 16908348:
                                return "ACTION_CONTEXT_CLICK";
                            case 16908349:
                                return "ACTION_SET_PROGRESS";
                            default:
                                switch (i) {
                                    case 16908356:
                                        return "ACTION_SHOW_TOOLTIP";
                                    case 16908357:
                                        return "ACTION_HIDE_TOOLTIP";
                                    case 16908358:
                                        return "ACTION_PAGE_UP";
                                    case 16908359:
                                        return "ACTION_PAGE_DOWN";
                                    case 16908360:
                                        return "ACTION_PAGE_LEFT";
                                    case 16908361:
                                        return "ACTION_PAGE_RIGHT";
                                    case 16908362:
                                        return "ACTION_PRESS_AND_HOLD";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
            }
            return "ACTION_CLEAR_FOCUS";
        }
        return "ACTION_FOCUS";
    }

    /* renamed from: A */
    public boolean m19089A() {
        return this.f15679a.isFocused();
    }

    /* renamed from: B */
    public boolean m19088B() {
        return this.f15679a.isLongClickable();
    }

    /* renamed from: C */
    public boolean m19087C() {
        return this.f15679a.isPassword();
    }

    /* renamed from: D */
    public boolean m19086D() {
        return this.f15679a.isScrollable();
    }

    /* renamed from: E */
    public boolean m19085E() {
        return this.f15679a.isSelected();
    }

    /* renamed from: F */
    public boolean m19084F(int i, Bundle bundle) {
        return this.f15679a.performAction(i, bundle);
    }

    /* renamed from: I */
    public void m19081I(CharSequence charSequence) {
        this.f15679a.setClassName(charSequence);
    }

    /* renamed from: M */
    public void m19077M(boolean z) {
        this.f15679a.setScrollable(z);
    }

    /* renamed from: O */
    public AccessibilityNodeInfo m19075O() {
        return this.f15679a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C3346j)) {
            return false;
        }
        C3346j c3346j = (C3346j) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f15679a;
        if (accessibilityNodeInfo == null) {
            if (c3346j.f15679a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(c3346j.f15679a)) {
            return false;
        }
        return this.f15681c == c3346j.f15681c && this.f15680b == c3346j.f15680b;
    }

    /* renamed from: h */
    public int m19066h() {
        return this.f15679a.getActions();
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f15679a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    @Deprecated
    /* renamed from: i */
    public void m19065i(Rect rect) {
        this.f15679a.getBoundsInParent(rect);
    }

    /* renamed from: j */
    public void m19064j(Rect rect) {
        this.f15679a.getBoundsInScreen(rect);
    }

    /* renamed from: k */
    public CharSequence m19063k() {
        return this.f15679a.getClassName();
    }

    /* renamed from: m */
    public CharSequence m19061m() {
        return this.f15679a.getContentDescription();
    }

    /* renamed from: p */
    public CharSequence m19058p() {
        return this.f15679a.getPackageName();
    }

    /* renamed from: q */
    public final SparseArray<WeakReference<ClickableSpan>> m19057q(View view) {
        return (SparseArray) view.getTag(C5379b.f19997I);
    }

    /* renamed from: t */
    public final boolean m19054t() {
        return !m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    /* renamed from: v */
    public boolean m19052v() {
        return this.f15679a.isCheckable();
    }

    /* renamed from: w */
    public boolean m19051w() {
        return this.f15679a.isChecked();
    }

    /* renamed from: x */
    public boolean m19050x() {
        return this.f15679a.isClickable();
    }

    /* renamed from: y */
    public boolean m19049y() {
        return this.f15679a.isEnabled();
    }

    /* renamed from: z */
    public boolean m19048z() {
        return this.f15679a.isFocusable();
    }

    /* renamed from: l */
    public static ClickableSpan[] m19062l(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    /* renamed from: J */
    public void m19080J(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f15679a.setHeading(z);
        } else {
            m19082H(2, z);
        }
    }

    /* renamed from: K */
    public void m19079K(CharSequence charSequence) {
        Bundle extras;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f15679a.setPaneTitle(charSequence);
        } else if (i >= 19) {
            extras = this.f15679a.getExtras();
            extras.putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    /* renamed from: L */
    public void m19078L(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f15679a.setScreenReaderFocusable(z);
        } else {
            m19082H(1, z);
        }
    }

    /* renamed from: a */
    public void m19073a(C3347a c3347a) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f15679a.addAction((AccessibilityNodeInfo$AccessibilityAction) c3347a.f15721a);
        }
    }

    /* renamed from: b */
    public final void m19072b(ClickableSpan clickableSpan, Spanned spanned, int i) {
        m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
    }

    /* renamed from: c */
    public void m19071c(CharSequence charSequence, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19 && i < 26) {
            m19070d();
            m19083G(view);
            ClickableSpan[] m19062l = m19062l(charSequence);
            if (m19062l != null && m19062l.length > 0) {
                m19060n().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", C5379b.f20007a);
                SparseArray<WeakReference<ClickableSpan>> m19059o = m19059o(view);
                for (int i2 = 0; i2 < m19062l.length; i2++) {
                    int m19053u = m19053u(m19062l[i2], m19059o);
                    m19059o.put(m19053u, new WeakReference<>(m19062l[i2]));
                    m19072b(m19062l[i2], (Spanned) charSequence, m19053u);
                }
            }
        }
    }

    /* renamed from: d */
    public final void m19070d() {
        Bundle extras;
        Bundle extras2;
        Bundle extras3;
        Bundle extras4;
        if (Build.VERSION.SDK_INT >= 19) {
            extras = this.f15679a.getExtras();
            extras.remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            extras2 = this.f15679a.getExtras();
            extras2.remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            extras3 = this.f15679a.getExtras();
            extras3.remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            extras4 = this.f15679a.getExtras();
            extras4.remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    /* renamed from: e */
    public final List<Integer> m19069e(String str) {
        Bundle extras;
        Bundle extras2;
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        extras = this.f15679a.getExtras();
        ArrayList<Integer> integerArrayList = extras.getIntegerArrayList(str);
        if (integerArrayList == null) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            extras2 = this.f15679a.getExtras();
            extras2.putIntegerArrayList(str, arrayList);
            return arrayList;
        }
        return integerArrayList;
    }

    /* renamed from: f */
    public List<C3347a> m19068f() {
        List list;
        if (Build.VERSION.SDK_INT >= 21) {
            list = this.f15679a.getActionList();
        } else {
            list = null;
        }
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(new C3347a(list.get(i)));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    /* renamed from: n */
    public Bundle m19060n() {
        Bundle extras;
        if (Build.VERSION.SDK_INT >= 19) {
            extras = this.f15679a.getExtras();
            return extras;
        }
        return new Bundle();
    }

    /* renamed from: s */
    public String m19055s() {
        String viewIdResourceName;
        if (Build.VERSION.SDK_INT >= 18) {
            viewIdResourceName = this.f15679a.getViewIdResourceName();
            return viewIdResourceName;
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m19065i(rect);
        sb.append("; boundsInParent: " + rect);
        m19064j(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(m19058p());
        sb.append("; className: ");
        sb.append(m19063k());
        sb.append("; text: ");
        sb.append(m19056r());
        sb.append("; contentDescription: ");
        sb.append(m19061m());
        sb.append("; viewId: ");
        sb.append(m19055s());
        sb.append("; checkable: ");
        sb.append(m19052v());
        sb.append("; checked: ");
        sb.append(m19051w());
        sb.append("; focusable: ");
        sb.append(m19048z());
        sb.append("; focused: ");
        sb.append(m19089A());
        sb.append("; selected: ");
        sb.append(m19085E());
        sb.append("; clickable: ");
        sb.append(m19050x());
        sb.append("; longClickable: ");
        sb.append(m19088B());
        sb.append("; enabled: ");
        sb.append(m19049y());
        sb.append("; password: ");
        sb.append(m19087C());
        sb.append("; scrollable: " + m19086D());
        sb.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<C3347a> m19068f = m19068f();
            for (int i = 0; i < m19068f.size(); i++) {
                C3347a c3347a = m19068f.get(i);
                String m19067g = m19067g(c3347a.m19047a());
                if (m19067g.equals("ACTION_UNKNOWN") && c3347a.m19046b() != null) {
                    m19067g = c3347a.m19046b().toString();
                }
                sb.append(m19067g);
                if (i != m19068f.size() - 1) {
                    sb.append(", ");
                }
            }
        } else {
            int m19066h = m19066h();
            while (m19066h != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(m19066h);
                m19066h &= numberOfTrailingZeros ^ (-1);
                sb.append(m19067g(numberOfTrailingZeros));
                if (m19066h != 0) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: u */
    public final int m19053u(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i = 0; i < sparseArray.size(); i++) {
                if (clickableSpan.equals(sparseArray.valueAt(i).get())) {
                    return sparseArray.keyAt(i);
                }
            }
        }
        int i2 = f15678d;
        f15678d = i2 + 1;
        return i2;
    }

    public C3346j(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f15679a = accessibilityNodeInfo;
    }

    /* renamed from: G */
    public final void m19083G(View view) {
        SparseArray<WeakReference<ClickableSpan>> m19057q = m19057q(view);
        if (m19057q != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < m19057q.size(); i++) {
                if (m19057q.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                m19057q.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    /* renamed from: H */
    public final void m19082H(int i, boolean z) {
        Bundle m19060n = m19060n();
        if (m19060n != null) {
            int i2 = m19060n.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i ^ (-1));
            if (!z) {
                i = 0;
            }
            m19060n.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | i2);
        }
    }

    /* renamed from: N */
    public void m19076N(CharSequence charSequence) {
        Bundle extras;
        if (C7519a.m1309b()) {
            this.f15679a.setStateDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            extras = this.f15679a.getExtras();
            extras.putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    /* renamed from: o */
    public final SparseArray<WeakReference<ClickableSpan>> m19059o(View view) {
        SparseArray<WeakReference<ClickableSpan>> m19057q = m19057q(view);
        if (m19057q == null) {
            SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
            view.setTag(C5379b.f19997I, sparseArray);
            return sparseArray;
        }
        return m19057q;
    }

    /* renamed from: r */
    public CharSequence m19056r() {
        if (m19054t()) {
            List<Integer> m19069e = m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> m19069e2 = m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> m19069e3 = m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> m19069e4 = m19069e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f15679a.getText(), 0, this.f15679a.getText().length()));
            for (int i = 0; i < m19069e.size(); i++) {
                spannableString.setSpan(new C3337a(m19069e4.get(i).intValue(), this, m19060n().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), m19069e.get(i).intValue(), m19069e2.get(i).intValue(), m19069e3.get(i).intValue());
            }
            return spannableString;
        }
        return this.f15679a.getText();
    }
}
