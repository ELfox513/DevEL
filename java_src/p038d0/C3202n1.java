package p038d0;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
/* renamed from: d0.n1 */
/* loaded from: classes.dex */
public final class C3202n1 {
    /* renamed from: d */
    public static void m19417d(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof InterfaceC3233t) {
            ((InterfaceC3233t) viewParent).mo19301j(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof InterfaceC3217s) {
            ((InterfaceC3217s) viewParent).mo19375k(view, i, i2, i3, i4, i5);
        } else if (i5 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScroll(view, i, i2, i3, i4);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
                }
            } else if (viewParent instanceof InterfaceC3250u) {
                ((InterfaceC3250u) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }
    }

    /* renamed from: a */
    public static boolean m19420a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        boolean onNestedFling;
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                onNestedFling = viewParent.onNestedFling(view, f, f2, z);
                return onNestedFling;
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e);
                return false;
            }
        } else if (viewParent instanceof InterfaceC3250u) {
            return ((InterfaceC3250u) viewParent).onNestedFling(view, f, f2, z);
        } else {
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m19419b(ViewParent viewParent, View view, float f, float f2) {
        boolean onNestedPreFling;
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                onNestedPreFling = viewParent.onNestedPreFling(view, f, f2);
                return onNestedPreFling;
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e);
                return false;
            }
        } else if (viewParent instanceof InterfaceC3250u) {
            return ((InterfaceC3250u) viewParent).onNestedPreFling(view, f, f2);
        } else {
            return false;
        }
    }

    /* renamed from: c */
    public static void m19418c(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof InterfaceC3217s) {
            ((InterfaceC3217s) viewParent).mo19371o(view, i, i2, iArr, i3);
        } else if (i3 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedPreScroll(view, i, i2, iArr);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
                }
            } else if (viewParent instanceof InterfaceC3250u) {
                ((InterfaceC3250u) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }
    }

    /* renamed from: e */
    public static void m19416e(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof InterfaceC3217s) {
            ((InterfaceC3217s) viewParent).mo19373m(view, view2, i, i2);
        } else if (i2 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScrollAccepted(view, view2, i);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
                }
            } else if (viewParent instanceof InterfaceC3250u) {
                ((InterfaceC3250u) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }
    }

    /* renamed from: f */
    public static boolean m19415f(ViewParent viewParent, View view, View view2, int i, int i2) {
        boolean onStartNestedScroll;
        if (viewParent instanceof InterfaceC3217s) {
            return ((InterfaceC3217s) viewParent).mo19374l(view, view2, i, i2);
        }
        if (i2 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    onStartNestedScroll = viewParent.onStartNestedScroll(view, view2, i);
                    return onStartNestedScroll;
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e);
                    return false;
                }
            } else if (viewParent instanceof InterfaceC3250u) {
                return ((InterfaceC3250u) viewParent).onStartNestedScroll(view, view2, i);
            } else {
                return false;
            }
        }
        return false;
    }

    /* renamed from: g */
    public static void m19414g(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof InterfaceC3217s) {
            ((InterfaceC3217s) viewParent).mo19372n(view, i);
        } else if (i == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onStopNestedScroll(view);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
                }
            } else if (viewParent instanceof InterfaceC3250u) {
                ((InterfaceC3250u) viewParent).onStopNestedScroll(view);
            }
        }
    }
}
