package com.prineside.luaj.parser;
/* loaded from: classes2.dex */
public class TokenMgrError extends Error {

    /* renamed from: a */
    public int f8382a;

    public TokenMgrError() {
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return super.getMessage();
    }

    public TokenMgrError(String str, int i) {
        super(str);
        this.f8382a = i;
    }

    /* renamed from: a */
    public static String m22237a(boolean z, int i, int i2, int i3, String str, char c) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("Lexical error at line ");
        sb.append(i2);
        sb.append(", column ");
        sb.append(i3);
        sb.append(".  Encountered: ");
        if (z) {
            str2 = "<EOF> ";
        } else {
            str2 = "\"" + m22236b(String.valueOf(c)) + "\" (" + ((int) c) + "), ";
        }
        sb.append(str2);
        sb.append("after : \"");
        sb.append(m22236b(str));
        sb.append("\"");
        return sb.toString();
    }

    /* renamed from: b */
    public static final String m22236b(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != 0) {
                if (charAt != '\"') {
                    if (charAt != '\'') {
                        if (charAt != '\\') {
                            if (charAt != '\f') {
                                if (charAt != '\r') {
                                    switch (charAt) {
                                        case '\b':
                                            stringBuffer.append("\\b");
                                            continue;
                                        case '\t':
                                            stringBuffer.append("\\t");
                                            continue;
                                        case '\n':
                                            stringBuffer.append("\\n");
                                            continue;
                                        default:
                                            char charAt2 = str.charAt(i);
                                            if (charAt2 >= ' ' && charAt2 <= '~') {
                                                stringBuffer.append(charAt2);
                                                continue;
                                            } else {
                                                String str2 = "0000" + Integer.toString(charAt2, 16);
                                                stringBuffer.append("\\u" + str2.substring(str2.length() - 4, str2.length()));
                                                break;
                                            }
                                    }
                                } else {
                                    stringBuffer.append("\\r");
                                }
                            } else {
                                stringBuffer.append("\\f");
                            }
                        } else {
                            stringBuffer.append("\\\\");
                        }
                    } else {
                        stringBuffer.append("\\'");
                    }
                } else {
                    stringBuffer.append("\\\"");
                }
            }
        }
        return stringBuffer.toString();
    }

    public TokenMgrError(boolean z, int i, int i2, int i3, String str, char c, int i4) {
        this(m22237a(z, i, i2, i3, str, c), i4);
    }
}
