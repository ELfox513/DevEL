package p013b0;

import android.annotation.NonNull;
import android.annotation.SuppressLint;
import android.os.Build;
import android.p010os.LocaleList;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.Locale;
import p022c0.C1022e;
/* renamed from: b0.g */
/* loaded from: classes.dex */
public class C0421g implements Spannable {

    /* renamed from: k */
    public static final Object f1483k = new Object();

    /* renamed from: a */
    public final Spannable f1484a;

    /* renamed from: b */
    public final C0422a f1485b;

    /* renamed from: d */
    public final PrecomputedText f1486d;

    /* renamed from: b0.g$a */
    /* loaded from: classes.dex */
    public static final class C0422a {

        /* renamed from: a */
        public final TextPaint f1487a;

        /* renamed from: b */
        public final TextDirectionHeuristic f1488b;

        /* renamed from: c */
        public final int f1489c;

        /* renamed from: d */
        public final int f1490d;

        /* renamed from: e */
        public final PrecomputedText.Params f1491e;

        /* JADX WARN: Type inference failed for: r0v2, types: [android.text.PrecomputedText$Params$Builder] */
        @SuppressLint({"NewApi"})
        public C0422a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f1491e = new Object(textPaint) { // from class: android.text.PrecomputedText.Params.Builder
                    static {
                        throw new NoClassDefFoundError();
                    }

                    @NonNull
                    public native /* synthetic */ Params build();

                    public native /* synthetic */ Builder setBreakStrategy(int i3);

                    public native /* synthetic */ Builder setHyphenationFrequency(int i3);

                    public native /* synthetic */ Builder setTextDirection(@NonNull TextDirectionHeuristic textDirectionHeuristic2);
                }.setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f1491e = null;
            }
            this.f1487a = textPaint;
            this.f1488b = textDirectionHeuristic;
            this.f1489c = i;
            this.f1490d = i2;
        }

        /* renamed from: b */
        public int m26550b() {
            return this.f1489c;
        }

        /* renamed from: c */
        public int m26549c() {
            return this.f1490d;
        }

        /* renamed from: d */
        public TextDirectionHeuristic m26548d() {
            return this.f1488b;
        }

        /* renamed from: e */
        public TextPaint m26547e() {
            return this.f1487a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0422a)) {
                return false;
            }
            C0422a c0422a = (C0422a) obj;
            if (m26551a(c0422a)) {
                return Build.VERSION.SDK_INT < 18 || this.f1488b == c0422a.m26548d();
            }
            return false;
        }

        /* renamed from: b0.g$a$a */
        /* loaded from: classes.dex */
        public static class C0423a {

            /* renamed from: a */
            public final TextPaint f1492a;

            /* renamed from: b */
            public TextDirectionHeuristic f1493b;

            /* renamed from: c */
            public int f1494c;

            /* renamed from: d */
            public int f1495d;

            /* renamed from: a */
            public C0422a m26546a() {
                return new C0422a(this.f1492a, this.f1493b, this.f1494c, this.f1495d);
            }

            /* renamed from: b */
            public C0423a m26545b(int i) {
                this.f1494c = i;
                return this;
            }

            /* renamed from: c */
            public C0423a m26544c(int i) {
                this.f1495d = i;
                return this;
            }

            /* renamed from: d */
            public C0423a m26543d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f1493b = textDirectionHeuristic;
                return this;
            }

            public C0423a(TextPaint textPaint) {
                this.f1492a = textPaint;
                int i = Build.VERSION.SDK_INT;
                if (i >= 23) {
                    this.f1494c = 1;
                    this.f1495d = 1;
                } else {
                    this.f1495d = 0;
                    this.f1494c = 0;
                }
                if (i >= 18) {
                    this.f1493b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f1493b = null;
                }
            }
        }

        /* renamed from: a */
        public boolean m26551a(C0422a c0422a) {
            Locale textLocale;
            Locale textLocale2;
            LocaleList textLocales;
            LocaleList textLocales2;
            float letterSpacing;
            float letterSpacing2;
            String fontFeatureSettings;
            String fontFeatureSettings2;
            int i = Build.VERSION.SDK_INT;
            if ((i >= 23 && (this.f1489c != c0422a.m26550b() || this.f1490d != c0422a.m26549c())) || this.f1487a.getTextSize() != c0422a.m26547e().getTextSize() || this.f1487a.getTextScaleX() != c0422a.m26547e().getTextScaleX() || this.f1487a.getTextSkewX() != c0422a.m26547e().getTextSkewX()) {
                return false;
            }
            if (i >= 21) {
                letterSpacing = this.f1487a.getLetterSpacing();
                letterSpacing2 = c0422a.m26547e().getLetterSpacing();
                if (letterSpacing != letterSpacing2) {
                    return false;
                }
                fontFeatureSettings = this.f1487a.getFontFeatureSettings();
                fontFeatureSettings2 = c0422a.m26547e().getFontFeatureSettings();
                if (!TextUtils.equals(fontFeatureSettings, fontFeatureSettings2)) {
                    return false;
                }
            }
            if (this.f1487a.getFlags() != c0422a.m26547e().getFlags()) {
                return false;
            }
            if (i >= 24) {
                textLocales = this.f1487a.getTextLocales();
                textLocales2 = c0422a.m26547e().getTextLocales();
                if (!textLocales.equals(textLocales2)) {
                    return false;
                }
            } else if (i >= 17) {
                textLocale = this.f1487a.getTextLocale();
                textLocale2 = c0422a.m26547e().getTextLocale();
                if (!textLocale.equals(textLocale2)) {
                    return false;
                }
            }
            if (this.f1487a.getTypeface() == null) {
                if (c0422a.m26547e().getTypeface() != null) {
                    return false;
                }
                return true;
            } else if (!this.f1487a.getTypeface().equals(c0422a.m26547e().getTypeface())) {
                return false;
            } else {
                return true;
            }
        }

        public int hashCode() {
            Locale textLocale;
            Locale textLocale2;
            float letterSpacing;
            Locale textLocale3;
            boolean isElegantTextHeight;
            float letterSpacing2;
            LocaleList textLocales;
            boolean isElegantTextHeight2;
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                letterSpacing2 = this.f1487a.getLetterSpacing();
                textLocales = this.f1487a.getTextLocales();
                isElegantTextHeight2 = this.f1487a.isElegantTextHeight();
                return C1022e.m24812b(Float.valueOf(this.f1487a.getTextSize()), Float.valueOf(this.f1487a.getTextScaleX()), Float.valueOf(this.f1487a.getTextSkewX()), Float.valueOf(letterSpacing2), Integer.valueOf(this.f1487a.getFlags()), textLocales, this.f1487a.getTypeface(), Boolean.valueOf(isElegantTextHeight2), this.f1488b, Integer.valueOf(this.f1489c), Integer.valueOf(this.f1490d));
            } else if (i >= 21) {
                letterSpacing = this.f1487a.getLetterSpacing();
                textLocale3 = this.f1487a.getTextLocale();
                isElegantTextHeight = this.f1487a.isElegantTextHeight();
                return C1022e.m24812b(Float.valueOf(this.f1487a.getTextSize()), Float.valueOf(this.f1487a.getTextScaleX()), Float.valueOf(this.f1487a.getTextSkewX()), Float.valueOf(letterSpacing), Integer.valueOf(this.f1487a.getFlags()), textLocale3, this.f1487a.getTypeface(), Boolean.valueOf(isElegantTextHeight), this.f1488b, Integer.valueOf(this.f1489c), Integer.valueOf(this.f1490d));
            } else if (i >= 18) {
                textLocale2 = this.f1487a.getTextLocale();
                return C1022e.m24812b(Float.valueOf(this.f1487a.getTextSize()), Float.valueOf(this.f1487a.getTextScaleX()), Float.valueOf(this.f1487a.getTextSkewX()), Integer.valueOf(this.f1487a.getFlags()), textLocale2, this.f1487a.getTypeface(), this.f1488b, Integer.valueOf(this.f1489c), Integer.valueOf(this.f1490d));
            } else if (i >= 17) {
                textLocale = this.f1487a.getTextLocale();
                return C1022e.m24812b(Float.valueOf(this.f1487a.getTextSize()), Float.valueOf(this.f1487a.getTextScaleX()), Float.valueOf(this.f1487a.getTextSkewX()), Integer.valueOf(this.f1487a.getFlags()), textLocale, this.f1487a.getTypeface(), this.f1488b, Integer.valueOf(this.f1489c), Integer.valueOf(this.f1490d));
            } else {
                return C1022e.m24812b(Float.valueOf(this.f1487a.getTextSize()), Float.valueOf(this.f1487a.getTextScaleX()), Float.valueOf(this.f1487a.getTextSkewX()), Integer.valueOf(this.f1487a.getFlags()), this.f1487a.getTypeface(), this.f1488b, Integer.valueOf(this.f1489c), Integer.valueOf(this.f1490d));
            }
        }

        public String toString() {
            Locale textLocale;
            String fontVariationSettings;
            LocaleList textLocales;
            float letterSpacing;
            boolean isElegantTextHeight;
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f1487a.getTextSize());
            sb.append(", textScaleX=" + this.f1487a.getTextScaleX());
            sb.append(", textSkewX=" + this.f1487a.getTextSkewX());
            int i = Build.VERSION.SDK_INT;
            if (i >= 21) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(", letterSpacing=");
                letterSpacing = this.f1487a.getLetterSpacing();
                sb2.append(letterSpacing);
                sb.append(sb2.toString());
                StringBuilder sb3 = new StringBuilder();
                sb3.append(", elegantTextHeight=");
                isElegantTextHeight = this.f1487a.isElegantTextHeight();
                sb3.append(isElegantTextHeight);
                sb.append(sb3.toString());
            }
            if (i >= 24) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(", textLocale=");
                textLocales = this.f1487a.getTextLocales();
                sb4.append(textLocales);
                sb.append(sb4.toString());
            } else if (i >= 17) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(", textLocale=");
                textLocale = this.f1487a.getTextLocale();
                sb5.append(textLocale);
                sb.append(sb5.toString());
            }
            sb.append(", typeface=" + this.f1487a.getTypeface());
            if (i >= 26) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(", variationSettings=");
                fontVariationSettings = this.f1487a.getFontVariationSettings();
                sb6.append(fontVariationSettings);
                sb.append(sb6.toString());
            }
            sb.append(", textDir=" + this.f1488b);
            sb.append(", breakStrategy=" + this.f1489c);
            sb.append(", hyphenationFrequency=" + this.f1490d);
            sb.append("}");
            return sb.toString();
        }

        public C0422a(PrecomputedText.Params params) {
            this.f1487a = params.getTextPaint();
            this.f1488b = params.getTextDirection();
            this.f1489c = params.getBreakStrategy();
            this.f1490d = params.getHyphenationFrequency();
            this.f1491e = Build.VERSION.SDK_INT < 29 ? null : params;
        }
    }

    /* renamed from: a */
    public C0422a m26553a() {
        return this.f1485b;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f1484a.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f1484a.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f1484a.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f1484a.getSpanStart(obj);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f1484a.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1484a.nextSpanTransition(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f1484a.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f1484a.toString();
    }

    /* renamed from: b */
    public PrecomputedText m26552b() {
        Spannable spannable = this.f1484a;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // android.text.Spanned
    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            return (T[]) this.f1486d.getSpans(i, i2, cls);
        }
        return (T[]) this.f1484a.getSpans(i, i2, cls);
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f1486d.removeSpan(obj);
                return;
            } else {
                this.f1484a.removeSpan(obj);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f1486d.setSpan(obj, i, i2, i3);
                return;
            } else {
                this.f1484a.setSpan(obj, i, i2, i3);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }
}
