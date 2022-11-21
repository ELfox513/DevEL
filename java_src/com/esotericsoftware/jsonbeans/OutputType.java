package com.esotericsoftware.jsonbeans;

import java.util.regex.Pattern;
/* loaded from: classes.dex */
public enum OutputType {
    json,
    javascript,
    minimal;
    

    /* renamed from: a */
    public static Pattern f7225a = Pattern.compile("[a-zA-Z_$][a-zA-Z_$0-9]*");

    /* renamed from: b */
    public static Pattern f7226b = Pattern.compile("[^{}\\[\\],\":\\r\\n\\t ][^:\\r\\n\\t ]*");

    /* renamed from: d */
    public static Pattern f7227d = Pattern.compile("[^{}\\[\\],\":\\r\\n\\t ][^}\\],\\r\\n\\t ]*");

    /* renamed from: com.esotericsoftware.jsonbeans.OutputType$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C13621 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f7229a;

        static {
            int[] iArr = new int[OutputType.values().length];
            f7229a = iArr;
            try {
                iArr[OutputType.minimal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7229a[OutputType.javascript.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002c, code lost:
        if (r0 != 2) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String quoteName(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "\\"
            java.lang.String r1 = "\\\\"
            java.lang.String r5 = r5.replace(r0, r1)
            java.lang.String r0 = "\r"
            java.lang.String r1 = "\\r"
            java.lang.String r5 = r5.replace(r0, r1)
            java.lang.String r0 = "\n"
            java.lang.String r1 = "\\n"
            java.lang.String r5 = r5.replace(r0, r1)
            java.lang.String r0 = "\t"
            java.lang.String r1 = "\\t"
            java.lang.String r5 = r5.replace(r0, r1)
            int[] r0 = com.esotericsoftware.jsonbeans.OutputType.C13621.f7229a
            int r1 = r4.ordinal()
            r0 = r0[r1]
            r1 = 1
            if (r0 == r1) goto L2f
            r1 = 2
            if (r0 == r1) goto L3c
            goto L49
        L2f:
            java.util.regex.Pattern r0 = com.esotericsoftware.jsonbeans.OutputType.f7226b
            java.util.regex.Matcher r0 = r0.matcher(r5)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L3c
            return r5
        L3c:
            java.util.regex.Pattern r0 = com.esotericsoftware.jsonbeans.OutputType.f7225a
            java.util.regex.Matcher r0 = r0.matcher(r5)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L49
            return r5
        L49:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 34
            r0.append(r1)
            java.lang.String r2 = "\""
            java.lang.String r3 = "\\\""
            java.lang.String r5 = r5.replace(r2, r3)
            r0.append(r5)
            r0.append(r1)
            java.lang.String r5 = r0.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.jsonbeans.OutputType.quoteName(java.lang.String):java.lang.String");
    }

    public String quoteValue(Object obj) {
        if (obj != null && !(obj instanceof Number) && !(obj instanceof Boolean)) {
            String replace = String.valueOf(obj).replace("\\", "\\\\").replace("\r", "\\r").replace("\n", "\\n").replace("\t", "\\t");
            if (this == minimal && !replace.equals("true") && !replace.equals("false") && !replace.equals("null") && f7227d.matcher(replace).matches()) {
                return replace;
            }
            return '\"' + replace.replace("\"", "\\\"") + '\"';
        }
        return String.valueOf(obj);
    }
}
