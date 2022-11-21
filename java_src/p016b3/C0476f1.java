package p016b3;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ScrollView;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import net.bytebuddy.pool.TypePool;
import org.json.JSONException;
import org.json.JSONObject;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.C6479yu;
import p168r4.cm0;
import p168r4.j13;
import p168r4.m03;
import p168r4.no2;
import p235z2.C7601t;
/* renamed from: b3.f1 */
/* loaded from: classes.dex */
public final class C0476f1 {
    /* renamed from: f */
    public static JSONObject m26382f(String str, Context context, Point point, Point point2) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e) {
            e = e;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("x", C6479yu.m4568a().m6127a(context, point2.x));
                jSONObject3.put("y", C6479yu.m4568a().m6127a(context, point2.y));
                jSONObject3.put("start_x", C6479yu.m4568a().m6127a(context, point.x));
                jSONObject3.put("start_y", C6479yu.m4568a().m6127a(context, point.y));
                jSONObject2 = jSONObject3;
            } catch (JSONException e2) {
                cm0.m12439d("Error occurred while putting signals into JSON object.", e2);
            }
            jSONObject.put("click_point", jSONObject2);
            jSONObject.put("asset_id", str);
            return jSONObject;
        } catch (Exception e3) {
            e = e3;
            jSONObject2 = jSONObject;
            cm0.m12439d("Error occurred while grabbing click signals.", e);
            return jSONObject2;
        }
    }

    /* renamed from: g */
    public static int[] m26381g(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    /* renamed from: a */
    public static boolean m26387a(int i) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30952Y1)).booleanValue()) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30960Z1)).booleanValue() && i > 15299999) {
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:18|(9:45|46|21|22|23|(3:25|(1:29)|39)(3:40|(1:42)|39)|30|(2:32|(1:34)(1:37))(1:38)|35)|20|21|22|23|(0)(0)|30|(0)(0)|35) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0174, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0175, code lost:
        p168r4.cm0.m12439d("Could not log native template signal to JSON", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x016f A[Catch: JSONException -> 0x0174, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0174, blocks: (B:30:0x013b, B:47:0x0166, B:48:0x016a, B:49:0x016f), top: B:56:0x013b }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0175 -> B:55:0x017a). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject m26386b(android.content.Context r16, android.view.View r17) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p016b3.C0476f1.m26386b(android.content.Context, android.view.View):org.json.JSONObject");
    }

    /* renamed from: c */
    public static JSONObject m26385c(View view) {
        int positionForView;
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            boolean z = false;
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30804F5)).booleanValue()) {
                C7601t.m939d();
                ViewParent parent = view.getParent();
                while (parent != null && !(parent instanceof ScrollView)) {
                    parent = parent.getParent();
                }
                if (parent != null) {
                    z = true;
                }
                jSONObject.put("contained_in_scroll_view", z);
            } else {
                C7601t.m939d();
                ViewParent parent2 = view.getParent();
                while (parent2 != null && !(parent2 instanceof AdapterView)) {
                    parent2 = parent2.getParent();
                }
                if (parent2 == null) {
                    positionForView = -1;
                } else {
                    positionForView = ((AdapterView) parent2).getPositionForView(view);
                }
                if (positionForView != -1) {
                    z = true;
                }
                jSONObject.put("contained_in_scroll_view", z);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* renamed from: d */
    public static JSONObject m26384d(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            C7601t.m939d();
            jSONObject.put("can_show_on_lock_screen", C0497k2.m26327a0(view));
            C7601t.m939d();
            jSONObject.put("is_keyguard_locked", C0497k2.m26316g(context));
        } catch (JSONException unused) {
            cm0.m12437f("Unable to get lock screen information");
        }
        return jSONObject;
    }

    /* renamed from: e */
    public static JSONObject m26383e(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        Map.Entry<String, WeakReference<View>> entry;
        boolean z;
        JSONObject jSONObject3 = new JSONObject();
        if (map != null && view != null) {
            int[] m26381g = m26381g(view);
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, WeakReference<View>> next = it.next();
                View view2 = next.getValue().get();
                if (view2 != null) {
                    int[] m26381g2 = m26381g(view2);
                    JSONObject jSONObject4 = new JSONObject();
                    JSONObject jSONObject5 = new JSONObject();
                    Iterator<Map.Entry<String, WeakReference<View>>> it2 = it;
                    try {
                        JSONObject jSONObject6 = jSONObject3;
                        try {
                            jSONObject5.put("width", C6479yu.m4568a().m6127a(context, view2.getMeasuredWidth()));
                            jSONObject5.put("height", C6479yu.m4568a().m6127a(context, view2.getMeasuredHeight()));
                            jSONObject5.put("x", C6479yu.m4568a().m6127a(context, m26381g2[0] - m26381g[0]));
                            jSONObject5.put("y", C6479yu.m4568a().m6127a(context, m26381g2[1] - m26381g[1]));
                            jSONObject5.put("relative_to", "ad_view");
                            jSONObject4.put("frame", jSONObject5);
                            Rect rect = new Rect();
                            if (view2.getLocalVisibleRect(rect)) {
                                jSONObject2 = m26377k(context, rect);
                            } else {
                                jSONObject2 = new JSONObject();
                                jSONObject2.put("width", 0);
                                jSONObject2.put("height", 0);
                                jSONObject2.put("x", C6479yu.m4568a().m6127a(context, m26381g2[0] - m26381g[0]));
                                jSONObject2.put("y", C6479yu.m4568a().m6127a(context, m26381g2[1] - m26381g[1]));
                                jSONObject2.put("relative_to", "ad_view");
                            }
                            jSONObject4.put("visible_bounds", jSONObject2);
                            if (view2 instanceof TextView) {
                                TextView textView = (TextView) view2;
                                jSONObject4.put("text_color", textView.getCurrentTextColor());
                                entry = next;
                                jSONObject4.put("font_size", textView.getTextSize());
                                jSONObject4.put("text", textView.getText());
                            } else {
                                entry = next;
                            }
                            if (map2 != null && map2.containsKey(entry.getKey()) && view2.isClickable()) {
                                z = true;
                            } else {
                                z = false;
                            }
                            jSONObject4.put("is_clickable", z);
                            jSONObject = jSONObject6;
                        } catch (JSONException unused) {
                            jSONObject = jSONObject6;
                        }
                    } catch (JSONException unused2) {
                        jSONObject = jSONObject3;
                    }
                    try {
                        jSONObject.put(entry.getKey(), jSONObject4);
                    } catch (JSONException unused3) {
                        cm0.m12437f("Unable to get asset views information");
                        jSONObject3 = jSONObject;
                        it = it2;
                    }
                    jSONObject3 = jSONObject;
                    it = it2;
                }
            }
            return jSONObject3;
        }
        return jSONObject3;
    }

    /* renamed from: i */
    public static boolean m26379i(Context context, no2 no2Var) {
        if (!no2Var.f28387J) {
            return false;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30812G5)).booleanValue()) {
            return ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30836J5)).booleanValue();
        }
        String str = (String) C5592av.m12935c().m8098c(C6225rz.f30820H5);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            for (String str2 : j13.m10444b(m03.m9523b(TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER)).m10442d(str)) {
                if (str2.equals(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: j */
    public static WindowManager.LayoutParams m26378j() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) C5592av.m12935c().m8098c(C6225rz.f30828I5)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    /* renamed from: k */
    public static JSONObject m26377k(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", C6479yu.m4568a().m6127a(context, rect.right - rect.left));
        jSONObject.put("height", C6479yu.m4568a().m6127a(context, rect.bottom - rect.top));
        jSONObject.put("x", C6479yu.m4568a().m6127a(context, rect.left));
        jSONObject.put("y", C6479yu.m4568a().m6127a(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    /* renamed from: h */
    public static Point m26380h(MotionEvent motionEvent, View view) {
        int[] m26381g = m26381g(view);
        float rawX = motionEvent.getRawX();
        return new Point(((int) rawX) - m26381g[0], ((int) motionEvent.getRawY()) - m26381g[1]);
    }
}
