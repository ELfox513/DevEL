package p056f0;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import p013b0.C0421g;
import p022c0.C1024g;
/* renamed from: f0.g0 */
/* loaded from: classes.dex */
public final class C3435g0 {

    /* renamed from: f0.g0$a */
    /* loaded from: classes.dex */
    public static class ActionMode$CallbackC3436a implements ActionMode.Callback {

        /* renamed from: a */
        public final ActionMode.Callback f15877a;

        /* renamed from: b */
        public final TextView f15878b;

        /* renamed from: c */
        public Class<?> f15879c;

        /* renamed from: d */
        public Method f15880d;

        /* renamed from: e */
        public boolean f15881e;

        /* renamed from: f */
        public boolean f15882f = false;

        /* renamed from: a */
        public final Intent m18840a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f15877a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f15877a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f15877a.onDestroyActionMode(actionMode);
        }

        /* renamed from: c */
        public final List<ResolveInfo> m18838c(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m18840a(), 0)) {
                if (m18836e(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        /* renamed from: d */
        public final boolean m18837d(TextView textView) {
            if ((textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled()) {
                return true;
            }
            return false;
        }

        /* renamed from: f */
        public final void m18835f(Menu menu) {
            Method declaredMethod;
            Context context = this.f15878b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f15882f) {
                this.f15882f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f15879c = cls;
                    this.f15880d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f15881e = true;
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    this.f15879c = null;
                    this.f15880d = null;
                    this.f15881e = false;
                }
            }
            try {
                if (this.f15881e && this.f15879c.isInstance(menu)) {
                    declaredMethod = this.f15880d;
                } else {
                    declaredMethod = menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
                }
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> m18838c = m18838c(context, packageManager);
                for (int i = 0; i < m18838c.size(); i++) {
                    ResolveInfo resolveInfo = m18838c.get(i);
                    menu.add(0, 0, i + 100, resolveInfo.loadLabel(packageManager)).setIntent(m18839b(resolveInfo, this.f15878b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }

        public ActionMode$CallbackC3436a(ActionMode.Callback callback, TextView textView) {
            this.f15877a = callback;
            this.f15878b = textView;
        }

        /* renamed from: b */
        public final Intent m18839b(ResolveInfo resolveInfo, TextView textView) {
            Intent putExtra = m18840a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !m18837d(textView));
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return putExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        /* renamed from: e */
        public final boolean m18836e(ResolveInfo resolveInfo, Context context) {
            int checkSelfPermission;
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (!activityInfo.exported) {
                return false;
            }
            String str = activityInfo.permission;
            if (str == null) {
                return true;
            }
            checkSelfPermission = context.checkSelfPermission(str);
            if (checkSelfPermission == 0) {
                return true;
            }
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            m18835f(menu);
            return this.f15877a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* renamed from: a */
    public static int m18853a(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    /* renamed from: b */
    public static int m18852b(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    /* renamed from: c */
    public static int m18851c(TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        if (textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_RTL) {
            return 1;
        }
        return 7;
    }

    /* renamed from: e */
    public static C0421g.C0422a m18849e(TextView textView) {
        int breakStrategy;
        int hyphenationFrequency;
        PrecomputedText.Params textMetricsParams;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            textMetricsParams = textView.getTextMetricsParams();
            return new C0421g.C0422a(textMetricsParams);
        }
        C0421g.C0422a.C0423a c0423a = new C0421g.C0422a.C0423a(new TextPaint(textView.getPaint()));
        if (i >= 23) {
            breakStrategy = textView.getBreakStrategy();
            c0423a.m26545b(breakStrategy);
            hyphenationFrequency = textView.getHyphenationFrequency();
            c0423a.m26544c(hyphenationFrequency);
        }
        if (i >= 18) {
            c0423a.m26543d(m18850d(textView));
        }
        return c0423a.m26546a();
    }

    /* renamed from: k */
    public static void m18843k(TextView textView, C0421g c0421g) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(c0421g.m26552b());
        } else if (m18849e(textView).m26551a(c0421g.m26553a())) {
            textView.setText(c0421g);
        } else {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
    }

    /* renamed from: l */
    public static void m18842l(TextView textView, C0421g.C0422a c0422a) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            textView.setTextDirection(m18851c(c0422a.m26548d()));
        }
        if (i < 23) {
            float textScaleX = c0422a.m26547e().getTextScaleX();
            textView.getPaint().set(c0422a.m26547e());
            if (textScaleX == textView.getTextScaleX()) {
                textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            textView.setTextScaleX(textScaleX);
            return;
        }
        textView.getPaint().set(c0422a.m26547e());
        textView.setBreakStrategy(c0422a.m26550b());
        textView.setHyphenationFrequency(c0422a.m26549c());
    }

    /* renamed from: m */
    public static ActionMode.Callback m18841m(TextView textView, ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 && i <= 27 && !(callback instanceof ActionMode$CallbackC3436a) && callback != null) {
            return new ActionMode$CallbackC3436a(callback, textView);
        }
        return callback;
    }

    /* renamed from: d */
    public static TextDirectionHeuristic m18850d(TextView textView) {
        int layoutDirection;
        int textDirection;
        Locale textLocale;
        String[] digitStrings;
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28 && (textView.getInputType() & 15) == 3) {
            textLocale = textView.getTextLocale();
            digitStrings = DecimalFormatSymbols.getInstance(textLocale).getDigitStrings();
            byte directionality = Character.getDirectionality(digitStrings[0].codePointAt(0));
            if (directionality != 1 && directionality != 2) {
                return TextDirectionHeuristics.LTR;
            }
            return TextDirectionHeuristics.RTL;
        }
        layoutDirection = textView.getLayoutDirection();
        if (layoutDirection == 1) {
            z = true;
        }
        textDirection = textView.getTextDirection();
        switch (textDirection) {
            case 2:
                return TextDirectionHeuristics.ANYRTL_LTR;
            case 3:
                return TextDirectionHeuristics.LTR;
            case 4:
                return TextDirectionHeuristics.RTL;
            case 5:
                return TextDirectionHeuristics.LOCALE;
            case 6:
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
            case 7:
                return TextDirectionHeuristics.FIRSTSTRONG_RTL;
            default:
                if (z) {
                    return TextDirectionHeuristics.FIRSTSTRONG_RTL;
                }
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
    }

    /* renamed from: f */
    public static void m18848f(TextView textView, ColorStateList colorStateList) {
        C1024g.m24809b(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (textView instanceof InterfaceC3440i0) {
            ((InterfaceC3440i0) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* renamed from: g */
    public static void m18847g(TextView textView, PorterDuff.Mode mode) {
        C1024g.m24809b(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (textView instanceof InterfaceC3440i0) {
            ((InterfaceC3440i0) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    /* renamed from: h */
    public static void m18846h(TextView textView, int i) {
        int i2;
        C1024g.m24810a(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (textView.getIncludeFontPadding()) {
            i2 = fontMetricsInt.top;
        } else {
            i2 = fontMetricsInt.ascent;
        }
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    /* renamed from: i */
    public static void m18845i(TextView textView, int i) {
        int i2;
        C1024g.m24810a(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        if (textView.getIncludeFontPadding()) {
            i2 = fontMetricsInt.bottom;
        } else {
            i2 = fontMetricsInt.descent;
        }
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: j */
    public static void m18844j(TextView textView, int i) {
        C1024g.m24810a(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }
}
