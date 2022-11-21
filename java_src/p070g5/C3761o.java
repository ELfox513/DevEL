package p070g5;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import p172s.C6550a;
/* renamed from: g5.o */
/* loaded from: classes2.dex */
public final class C3761o extends AbstractC3863w5 {

    /* renamed from: c */
    public long f16777c;

    /* renamed from: d */
    public String f16778d;

    /* renamed from: e */
    public AccountManager f16779e;

    /* renamed from: f */
    public Boolean f16780f;

    /* renamed from: g */
    public long f16781g;

    public C3761o(C3611b5 c3611b5) {
        super(c3611b5);
    }

    /* renamed from: j */
    public final long m18047j() {
        mo17839c();
        return this.f16781g;
    }

    /* renamed from: k */
    public final long m18046k() {
        m17922f();
        return this.f16777c;
    }

    /* renamed from: l */
    public final String m18045l() {
        m17922f();
        return this.f16778d;
    }

    /* renamed from: m */
    public final void m18044m() {
        mo17839c();
        this.f16780f = null;
        this.f16781g = 0L;
    }

    /* renamed from: n */
    public final boolean m18043n() {
        Account[] result;
        mo17839c();
        long mo24763a = this.f17008a.mo17854Q().mo24763a();
        if (mo24763a - this.f16781g > 86400000) {
            this.f16780f = null;
        }
        Boolean bool = this.f16780f;
        if (bool == null) {
            if (C6550a.m3939a(this.f17008a.mo17856O(), "android.permission.GET_ACCOUNTS") != 0) {
                this.f17008a.mo17858F().m18011t().m18042a("Permission error checking for dasher/unicorn accounts");
                this.f16781g = mo24763a;
                this.f16780f = Boolean.FALSE;
                return false;
            }
            if (this.f16779e == null) {
                this.f16779e = AccountManager.get(this.f17008a.mo17856O());
            }
            try {
                result = this.f16779e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                this.f17008a.mo17858F().m18016o().m18041b("Exception checking account types", e);
            }
            if (result != null && result.length > 0) {
                this.f16780f = Boolean.TRUE;
                this.f16781g = mo24763a;
                return true;
            }
            Account[] result2 = this.f16779e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.f16780f = Boolean.TRUE;
                this.f16781g = mo24763a;
                return true;
            }
            this.f16781g = mo24763a;
            this.f16780f = Boolean.FALSE;
            return false;
        }
        return bool.booleanValue();
    }

    @Override // p070g5.AbstractC3863w5
    /* renamed from: e */
    public final boolean mo17838e() {
        Calendar calendar = Calendar.getInstance();
        this.f16777c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f16778d = sb.toString();
        return false;
    }
}
