package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k */
    public static final PorterDuff.Mode f844k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a */
    public int f845a;

    /* renamed from: b */
    public Object f846b;

    /* renamed from: c */
    public byte[] f847c;

    /* renamed from: d */
    public Parcelable f848d;

    /* renamed from: e */
    public int f849e;

    /* renamed from: f */
    public int f850f;

    /* renamed from: g */
    public ColorStateList f851g;

    /* renamed from: h */
    public PorterDuff.Mode f852h;

    /* renamed from: i */
    public String f853i;

    /* renamed from: j */
    public String f854j;

    public IconCompat() {
        this.f845a = -1;
        this.f847c = null;
        this.f848d = null;
        this.f849e = 0;
        this.f850f = 0;
        this.f851g = null;
        this.f852h = f844k;
        this.f853i = null;
    }

    /* renamed from: p */
    public static String m27207p(int i) {
        switch (i) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    @Deprecated
    /* renamed from: n */
    public Icon m27209n() {
        return m27208o(null);
    }

    /* renamed from: b */
    public static IconCompat m27221b(Resources resources, String str, int i) {
        if (str != null) {
            if (i != 0) {
                IconCompat iconCompat = new IconCompat(2);
                iconCompat.f849e = i;
                if (resources != null) {
                    try {
                        iconCompat.f846b = resources.getResourceName(i);
                    } catch (Resources.NotFoundException unused) {
                        throw new IllegalArgumentException("Icon resource cannot be found");
                    }
                } else {
                    iconCompat.f846b = str;
                }
                iconCompat.f854j = str;
                return iconCompat;
            }
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        throw new IllegalArgumentException("Package must not be null.");
    }

    /* renamed from: d */
    public static int m27219d(Icon icon) {
        int resId;
        if (Build.VERSION.SDK_INT >= 28) {
            resId = icon.getResId();
            return resId;
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon resource", e);
            return 0;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        }
    }

    /* renamed from: f */
    public static String m27217f(Icon icon) {
        String resPackage;
        if (Build.VERSION.SDK_INT >= 28) {
            resPackage = icon.getResPackage();
            return resPackage;
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon package", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon package", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        }
    }

    /* renamed from: h */
    public static int m27215h(Icon icon) {
        int type;
        if (Build.VERSION.SDK_INT >= 28) {
            type = icon.getType();
            return type;
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e);
            return -1;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e2);
            return -1;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e3);
            return -1;
        }
    }

    /* renamed from: j */
    public static Uri m27213j(Icon icon) {
        Uri uri;
        if (Build.VERSION.SDK_INT >= 28) {
            uri = icon.getUri();
            return uri;
        }
        try {
            return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon uri", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon uri", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon uri", e3);
            return null;
        }
    }

    /* renamed from: c */
    public int m27220c() {
        int i = this.f845a;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return m27219d((Icon) this.f846b);
        }
        if (i == 2) {
            return this.f849e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    /* renamed from: e */
    public String m27218e() {
        int i = this.f845a;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return m27217f((Icon) this.f846b);
        }
        if (i == 2) {
            if (TextUtils.isEmpty(this.f854j)) {
                return ((String) this.f846b).split(":", -1)[0];
            }
            return this.f854j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    /* renamed from: g */
    public int m27216g() {
        int i = this.f845a;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return m27215h((Icon) this.f846b);
        }
        return i;
    }

    /* renamed from: i */
    public Uri m27214i() {
        int i = this.f845a;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return m27213j((Icon) this.f846b);
        }
        if (i != 4 && i != 6) {
            throw new IllegalStateException("called getUri() on " + this);
        }
        return Uri.parse((String) this.f846b);
    }

    /* renamed from: l */
    public void m27211l() {
        this.f852h = PorterDuff.Mode.valueOf(this.f853i);
        switch (this.f845a) {
            case -1:
                Parcelable parcelable = this.f848d;
                if (parcelable != null) {
                    this.f846b = parcelable;
                    return;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f848d;
                if (parcelable2 != null) {
                    this.f846b = parcelable2;
                    return;
                }
                byte[] bArr = this.f847c;
                this.f846b = bArr;
                this.f845a = 3;
                this.f849e = 0;
                this.f850f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f847c, Charset.forName("UTF-16"));
                this.f846b = str;
                if (this.f845a == 2 && this.f854j == null) {
                    this.f854j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f846b = this.f847c;
                return;
        }
    }

    /* renamed from: m */
    public void m27210m(boolean z) {
        this.f853i = this.f852h.name();
        switch (this.f845a) {
            case -1:
                if (!z) {
                    this.f848d = (Parcelable) this.f846b;
                    return;
                }
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (z) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ((Bitmap) this.f846b).compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.f847c = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.f848d = (Parcelable) this.f846b;
                return;
            case 2:
                this.f847c = ((String) this.f846b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f847c = (byte[]) this.f846b;
                return;
            case 4:
            case 6:
                this.f847c = this.f846b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    /* renamed from: o */
    public Icon m27208o(Context context) {
        Icon createWithBitmap;
        switch (this.f845a) {
            case -1:
                return (Icon) this.f846b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) this.f846b);
                break;
            case 2:
                createWithBitmap = Icon.createWithResource(m27218e(), this.f849e);
                break;
            case 3:
                createWithBitmap = Icon.createWithData((byte[]) this.f846b, this.f849e, this.f850f);
                break;
            case 4:
                createWithBitmap = Icon.createWithContentUri((String) this.f846b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT >= 26) {
                    createWithBitmap = Icon.createWithAdaptiveBitmap((Bitmap) this.f846b);
                    break;
                } else {
                    createWithBitmap = Icon.createWithBitmap(m27222a((Bitmap) this.f846b, false));
                    break;
                }
            case 6:
                int i = Build.VERSION.SDK_INT;
                if (i >= 30) {
                    createWithBitmap = Icon.createWithAdaptiveBitmapContentUri(m27214i());
                    break;
                } else if (context != null) {
                    InputStream m27212k = m27212k(context);
                    if (m27212k != null) {
                        if (i >= 26) {
                            createWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(m27212k));
                            break;
                        } else {
                            createWithBitmap = Icon.createWithBitmap(m27222a(BitmapFactory.decodeStream(m27212k), false));
                            break;
                        }
                    } else {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + m27214i());
                    }
                } else {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + m27214i());
                }
        }
        ColorStateList colorStateList = this.f851g;
        if (colorStateList != null) {
            createWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f852h;
        if (mode != f844k) {
            createWithBitmap.setTintMode(mode);
        }
        return createWithBitmap;
    }

    public String toString() {
        if (this.f845a == -1) {
            return String.valueOf(this.f846b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(m27207p(this.f845a));
        switch (this.f845a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f846b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f846b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f854j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m27220c())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f849e);
                if (this.f850f != 0) {
                    sb.append(" off=");
                    sb.append(this.f850f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f846b);
                break;
        }
        if (this.f851g != null) {
            sb.append(" tint=");
            sb.append(this.f851g);
        }
        if (this.f852h != f844k) {
            sb.append(" mode=");
            sb.append(this.f852h);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: a */
    public static Bitmap m27222a(Bitmap bitmap, boolean z) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f = min;
        float f2 = 0.5f * f;
        float f3 = 0.9166667f * f2;
        if (z) {
            float f4 = 0.010416667f * f;
            paint.setColor(0);
            paint.setShadowLayer(f4, 0.0f, f * 0.020833334f, 1023410176);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.setShadowLayer(f4, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f2, f2, f3, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    /* renamed from: k */
    public InputStream m27212k(Context context) {
        Uri m27214i = m27214i();
        String scheme = m27214i.getScheme();
        if (!"content".equals(scheme) && !"file".equals(scheme)) {
            try {
                return new FileInputStream(new File((String) this.f846b));
            } catch (FileNotFoundException e) {
                Log.w("IconCompat", "Unable to load image from path: " + m27214i, e);
                return null;
            }
        }
        try {
            return context.getContentResolver().openInputStream(m27214i);
        } catch (Exception e2) {
            Log.w("IconCompat", "Unable to load image from URI: " + m27214i, e2);
            return null;
        }
    }

    public IconCompat(int i) {
        this.f847c = null;
        this.f848d = null;
        this.f849e = 0;
        this.f850f = 0;
        this.f851g = null;
        this.f852h = f844k;
        this.f853i = null;
        this.f845a = i;
    }
}
