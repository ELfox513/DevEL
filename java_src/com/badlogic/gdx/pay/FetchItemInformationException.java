package com.badlogic.gdx.pay;
/* loaded from: classes.dex */
public class FetchItemInformationException extends GdxPayException {
    public FetchItemInformationException() {
        super("Failed to fetch item list - check your connection");
    }

    public FetchItemInformationException(String str) {
        super("Failed to fetch item list - check your connection (" + str + ")");
    }
}
