package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum Visibility implements ModifierContributor.ForType, ModifierContributor.ForMethod, ModifierContributor.ForField {
    PUBLIC(1),
    PACKAGE_PRIVATE(0),
    PROTECTED(4),
    PRIVATE(2);
    
    private final int mask;

    /* renamed from: net.bytebuddy.description.modifier.Visibility$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C48801 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19101a;

        static {
            int[] iArr = new int[Visibility.values().length];
            f19101a = iArr;
            try {
                iArr[Visibility.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19101a[Visibility.PROTECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19101a[Visibility.PACKAGE_PRIVATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19101a[Visibility.PRIVATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 7;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == PACKAGE_PRIVATE;
    }

    public boolean isPackagePrivate() {
        return (isPublic() || isPrivate() || isProtected()) ? false : true;
    }

    public boolean isPrivate() {
        return (this.mask & 2) != 0;
    }

    public boolean isProtected() {
        return (this.mask & 4) != 0;
    }

    public boolean isPublic() {
        return (this.mask & 1) != 0;
    }

    public Visibility expandTo(Visibility visibility) {
        int i = C48801.f19101a[visibility.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return this;
                    }
                    throw new IllegalStateException("Unexpected visibility: " + visibility);
                } else if (this == PRIVATE) {
                    return PACKAGE_PRIVATE;
                } else {
                    return this;
                }
            }
            Visibility visibility2 = PUBLIC;
            if (this == visibility2) {
                return visibility2;
            }
            return visibility;
        }
        return PUBLIC;
    }

    Visibility(int i) {
        this.mask = i;
    }
}
