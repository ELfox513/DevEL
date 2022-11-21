package p097j5;

import androidx.annotation.RecentlyNonNull;
/* renamed from: j5.b */
/* loaded from: classes2.dex */
public final class C4332b extends IllegalStateException {
    public C4332b(String str, Throwable th) {
        super(str, th);
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static IllegalStateException m16808a(@RecentlyNonNull AbstractC4346i<?> abstractC4346i) {
        String str;
        String str2;
        if (!abstractC4346i.mo16787o()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception mo16791k = abstractC4346i.mo16791k();
        if (mo16791k != null) {
            str = "failure";
        } else if (abstractC4346i.mo16786p()) {
            String valueOf = String.valueOf(abstractC4346i.mo16790l());
            StringBuilder sb = new StringBuilder(valueOf.length() + 7);
            sb.append("result ");
            sb.append(valueOf);
            str = sb.toString();
        } else if (abstractC4346i.mo16788n()) {
            str = "cancellation";
        } else {
            str = "unknown issue";
        }
        String valueOf2 = String.valueOf(str);
        if (valueOf2.length() != 0) {
            str2 = "Complete with: ".concat(valueOf2);
        } else {
            str2 = new String("Complete with: ");
        }
        return new C4332b(str2, mo16791k);
    }
}
