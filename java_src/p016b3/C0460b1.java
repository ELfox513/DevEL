package p016b3;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p168r4.cm0;
import p168r4.uo2;
/* renamed from: b3.b1 */
/* loaded from: classes.dex */
public final class C0460b1 {

    /* renamed from: a */
    public static final InterfaceC0456a1<Map<String, ?>> f1551a = new C0551z0();

    /* renamed from: k */
    public static Bundle m26419k(JSONObject jSONObject) {
        String str;
        Bundle bundle;
        String str2;
        String str3;
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> keys = jSONObject.keys();
        Bundle bundle2 = new Bundle();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (opt != null) {
                if (opt instanceof Boolean) {
                    bundle2.putBoolean(next, ((Boolean) opt).booleanValue());
                } else if (opt instanceof Double) {
                    bundle2.putDouble(next, ((Double) opt).doubleValue());
                } else if (opt instanceof Integer) {
                    bundle2.putInt(next, ((Integer) opt).intValue());
                } else if (opt instanceof Long) {
                    bundle2.putLong(next, ((Long) opt).longValue());
                } else if (opt instanceof String) {
                    bundle2.putString(next, (String) opt);
                } else if (opt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) opt;
                    if (jSONArray.length() != 0) {
                        int length = jSONArray.length();
                        int i = 0;
                        Object obj = null;
                        for (int i2 = 0; obj == null && i2 < length; i2++) {
                            if (!jSONArray.isNull(i2)) {
                                obj = jSONArray.opt(i2);
                            } else {
                                obj = null;
                            }
                        }
                        if (obj == null) {
                            String valueOf = String.valueOf(next);
                            if (valueOf.length() != 0) {
                                str = "Expected JSONArray with at least 1 non-null element for key:".concat(valueOf);
                            } else {
                                str = new String("Expected JSONArray with at least 1 non-null element for key:");
                            }
                            cm0.m12437f(str);
                        } else if (obj instanceof JSONObject) {
                            Parcelable[] parcelableArr = new Bundle[length];
                            while (i < length) {
                                if (!jSONArray.isNull(i)) {
                                    bundle = m26419k(jSONArray.optJSONObject(i));
                                } else {
                                    bundle = null;
                                }
                                parcelableArr[i] = bundle;
                                i++;
                            }
                            bundle2.putParcelableArray(next, parcelableArr);
                        } else if (obj instanceof Number) {
                            double[] dArr = new double[jSONArray.length()];
                            while (i < length) {
                                dArr[i] = jSONArray.optDouble(i);
                                i++;
                            }
                            bundle2.putDoubleArray(next, dArr);
                        } else if (obj instanceof CharSequence) {
                            String[] strArr = new String[length];
                            while (i < length) {
                                if (!jSONArray.isNull(i)) {
                                    str2 = jSONArray.optString(i);
                                } else {
                                    str2 = null;
                                }
                                strArr[i] = str2;
                                i++;
                            }
                            bundle2.putStringArray(next, strArr);
                        } else if (obj instanceof Boolean) {
                            boolean[] zArr = new boolean[length];
                            while (i < length) {
                                zArr[i] = jSONArray.optBoolean(i);
                                i++;
                            }
                            bundle2.putBooleanArray(next, zArr);
                        } else {
                            cm0.m12437f(String.format("JSONArray with unsupported type %s for key:%s", obj.getClass().getCanonicalName(), next));
                        }
                    }
                } else if (opt instanceof JSONObject) {
                    bundle2.putBundle(next, m26419k((JSONObject) opt));
                } else {
                    String valueOf2 = String.valueOf(next);
                    if (valueOf2.length() != 0) {
                        str3 = "Unsupported type for key:".concat(valueOf2);
                    } else {
                        str3 = new String("Unsupported type for key:");
                    }
                    cm0.m12437f(str3);
                }
            }
        }
        return bundle2;
    }

    /* renamed from: l */
    public static String m26418l(uo2 uo2Var) {
        if (uo2Var == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            m26417m(jsonWriter, uo2Var);
            jsonWriter.close();
            return stringWriter.toString();
        } catch (IOException e) {
            cm0.m12439d("Error when writing JSON.", e);
            return null;
        }
    }

    /* renamed from: n */
    public static JSONObject m26416n(JSONObject jSONObject, String[] strArr) {
        for (int i = 0; i < strArr.length - 1; i++) {
            if (jSONObject == null) {
                return null;
            }
            jSONObject = jSONObject.optJSONObject(strArr[i]);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static List<String> m26429a(JSONArray jSONArray, List<String> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                list.add(jSONArray.getString(i));
            }
        }
        return list;
    }

    /* renamed from: b */
    public static List<String> m26428b(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(jsonReader.nextString());
        }
        jsonReader.endArray();
        return arrayList;
    }

    /* renamed from: c */
    public static JSONObject m26427c(JsonReader jsonReader) {
        JSONObject jSONObject = new JSONObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONObject.put(nextName, m26426d(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONObject.put(nextName, m26427c(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextDouble());
            } else if (JsonToken.STRING.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextString());
            } else {
                throw new IllegalStateException("unexpected json token: ".concat(String.valueOf(peek)));
            }
        }
        jsonReader.endObject();
        return jSONObject;
    }

    /* renamed from: d */
    public static JSONArray m26426d(JsonReader jsonReader) {
        JSONArray jSONArray = new JSONArray();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONArray.put(m26426d(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONArray.put(m26427c(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONArray.put(jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONArray.put(jsonReader.nextDouble());
            } else if (JsonToken.STRING.equals(peek)) {
                jSONArray.put(jsonReader.nextString());
            } else {
                throw new IllegalStateException("unexpected json token: ".concat(String.valueOf(peek)));
            }
        }
        jsonReader.endArray();
        return jSONArray;
    }

    /* renamed from: m */
    public static void m26417m(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.nullValue();
        } else if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
        } else if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
        } else if (obj instanceof String) {
            jsonWriter.value((String) obj);
        } else if (obj instanceof uo2) {
            m26425e(jsonWriter, ((uo2) obj).f32345d);
        } else if (obj instanceof Map) {
            jsonWriter.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (key instanceof String) {
                    m26417m(jsonWriter.name((String) key), entry.getValue());
                }
            }
            jsonWriter.endObject();
        } else if (obj instanceof List) {
            jsonWriter.beginArray();
            for (Object obj2 : (List) obj) {
                m26417m(jsonWriter, obj2);
            }
            jsonWriter.endArray();
        } else {
            jsonWriter.nullValue();
        }
    }

    /* renamed from: e */
    public static void m26425e(JsonWriter jsonWriter, JSONObject jSONObject) {
        try {
            jsonWriter.beginObject();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    jsonWriter.name(next).value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.name(next).value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.name(next).value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    m26425e(jsonWriter.name(next), (JSONObject) obj);
                } else if (obj instanceof JSONArray) {
                    m26424f(jsonWriter.name(next), (JSONArray) obj);
                } else {
                    String valueOf = String.valueOf(obj);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 23);
                    sb.append("unable to write field: ");
                    sb.append(valueOf);
                    throw new JSONException(sb.toString());
                }
            }
            jsonWriter.endObject();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: f */
    public static void m26424f(JsonWriter jsonWriter, JSONArray jSONArray) {
        try {
            jsonWriter.beginArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj = jSONArray.get(i);
                if (obj instanceof String) {
                    jsonWriter.value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    m26425e(jsonWriter, (JSONObject) obj);
                } else if (obj instanceof JSONArray) {
                    m26424f(jsonWriter, (JSONArray) obj);
                } else {
                    String valueOf = String.valueOf(obj);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 23);
                    sb.append("unable to write field: ");
                    sb.append(valueOf);
                    throw new JSONException(sb.toString());
                }
            }
            jsonWriter.endArray();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: g */
    public static JSONObject m26423g(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException unused) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            return jSONObject2;
        }
    }

    /* renamed from: h */
    public static JSONObject m26422h(JSONObject jSONObject, String... strArr) {
        JSONObject m26416n = m26416n(jSONObject, strArr);
        if (m26416n == null) {
            return null;
        }
        return m26416n.optJSONObject(strArr[1]);
    }

    /* renamed from: i */
    public static boolean m26421i(boolean z, JSONObject jSONObject, String... strArr) {
        JSONObject m26416n = m26416n(jSONObject, strArr);
        if (m26416n == null) {
            return false;
        }
        return m26416n.optBoolean(strArr[strArr.length - 1], false);
    }

    /* renamed from: j */
    public static String m26420j(String str, JSONObject jSONObject, String... strArr) {
        JSONObject m26416n = m26416n(jSONObject, strArr);
        if (m26416n == null) {
            return "";
        }
        return m26416n.optString(strArr[0], "");
    }
}
