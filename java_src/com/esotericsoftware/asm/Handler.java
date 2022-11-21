package com.esotericsoftware.asm;
/* loaded from: classes.dex */
class Handler {

    /* renamed from: a */
    public Label f7081a;

    /* renamed from: b */
    public Label f7082b;

    /* renamed from: c */
    public Label f7083c;

    /* renamed from: d */
    public String f7084d;

    /* renamed from: e */
    public int f7085e;

    /* renamed from: f */
    public Handler f7086f;

    /* renamed from: a */
    public static Handler m23364a(Handler handler, Label label, Label label2) {
        if (handler == null) {
            return null;
        }
        Handler m23364a = m23364a(handler.f7086f, label, label2);
        handler.f7086f = m23364a;
        int i = handler.f7081a.f7098c;
        int i2 = handler.f7082b.f7098c;
        int i3 = label.f7098c;
        int i4 = label2 == null ? Integer.MAX_VALUE : label2.f7098c;
        if (i3 >= i2 || i4 <= i) {
            return handler;
        }
        if (i3 <= i) {
            if (i4 >= i2) {
                return m23364a;
            }
            handler.f7081a = label2;
            return handler;
        } else if (i4 >= i2) {
            handler.f7082b = label;
            return handler;
        } else {
            Handler handler2 = new Handler();
            handler2.f7081a = label2;
            handler2.f7082b = handler.f7082b;
            handler2.f7083c = handler.f7083c;
            handler2.f7084d = handler.f7084d;
            handler2.f7085e = handler.f7085e;
            handler2.f7086f = handler.f7086f;
            handler.f7082b = label;
            handler.f7086f = handler2;
            return handler;
        }
    }
}
