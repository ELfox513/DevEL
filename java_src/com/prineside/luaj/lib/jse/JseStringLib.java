package com.prineside.luaj.lib.jse;

import com.prineside.luaj.lib.StringLib;
/* loaded from: classes2.dex */
public class JseStringLib extends StringLib {
    @Override // com.prineside.luaj.lib.StringLib
    /* renamed from: t */
    public String mo22390t(String str, double d) {
        try {
            return String.format(str, Double.valueOf(d));
        } catch (Throwable unused) {
            return super.mo22390t(str, d);
        }
    }
}
