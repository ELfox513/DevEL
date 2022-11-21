package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
final class Handler {

    /* renamed from: a */
    public final Label f19202a;

    /* renamed from: b */
    public final Label f19203b;

    /* renamed from: c */
    public final Label f19204c;

    /* renamed from: d */
    public final int f19205d;

    /* renamed from: e */
    public final String f19206e;

    /* renamed from: f */
    public Handler f19207f;

    public Handler(Label label, Label label2, Label label3, int i, String str) {
        this.f19202a = label;
        this.f19203b = label2;
        this.f19204c = label3;
        this.f19205d = i;
        this.f19206e = str;
    }

    /* renamed from: a */
    public static int m14894a(Handler handler) {
        int i = 0;
        while (handler != null) {
            i++;
            handler = handler.f19207f;
        }
        return i;
    }

    /* renamed from: b */
    public static int m14893b(Handler handler) {
        return (m14894a(handler) * 8) + 2;
    }

    /* renamed from: d */
    public static Handler m14891d(Handler handler, Label label, Label label2) {
        int i;
        if (handler == null) {
            return null;
        }
        Handler m14891d = m14891d(handler.f19207f, label, label2);
        handler.f19207f = m14891d;
        Label label3 = handler.f19202a;
        int i2 = label3.f19210b;
        Label label4 = handler.f19203b;
        int i3 = label4.f19210b;
        int i4 = label.f19210b;
        if (label2 == null) {
            i = Integer.MAX_VALUE;
        } else {
            i = label2.f19210b;
        }
        if (i4 < i3 && i > i2) {
            if (i4 <= i2) {
                if (i >= i3) {
                    return m14891d;
                }
                return new Handler(handler, label2, label4);
            } else if (i >= i3) {
                return new Handler(handler, label3, label);
            } else {
                handler.f19207f = new Handler(handler, label2, label4);
                return new Handler(handler, handler.f19202a, label);
            }
        }
        return handler;
    }

    /* renamed from: c */
    public static void m14892c(Handler handler, ByteVector byteVector) {
        byteVector.putShort(m14894a(handler));
        while (handler != null) {
            byteVector.putShort(handler.f19202a.f19210b).putShort(handler.f19203b.f19210b).putShort(handler.f19204c.f19210b).putShort(handler.f19205d);
            handler = handler.f19207f;
        }
    }

    public Handler(Handler handler, Label label, Label label2) {
        this(label, label2, handler.f19204c, handler.f19205d, handler.f19206e);
        this.f19207f = handler.f19207f;
    }
}
