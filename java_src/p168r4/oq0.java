package p168r4;

import android.text.TextUtils;
import java.util.HashMap;
/* renamed from: r4.oq0 */
/* loaded from: classes2.dex */
public final class oq0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f29103a;

    /* renamed from: b */
    public final /* synthetic */ String f29104b;

    /* renamed from: d */
    public final /* synthetic */ String f29105d;

    /* renamed from: k */
    public final /* synthetic */ String f29106k;

    /* renamed from: p */
    public final /* synthetic */ qq0 f29107p;

    public oq0(qq0 qq0Var, String str, String str2, String str3, String str4) {
        this.f29107p = qq0Var;
        this.f29103a = str;
        this.f29104b = str2;
        this.f29105d = str3;
        this.f29106k = str4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public final void run() {
        char c;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f29103a);
        if (!TextUtils.isEmpty(this.f29104b)) {
            hashMap.put("cachedSrc", this.f29104b);
        }
        String str = this.f29105d;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 3387234:
                if (str.equals("noop")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str2 = "internal";
        switch (c) {
            case 6:
            case 7:
                str2 = "io";
                break;
            case '\b':
            case '\t':
                str2 = "network";
                break;
            case '\n':
            case 11:
                str2 = "policy";
                break;
        }
        hashMap.put("type", str2);
        hashMap.put("reason", this.f29105d);
        if (!TextUtils.isEmpty(this.f29106k)) {
            hashMap.put("message", this.f29106k);
        }
        qq0.m7699s(this.f29107p, "onPrecacheEvent", hashMap);
    }
}
