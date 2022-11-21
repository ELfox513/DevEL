package com.prineside.luaj.parser;
/* loaded from: classes2.dex */
public class ParseException extends Exception {

    /* renamed from: a */
    public String f8367a;
    public Token currentToken;
    public int[][] expectedTokenSequences;
    public String[] tokenImage;

    public ParseException(Token token, int[][] iArr, String[] strArr) {
        super(m22241b(token, iArr, strArr));
        this.f8367a = System.getProperty("line.separator", "\n");
        this.currentToken = token;
        this.expectedTokenSequences = iArr;
        this.tokenImage = strArr;
    }

    /* renamed from: a */
    public static String m22242a(String str) {
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

    /* renamed from: b */
    public static String m22241b(Token token, int[][] iArr, String[] strArr) {
        String str;
        int[] iArr2;
        String property = System.getProperty("line.separator", "\n");
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int[] iArr3 = iArr[i2];
            if (i < iArr3.length) {
                i = iArr3.length;
            }
            int i3 = 0;
            while (true) {
                iArr2 = iArr[i2];
                if (i3 >= iArr2.length) {
                    break;
                }
                stringBuffer.append(strArr[iArr2[i3]]);
                stringBuffer.append(' ');
                i3++;
            }
            if (iArr2[iArr2.length - 1] != 0) {
                stringBuffer.append("...");
            }
            stringBuffer.append(property);
            stringBuffer.append("    ");
        }
        Token token2 = token.next;
        String str2 = "Encountered \"";
        int i4 = 0;
        while (true) {
            if (i4 >= i) {
                break;
            }
            if (i4 != 0) {
                str2 = str2 + " ";
            }
            if (token2.kind == 0) {
                str2 = str2 + strArr[0];
                break;
            }
            str2 = (((str2 + " " + strArr[token2.kind]) + " \"") + m22242a(token2.image)) + " \"";
            token2 = token2.next;
            i4++;
        }
        String str3 = (str2 + "\" at line " + token.next.beginLine + ", column " + token.next.beginColumn) + "." + property;
        if (iArr.length == 1) {
            str = str3 + "Was expecting:" + property + "    ";
        } else {
            str = str3 + "Was expecting one of:" + property + "    ";
        }
        return str + stringBuffer.toString();
    }

    public ParseException() {
        this.f8367a = System.getProperty("line.separator", "\n");
    }

    public ParseException(String str) {
        super(str);
        this.f8367a = System.getProperty("line.separator", "\n");
    }
}
