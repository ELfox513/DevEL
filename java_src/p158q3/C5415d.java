package p158q3;

import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* renamed from: q3.d */
/* loaded from: classes.dex */
public final /* synthetic */ class C5415d implements Comparator {

    /* renamed from: a */
    public static final Comparator f20098a = new C5415d();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
        return ((Scope) obj).m23039X0().compareTo(((Scope) obj2).m23039X0());
    }
}
