package com.prineside.luaj.parser;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class Token implements Serializable {
    public int beginColumn;
    public int beginLine;
    public int endColumn;
    public int endLine;
    public String image;
    public int kind;
    public Token next;
    public Token specialToken;

    public Token() {
    }

    public Token(int i) {
        this(i, null);
    }

    public static Token newToken(int i, String str) {
        return new Token(i, str);
    }

    public Object getValue() {
        return null;
    }

    public String toString() {
        return this.image;
    }

    public Token(int i, String str) {
        this.kind = i;
        this.image = str;
    }

    public static Token newToken(int i) {
        return newToken(i, null);
    }
}
