package com.badlogic.gdx.utils;

import java.text.MessageFormat;
import java.util.Locale;
/* loaded from: classes.dex */
class TextFormatter {

    /* renamed from: a */
    public MessageFormat f6753a;

    /* renamed from: b */
    public StringBuilder f6754b = new StringBuilder();

    /* renamed from: a */
    public final String m23511a(String str) {
        int i = 0;
        this.f6754b.setLength(0);
        int length = str.length();
        boolean z = false;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\'') {
                this.f6754b.append("''");
                z = true;
            } else if (charAt == '{') {
                int i2 = i + 1;
                while (i2 < length && str.charAt(i2) == '{') {
                    i2++;
                }
                int i3 = i2 - i;
                int i4 = i3 / 2;
                if (i4 > 0) {
                    this.f6754b.append('\'');
                    do {
                        this.f6754b.append('{');
                        i4--;
                    } while (i4 > 0);
                    this.f6754b.append('\'');
                    z = true;
                }
                if (i3 % 2 != 0) {
                    this.f6754b.append('{');
                }
                i = i2 - 1;
            } else {
                this.f6754b.append(charAt);
            }
            i++;
        }
        if (z) {
            return this.f6754b.toString();
        }
        return str;
    }

    /* renamed from: b */
    public final String m23510b(String str, Object... objArr) {
        this.f6754b.setLength(0);
        int length = str.length();
        int i = 0;
        int i2 = -1;
        boolean z = false;
        while (i < length) {
            char charAt = str.charAt(i);
            if (i2 < 0) {
                if (charAt == '{') {
                    int i3 = i + 1;
                    if (i3 < length && str.charAt(i3) == '{') {
                        this.f6754b.append(charAt);
                        i = i3;
                    } else {
                        i2 = 0;
                    }
                    z = true;
                } else {
                    this.f6754b.append(charAt);
                }
            } else if (charAt == '}') {
                if (i2 < objArr.length) {
                    if (str.charAt(i - 1) != '{') {
                        Object obj = objArr[i2];
                        if (obj == null) {
                            this.f6754b.append("null");
                        } else {
                            this.f6754b.append(obj.toString());
                        }
                        i2 = -1;
                    } else {
                        throw new IllegalArgumentException("Missing argument index after a left curly brace");
                    }
                } else {
                    throw new IllegalArgumentException("Argument index out of bounds: " + i2);
                }
            } else if (charAt >= '0' && charAt <= '9') {
                i2 = (i2 * 10) + (charAt - '0');
            } else {
                throw new IllegalArgumentException("Unexpected '" + charAt + "' while parsing argument index");
            }
            i++;
        }
        if (i2 < 0) {
            if (z) {
                return this.f6754b.toString();
            }
            return str;
        }
        throw new IllegalArgumentException("Unmatched braces in the pattern.");
    }

    public String format(String str, Object... objArr) {
        MessageFormat messageFormat = this.f6753a;
        if (messageFormat != null) {
            messageFormat.applyPattern(m23511a(str));
            return this.f6753a.format(objArr);
        }
        return m23510b(str, objArr);
    }

    public TextFormatter(Locale locale, boolean z) {
        if (z) {
            this.f6753a = new MessageFormat("", locale);
        }
    }
}
