package com.badlogic.gdx.utils;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectMap;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class XmlReader {

    /* renamed from: f */
    public static final byte[] f6782f = m23475d();

    /* renamed from: g */
    public static final byte[] f6783g = m23472g();

    /* renamed from: h */
    public static final char[] f6784h = m23468k();

    /* renamed from: i */
    public static final byte[] f6785i = m23470i();

    /* renamed from: j */
    public static final byte[] f6786j = m23471h();

    /* renamed from: k */
    public static final short[] f6787k = m23474e();

    /* renamed from: l */
    public static final byte[] f6788l = m23473f();

    /* renamed from: m */
    public static final byte[] f6789m = m23467l();

    /* renamed from: n */
    public static final byte[] f6790n = m23469j();

    /* renamed from: b */
    public Element f6792b;

    /* renamed from: c */
    public Element f6793c;

    /* renamed from: e */
    public String f6795e;

    /* renamed from: a */
    public final Array<Element> f6791a = new Array<>(8);

    /* renamed from: d */
    public final StringBuilder f6794d = new StringBuilder(64);

    /* loaded from: classes.dex */
    public static class Element {

        /* renamed from: a */
        public final String f6796a;

        /* renamed from: b */
        public ObjectMap<String, String> f6797b;

        /* renamed from: c */
        public Array<Element> f6798c;

        /* renamed from: d */
        public String f6799d;

        /* renamed from: e */
        public Element f6800e;

        public String get(String str) {
            String str2 = get(str, null);
            if (str2 != null) {
                return str2;
            }
            throw new GdxRuntimeException("Element " + this.f6796a + " doesn't have attribute or child: " + str);
        }

        public String getAttribute(String str) {
            ObjectMap<String, String> objectMap = this.f6797b;
            if (objectMap != null) {
                String str2 = objectMap.get(str);
                if (str2 != null) {
                    return str2;
                }
                throw new GdxRuntimeException("Element " + this.f6796a + " doesn't have attribute: " + str);
            }
            throw new GdxRuntimeException("Element " + this.f6796a + " doesn't have attribute: " + str);
        }

        public ObjectMap<String, String> getAttributes() {
            return this.f6797b;
        }

        public boolean getBoolean(String str) {
            String str2 = get(str, null);
            if (str2 != null) {
                return Boolean.parseBoolean(str2);
            }
            throw new GdxRuntimeException("Element " + this.f6796a + " doesn't have attribute or child: " + str);
        }

        public boolean getBooleanAttribute(String str) {
            return Boolean.parseBoolean(getAttribute(str));
        }

        public float getFloat(String str) {
            String str2 = get(str, null);
            if (str2 != null) {
                return Float.parseFloat(str2);
            }
            throw new GdxRuntimeException("Element " + this.f6796a + " doesn't have attribute or child: " + str);
        }

        public float getFloatAttribute(String str) {
            return Float.parseFloat(getAttribute(str));
        }

        public int getInt(String str) {
            String str2 = get(str, null);
            if (str2 != null) {
                return Integer.parseInt(str2);
            }
            throw new GdxRuntimeException("Element " + this.f6796a + " doesn't have attribute or child: " + str);
        }

        public int getIntAttribute(String str) {
            return Integer.parseInt(getAttribute(str));
        }

        public String getName() {
            return this.f6796a;
        }

        public Element getParent() {
            return this.f6800e;
        }

        public String getText() {
            return this.f6799d;
        }

        public void remove() {
            this.f6800e.removeChild(this);
        }

        public void removeChild(int i) {
            Array<Element> array = this.f6798c;
            if (array != null) {
                array.removeIndex(i);
            }
        }

        public void setText(String str) {
            this.f6799d = str;
        }

        public String toString() {
            return toString("");
        }

        /* renamed from: a */
        public final void m23464a(String str, Array<Element> array) {
            if (this.f6798c == null) {
                return;
            }
            int i = 0;
            while (true) {
                Array<Element> array2 = this.f6798c;
                if (i < array2.size) {
                    Element element = array2.get(i);
                    if (element.f6796a.equals(str)) {
                        array.add(element);
                    }
                    element.m23464a(str, array);
                    i++;
                } else {
                    return;
                }
            }
        }

        public void addChild(Element element) {
            if (this.f6798c == null) {
                this.f6798c = new Array<>(8);
            }
            this.f6798c.add(element);
        }

        public boolean getBooleanAttribute(String str, boolean z) {
            String attribute = getAttribute(str, null);
            return attribute == null ? z : Boolean.parseBoolean(attribute);
        }

        public Element getChild(int i) {
            Array<Element> array = this.f6798c;
            if (array != null) {
                return array.get(i);
            }
            throw new GdxRuntimeException("Element has no children: " + this.f6796a);
        }

        @Null
        public Element getChildByName(String str) {
            if (this.f6798c == null) {
                return null;
            }
            int i = 0;
            while (true) {
                Array<Element> array = this.f6798c;
                if (i >= array.size) {
                    return null;
                }
                Element element = array.get(i);
                if (element.f6796a.equals(str)) {
                    return element;
                }
                i++;
            }
        }

        @Null
        public Element getChildByNameRecursive(String str) {
            if (this.f6798c == null) {
                return null;
            }
            int i = 0;
            while (true) {
                Array<Element> array = this.f6798c;
                if (i >= array.size) {
                    return null;
                }
                Element element = array.get(i);
                if (element.f6796a.equals(str)) {
                    return element;
                }
                Element childByNameRecursive = element.getChildByNameRecursive(str);
                if (childByNameRecursive != null) {
                    return childByNameRecursive;
                }
                i++;
            }
        }

        public int getChildCount() {
            Array<Element> array = this.f6798c;
            if (array == null) {
                return 0;
            }
            return array.size;
        }

        public Array<Element> getChildrenByName(String str) {
            Array<Element> array = new Array<>();
            if (this.f6798c == null) {
                return array;
            }
            int i = 0;
            while (true) {
                Array<Element> array2 = this.f6798c;
                if (i < array2.size) {
                    Element element = array2.get(i);
                    if (element.f6796a.equals(str)) {
                        array.add(element);
                    }
                    i++;
                } else {
                    return array;
                }
            }
        }

        public Array<Element> getChildrenByNameRecursively(String str) {
            Array<Element> array = new Array<>();
            m23464a(str, array);
            return array;
        }

        public float getFloatAttribute(String str, float f) {
            String attribute = getAttribute(str, null);
            return attribute == null ? f : Float.parseFloat(attribute);
        }

        public int getIntAttribute(String str, int i) {
            String attribute = getAttribute(str, null);
            return attribute == null ? i : Integer.parseInt(attribute);
        }

        public boolean hasAttribute(String str) {
            ObjectMap<String, String> objectMap = this.f6797b;
            if (objectMap == null) {
                return false;
            }
            return objectMap.containsKey(str);
        }

        public boolean hasChild(String str) {
            if (this.f6798c == null || getChildByName(str) == null) {
                return false;
            }
            return true;
        }

        public boolean hasChildRecursive(String str) {
            if (this.f6798c == null || getChildByNameRecursive(str) == null) {
                return false;
            }
            return true;
        }

        public void removeChild(Element element) {
            Array<Element> array = this.f6798c;
            if (array != null) {
                array.removeValue(element, true);
            }
        }

        public void setAttribute(String str, String str2) {
            if (this.f6797b == null) {
                this.f6797b = new ObjectMap<>(8);
            }
            this.f6797b.put(str, str2);
        }

        public String toString(String str) {
            String str2;
            StringBuilder stringBuilder = new StringBuilder(128);
            stringBuilder.append(str);
            stringBuilder.append('<');
            stringBuilder.append(this.f6796a);
            ObjectMap<String, String> objectMap = this.f6797b;
            if (objectMap != null) {
                ObjectMap.Entries<String, String> it = objectMap.entries().iterator();
                while (it.hasNext()) {
                    ObjectMap.Entry next = it.next();
                    stringBuilder.append(' ');
                    stringBuilder.append((String) next.key);
                    stringBuilder.append("=\"");
                    stringBuilder.append((String) next.value);
                    stringBuilder.append('\"');
                }
            }
            if (this.f6798c == null && ((str2 = this.f6799d) == null || str2.length() == 0)) {
                stringBuilder.append("/>");
            } else {
                stringBuilder.append(">\n");
                String str3 = str + '\t';
                String str4 = this.f6799d;
                if (str4 != null && str4.length() > 0) {
                    stringBuilder.append(str3);
                    stringBuilder.append(this.f6799d);
                    stringBuilder.append('\n');
                }
                Array<Element> array = this.f6798c;
                if (array != null) {
                    Array.ArrayIterator<Element> it2 = array.iterator();
                    while (it2.hasNext()) {
                        stringBuilder.append(it2.next().toString(str3));
                        stringBuilder.append('\n');
                    }
                }
                stringBuilder.append(str);
                stringBuilder.append("</");
                stringBuilder.append(this.f6796a);
                stringBuilder.append('>');
            }
            return stringBuilder.toString();
        }

        public Element(String str, Element element) {
            this.f6796a = str;
            this.f6800e = element;
        }

        public String get(String str, String str2) {
            String text;
            String str3;
            ObjectMap<String, String> objectMap = this.f6797b;
            if (objectMap == null || (str3 = objectMap.get(str)) == null) {
                Element childByName = getChildByName(str);
                return (childByName == null || (text = childByName.getText()) == null) ? str2 : text;
            }
            return str3;
        }

        public boolean getBoolean(String str, boolean z) {
            String str2 = get(str, null);
            return str2 == null ? z : Boolean.parseBoolean(str2);
        }

        public float getFloat(String str, float f) {
            String str2 = get(str, null);
            return str2 == null ? f : Float.parseFloat(str2);
        }

        public int getInt(String str, int i) {
            String str2 = get(str, null);
            return str2 == null ? i : Integer.parseInt(str2);
        }

        public String getAttribute(String str, String str2) {
            String str3;
            ObjectMap<String, String> objectMap = this.f6797b;
            return (objectMap == null || (str3 = objectMap.get(str)) == null) ? str2 : str3;
        }
    }

    /* renamed from: d */
    public static byte[] m23475d() {
        return new byte[]{0, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 2, 1, 4, 2, 2, 4, 2, 6, 7, 2, 6, 8, 3, 0, 6, 7};
    }

    /* renamed from: e */
    public static short[] m23474e() {
        return new short[]{0, 0, 4, 9, 14, 20, 26, 30, 35, 37, 39, 44, 48, 52, 54, 56, 60, 62, 67, 72, 78, 84, 88, 93, 95, 97, 102, 106, 110, 112, 116, 118, 120, 122, 124, 127};
    }

    /* renamed from: f */
    public static byte[] m23473f() {
        return new byte[]{0, 2, 0, 1, 2, 1, 1, 2, 3, 5, 6, 7, 5, 4, 9, 10, 1, 11, 9, 8, 13, 1, 14, 1, 13, 12, 15, 16, 15, 1, 16, 17, 18, 16, 1, 20, 19, 22, 21, 9, 10, 11, 9, 1, 23, 24, 23, 1, 25, 11, 25, 1, 20, 26, 22, 27, 29, 30, 29, 28, 32, 31, 30, 34, 1, 30, 33, 36, 37, 38, 36, 35, 40, 41, 1, 42, 40, 39, 44, 1, 45, 1, 44, 43, 46, 47, 46, 1, 47, 48, 49, 47, 1, 51, 50, 53, 52, 40, 41, 42, 40, 1, 54, 55, 54, 1, 56, 42, 56, 1, 57, 1, 57, 34, 57, 1, 1, 58, 59, 58, 51, 60, 53, 61, 62, 62, 1, 1, 0};
    }

    /* renamed from: g */
    public static byte[] m23472g() {
        return new byte[]{0, 0, 4, 9, 14, 20, 26, 30, 35, 36, 37, 42, 46, 50, 51, 52, 56, 57, 62, 67, 73, 79, 83, 88, 89, 90, 95, 99, 103, 104, 108, 109, 110, 111, 112, 115};
    }

    /* renamed from: h */
    public static byte[] m23471h() {
        return new byte[]{0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0};
    }

    /* renamed from: i */
    public static byte[] m23470i() {
        return new byte[]{0, 2, 3, 3, 4, 4, 2, 3, 1, 1, 3, 2, 2, 1, 1, 2, 1, 3, 3, 4, 4, 2, 3, 1, 1, 3, 2, 2, 1, 2, 1, 1, 1, 1, 1, 0};
    }

    /* renamed from: j */
    public static byte[] m23469j() {
        return new byte[]{0, 0, 0, 1, 0, 3, 3, 13, 1, 0, 0, 9, 0, 11, 11, 0, 0, 0, 0, 1, 25, 0, 19, 5, 16, 0, 1, 0, 1, 0, 0, 0, 22, 1, 0, 0, 3, 3, 13, 1, 0, 0, 9, 0, 11, 11, 0, 0, 0, 0, 1, 25, 0, 19, 5, 16, 0, 0, 0, 7, 1, 0, 0};
    }

    /* renamed from: k */
    public static char[] m23468k() {
        return new char[]{' ', '<', '\t', '\r', ' ', '/', '>', '\t', '\r', ' ', '/', '>', '\t', '\r', ' ', '/', SignatureVisitor.INSTANCEOF, '>', '\t', '\r', ' ', '/', SignatureVisitor.INSTANCEOF, '>', '\t', '\r', ' ', SignatureVisitor.INSTANCEOF, '\t', '\r', ' ', '\"', '\'', '\t', '\r', '\"', '\"', ' ', '/', '>', '\t', '\r', ' ', '>', '\t', '\r', ' ', '>', '\t', '\r', '\'', '\'', ' ', '<', '\t', '\r', '<', ' ', '/', '>', '\t', '\r', ' ', '/', '>', '\t', '\r', ' ', '/', SignatureVisitor.INSTANCEOF, '>', '\t', '\r', ' ', '/', SignatureVisitor.INSTANCEOF, '>', '\t', '\r', ' ', SignatureVisitor.INSTANCEOF, '\t', '\r', ' ', '\"', '\'', '\t', '\r', '\"', '\"', ' ', '/', '>', '\t', '\r', ' ', '>', '\t', '\r', ' ', '>', '\t', '\r', '<', ' ', '/', '\t', '\r', '>', '>', '\'', '\'', ' ', '\t', '\r', 0};
    }

    /* renamed from: l */
    public static byte[] m23467l() {
        return new byte[]{1, 0, 2, 3, 3, 4, 11, 34, 5, 4, 11, 34, 5, 6, 7, 6, 7, 8, 13, 9, 10, 9, 10, 12, 34, 12, 14, 14, 16, 15, 17, 16, 17, 18, 30, 18, 19, 26, 28, 20, 19, 26, 28, 20, 21, 22, 21, 22, 23, 32, 24, 25, 24, 25, 27, 28, 27, 29, 31, 35, 33, 33, 34};
    }

    /* renamed from: a */
    public void m23478a(String str, String str2) {
        this.f6793c.setAttribute(str, str2);
    }

    public Element parse(String str) {
        char[] charArray = str.toCharArray();
        return parse(charArray, 0, charArray.length);
    }

    /* renamed from: b */
    public void m23477b() {
        Element element;
        this.f6792b = this.f6791a.pop();
        Array<Element> array = this.f6791a;
        if (array.size > 0) {
            element = array.peek();
        } else {
            element = null;
        }
        this.f6793c = element;
    }

    @Null
    /* renamed from: c */
    public String m23476c(String str) {
        if (str.equals("lt")) {
            return "<";
        }
        if (str.equals("gt")) {
            return ">";
        }
        if (str.equals("amp")) {
            return "&";
        }
        if (str.equals("apos")) {
            return "'";
        }
        if (str.equals("quot")) {
            return "\"";
        }
        if (str.startsWith("#x")) {
            return Character.toString((char) Integer.parseInt(str.substring(2), 16));
        }
        return null;
    }

    /* renamed from: m */
    public void m23466m(String str) {
        Element element = new Element(str, this.f6793c);
        Element element2 = this.f6793c;
        if (element2 != null) {
            element2.addChild(element);
        }
        this.f6791a.add(element);
        this.f6793c = element;
    }

    /* renamed from: n */
    public void m23465n(String str) {
        String text = this.f6793c.getText();
        Element element = this.f6793c;
        if (text != null) {
            str = text + str;
        }
        element.setText(str);
    }

    public Element parse(Reader reader) {
        try {
            try {
                char[] cArr = new char[1024];
                int i = 0;
                while (true) {
                    int read = reader.read(cArr, i, cArr.length - i);
                    if (read == -1) {
                        return parse(cArr, 0, i);
                    }
                    if (read == 0) {
                        char[] cArr2 = new char[cArr.length * 2];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        cArr = cArr2;
                    } else {
                        i += read;
                    }
                }
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        } finally {
            StreamUtils.closeQuietly(reader);
        }
    }

    public Element parse(InputStream inputStream) {
        try {
            try {
                return parse(new InputStreamReader(inputStream, "UTF-8"));
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        } finally {
            StreamUtils.closeQuietly(inputStream);
        }
    }

    public Element parse(FileHandle fileHandle) {
        try {
            return parse(fileHandle.reader("UTF-8"));
        } catch (Exception e) {
            throw new SerializationException("Error parsing file: " + fileHandle, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0162, code lost:
        r7 = 2;
        r8 = 1;
        r10 = 2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0235 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0230 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x001c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x013d  */
    /* JADX WARN: Type inference failed for: r16v5, types: [int] */
    /* JADX WARN: Type inference failed for: r4v12, types: [int] */
    /* JADX WARN: Type inference failed for: r4v27, types: [int] */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.badlogic.gdx.utils.XmlReader.Element parse(char[] r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.XmlReader.parse(char[], int, int):com.badlogic.gdx.utils.XmlReader$Element");
    }
}
