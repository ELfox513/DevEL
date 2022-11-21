package p168r4;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
/* renamed from: r4.ec4 */
/* loaded from: classes2.dex */
public abstract class ec4<K, V> {

    /* renamed from: a */
    public static final String f22943a = "ec4";

    /* renamed from: a */
    public abstract HashMap<K, V> mo4497a();

    public final String toString() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(mo4497a());
            objectOutputStream.close();
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static <K, V> HashMap<K, V> m11813b(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return (HashMap) new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str.getBytes(), 0))).readObject();
            }
            return null;
        } catch (IOException | ClassNotFoundException unused) {
            Log.d(f22943a, "decode object failure");
            return null;
        }
    }
}
