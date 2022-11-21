package p163r;

import android.annotation.NonNull;
import android.annotation.Nullable;
import android.app.Person;
import android.app.Person$Builder;
import android.graphics.drawable.Icon;
import androidx.core.graphics.drawable.IconCompat;
/* renamed from: r.y0 */
/* loaded from: classes.dex */
public class C5512y0 {

    /* renamed from: a */
    public CharSequence f20266a;

    /* renamed from: b */
    public IconCompat f20267b;

    /* renamed from: c */
    public String f20268c;

    /* renamed from: d */
    public String f20269d;

    /* renamed from: e */
    public boolean f20270e;

    /* renamed from: f */
    public boolean f20271f;

    /* renamed from: a */
    public IconCompat m13152a() {
        return this.f20267b;
    }

    /* renamed from: b */
    public String m13151b() {
        return this.f20269d;
    }

    /* renamed from: c */
    public CharSequence m13150c() {
        return this.f20266a;
    }

    /* renamed from: d */
    public String m13149d() {
        return this.f20268c;
    }

    /* renamed from: e */
    public boolean m13148e() {
        return this.f20270e;
    }

    /* renamed from: f */
    public boolean m13147f() {
        return this.f20271f;
    }

    /* renamed from: g */
    public String m13146g() {
        String str = this.f20268c;
        if (str != null) {
            return str;
        }
        if (this.f20266a != null) {
            return "name:" + ((Object) this.f20266a);
        }
        return "";
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.app.Person$Builder] */
    /* renamed from: h */
    public Person m13145h() {
        Icon icon;
        Person$Builder name = new Object() { // from class: android.app.Person$Builder
            static {
                throw new NoClassDefFoundError();
            }

            @NonNull
            public native /* synthetic */ Person build();

            @NonNull
            public native /* synthetic */ Person$Builder setBot(boolean z);

            @NonNull
            public native /* synthetic */ Person$Builder setIcon(@Nullable Icon icon2);

            @NonNull
            public native /* synthetic */ Person$Builder setImportant(boolean z);

            @NonNull
            public native /* synthetic */ Person$Builder setKey(@Nullable String str);

            @NonNull
            public native /* synthetic */ Person$Builder setName(@Nullable CharSequence charSequence);

            @NonNull
            public native /* synthetic */ Person$Builder setUri(@Nullable String str);
        }.setName(m13150c());
        if (m13152a() != null) {
            icon = m13152a().m27209n();
        } else {
            icon = null;
        }
        return name.setIcon(icon).setUri(m13149d()).setKey(m13151b()).setBot(m13148e()).setImportant(m13147f()).build();
    }
}
