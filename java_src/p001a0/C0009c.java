package p001a0;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import com.badlogic.gdx.net.HttpStatus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p001a0.C0018f;
import p190u.C6811d;
/* renamed from: a0.c */
/* loaded from: classes.dex */
public class C0009c {

    /* renamed from: a */
    public static final Comparator<byte[]> f9a = new C0010a();

    /* renamed from: a0.c$a */
    /* loaded from: classes.dex */
    public class C0010a implements Comparator<byte[]> {
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            if (bArr.length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int i = 0; i < bArr.length; i++) {
                byte b = bArr[i];
                byte b2 = bArr2[i];
                if (b != b2) {
                    return b - b2;
                }
            }
            return 0;
        }
    }

    /* renamed from: a */
    public static List<byte[]> m27836a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    /* renamed from: f */
    public static C0018f.C0020b[] m27831f(Context context, C0011d c0011d, String str, CancellationSignal cancellationSignal) {
        int i;
        Cursor query;
        int i2;
        int i3;
        Uri withAppendedId;
        int i4;
        boolean z;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
            if (Build.VERSION.SDK_INT > 16) {
                i = 1;
                query = context.getContentResolver().query(build, strArr, "query = ?", new String[]{c0011d.m27823g()}, null, cancellationSignal);
            } else {
                i = 1;
                query = context.getContentResolver().query(build, strArr, "query = ?", new String[]{c0011d.m27823g()}, null);
            }
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        int columnIndex = query.getColumnIndex("result_code");
                        arrayList = new ArrayList();
                        int columnIndex2 = query.getColumnIndex("_id");
                        int columnIndex3 = query.getColumnIndex("file_id");
                        int columnIndex4 = query.getColumnIndex("font_ttc_index");
                        int columnIndex5 = query.getColumnIndex("font_weight");
                        int columnIndex6 = query.getColumnIndex("font_italic");
                        while (query.moveToNext()) {
                            if (columnIndex != -1) {
                                i2 = query.getInt(columnIndex);
                            } else {
                                i2 = 0;
                            }
                            if (columnIndex4 != -1) {
                                i3 = query.getInt(columnIndex4);
                            } else {
                                i3 = 0;
                            }
                            if (columnIndex3 == -1) {
                                withAppendedId = ContentUris.withAppendedId(build, query.getLong(columnIndex2));
                            } else {
                                withAppendedId = ContentUris.withAppendedId(build2, query.getLong(columnIndex3));
                            }
                            if (columnIndex5 != -1) {
                                i4 = query.getInt(columnIndex5);
                            } else {
                                i4 = HttpStatus.SC_BAD_REQUEST;
                            }
                            if (columnIndex6 != -1 && query.getInt(columnIndex6) == i) {
                                z = true;
                            } else {
                                z = false;
                            }
                            arrayList.add(C0018f.C0020b.m27808a(withAppendedId, i3, i4, z, i2));
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return (C0018f.C0020b[]) arrayList.toArray(new C0018f.C0020b[0]);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: b */
    public static boolean m27835b(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static List<List<byte[]>> m27834c(C0011d c0011d, Resources resources) {
        if (c0011d.m27828b() != null) {
            return c0011d.m27828b();
        }
        return C6811d.m3342c(resources, c0011d.m27827c());
    }

    /* renamed from: d */
    public static C0018f.C0019a m27833d(Context context, C0011d c0011d, CancellationSignal cancellationSignal) {
        ProviderInfo m27832e = m27832e(context.getPackageManager(), c0011d, context.getResources());
        if (m27832e == null) {
            return C0018f.C0019a.m27811a(1, null);
        }
        return C0018f.C0019a.m27811a(0, m27831f(context, c0011d, m27832e.authority, cancellationSignal));
    }

    /* renamed from: e */
    public static ProviderInfo m27832e(PackageManager packageManager, C0011d c0011d, Resources resources) {
        String m27825e = c0011d.m27825e();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(m27825e, 0);
        if (resolveContentProvider != null) {
            if (resolveContentProvider.packageName.equals(c0011d.m27824f())) {
                List<byte[]> m27836a = m27836a(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                Collections.sort(m27836a, f9a);
                List<List<byte[]>> m27834c = m27834c(c0011d, resources);
                for (int i = 0; i < m27834c.size(); i++) {
                    ArrayList arrayList = new ArrayList(m27834c.get(i));
                    Collections.sort(arrayList, f9a);
                    if (m27835b(m27836a, arrayList)) {
                        return resolveContentProvider;
                    }
                }
                return null;
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + m27825e + ", but package was not " + c0011d.m27824f());
        }
        throw new PackageManager.NameNotFoundException("No package found for authority: " + m27825e);
    }
}
