package com.prineside.luaj.ast;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class FuncName extends SyntaxElement {
    public List<String> dots;
    public String method;
    public final Name name;

    public void adddot(String str) {
        if (this.dots == null) {
            this.dots = new ArrayList();
        }
        this.dots.add(str);
    }

    public FuncName(String str) {
        this.name = new Name(str);
    }
}
