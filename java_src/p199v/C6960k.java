package p199v;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.Typeface$CustomFallbackBuilder;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily$Builder;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import com.badlogic.gdx.net.HttpStatus;
import java.io.IOException;
import java.io.InputStream;
import p001a0.C0018f;
import p190u.C6811d;
/* renamed from: v.k */
/* loaded from: classes.dex */
public class C6960k extends C6961l {
    @Override // p199v.C6961l
    /* renamed from: b */
    public Typeface mo2898b(Context context, C6811d.C6813b c6813b, Resources resources, int i) {
        int i2;
        try {
            C6811d.C6814c[] m3336a = c6813b.m3336a();
            int length = m3336a.length;
            int i3 = 0;
            FontFamily$Builder fontFamily$Builder = null;
            int i4 = 0;
            while (true) {
                int i5 = 1;
                if (i4 >= length) {
                    break;
                }
                C6811d.C6814c c6814c = m3336a[i4];
                try {
                    Font.Builder weight = new Font.Builder(resources, c6814c.m3334b()).setWeight(c6814c.m3331e());
                    if (!c6814c.m3330f()) {
                        i5 = 0;
                    }
                    Font build = weight.setSlant(i5).setTtcIndex(c6814c.m3333c()).setFontVariationSettings(c6814c.m3332d()).build();
                    if (fontFamily$Builder == null) {
                        fontFamily$Builder = new FontFamily$Builder(build);
                    } else {
                        fontFamily$Builder.addFont(build);
                    }
                } catch (IOException unused) {
                }
                i4++;
            }
            if (fontFamily$Builder == null) {
                return null;
            }
            if ((i & 1) != 0) {
                i2 = 700;
            } else {
                i2 = HttpStatus.SC_BAD_REQUEST;
            }
            if ((i & 2) != 0) {
                i3 = 1;
            }
            return new Typeface$CustomFallbackBuilder(fontFamily$Builder.build()).setStyle(new FontStyle(i2, i3)).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // p199v.C6961l
    /* renamed from: d */
    public Typeface mo2896d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p199v.C6961l
    /* renamed from: h */
    public C0018f.C0020b mo2892h(C0018f.C0020b[] c0020bArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p199v.C6961l
    /* renamed from: e */
    public Typeface mo2895e(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface$CustomFallbackBuilder(new FontFamily$Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p199v.C6961l
    /* renamed from: c */
    public Typeface mo2897c(Context context, CancellationSignal cancellationSignal, C0018f.C0020b[] c0020bArr, int i) {
        int i2;
        ParcelFileDescriptor openFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        try {
            int length = c0020bArr.length;
            int i3 = 0;
            FontFamily$Builder fontFamily$Builder = null;
            int i4 = 0;
            while (true) {
                int i5 = 1;
                if (i4 < length) {
                    C0018f.C0020b c0020b = c0020bArr[i4];
                    try {
                        openFileDescriptor = contentResolver.openFileDescriptor(c0020b.m27805d(), "r", cancellationSignal);
                    } catch (IOException unused) {
                    }
                    if (openFileDescriptor == null) {
                        if (openFileDescriptor == null) {
                            i4++;
                        }
                    } else {
                        try {
                            Font.Builder weight = new Font.Builder(openFileDescriptor).setWeight(c0020b.m27804e());
                            if (!c0020b.m27803f()) {
                                i5 = 0;
                            }
                            Font build = weight.setSlant(i5).setTtcIndex(c0020b.m27806c()).build();
                            if (fontFamily$Builder == null) {
                                fontFamily$Builder = new FontFamily$Builder(build);
                            } else {
                                fontFamily$Builder.addFont(build);
                            }
                        } catch (Throwable th) {
                            try {
                                openFileDescriptor.close();
                            } catch (Throwable th2) {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                            }
                            throw th;
                            break;
                        }
                    }
                    openFileDescriptor.close();
                    i4++;
                } else if (fontFamily$Builder == null) {
                    return null;
                } else {
                    if ((i & 1) != 0) {
                        i2 = 700;
                    } else {
                        i2 = HttpStatus.SC_BAD_REQUEST;
                    }
                    if ((i & 2) != 0) {
                        i3 = 1;
                    }
                    return new Typeface$CustomFallbackBuilder(fontFamily$Builder.build()).setStyle(new FontStyle(i2, i3)).build();
                }
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
