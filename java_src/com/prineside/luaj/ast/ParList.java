package com.prineside.luaj.ast;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class ParList extends SyntaxElement {
    public static final List<Name> EMPTY_NAMELIST;
    public static final ParList EMPTY_PARLIST;
    public final boolean isvararg;
    public final List<Name> names;

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    static {
        ArrayList arrayList = new ArrayList();
        EMPTY_NAMELIST = arrayList;
        EMPTY_PARLIST = new ParList(arrayList, false);
    }

    public ParList(List<Name> list, boolean z) {
        this.names = list;
        this.isvararg = z;
    }
}
