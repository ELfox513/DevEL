package com.badlogic.gdx.net;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class HttpParametersUtils {
    public static String defaultEncoding = "UTF-8";
    public static String nameValueSeparator = "=";
    public static String parameterSeparator = "&";

    /* renamed from: a */
    public static String m23899a(String str, String str2) {
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static String convertHttpParameters(Map<String, String> map) {
        Set<String> keySet = map.keySet();
        StringBuilder sb = new StringBuilder();
        for (String str : keySet) {
            sb.append(m23899a(str, defaultEncoding));
            sb.append(nameValueSeparator);
            sb.append(m23899a(map.get(str), defaultEncoding));
            sb.append(parameterSeparator);
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }
}
