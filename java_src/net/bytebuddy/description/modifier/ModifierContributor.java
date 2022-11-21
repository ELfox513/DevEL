package net.bytebuddy.description.modifier;

import java.util.Arrays;
import java.util.Collection;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface ModifierContributor {
    public static final int EMPTY_MASK = 0;

    /* loaded from: classes2.dex */
    public interface ForField extends ModifierContributor {
        public static final int MASK = 151775;
    }

    /* loaded from: classes2.dex */
    public interface ForMethod extends ModifierContributor {
        public static final int MASK = 7679;
    }

    /* loaded from: classes2.dex */
    public interface ForParameter extends ModifierContributor {
        public static final int MASK = 36880;
    }

    /* loaded from: classes2.dex */
    public interface ForType extends ModifierContributor {
        public static final int MASK = 161311;
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Resolver<T extends ModifierContributor> {
        private final Collection<? extends T> modifierContributors;

        /* renamed from: of */
        public static Resolver<ForType> m15201of(ForType... forTypeArr) {
            return m15205of(Arrays.asList(forTypeArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.modifierContributors.equals(((Resolver) obj).modifierContributors);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.modifierContributors.hashCode();
        }

        public int resolve() {
            return resolve(0);
        }

        /* renamed from: of */
        public static Resolver<ForField> m15204of(ForField... forFieldArr) {
            return m15205of(Arrays.asList(forFieldArr));
        }

        public int resolve(int i) {
            for (T t : this.modifierContributors) {
                i = (i & (t.getRange() ^ (-1))) | t.getMask();
            }
            return i;
        }

        public Resolver(Collection<? extends T> collection) {
            this.modifierContributors = collection;
        }

        /* renamed from: of */
        public static Resolver<ForMethod> m15203of(ForMethod... forMethodArr) {
            return m15205of(Arrays.asList(forMethodArr));
        }

        /* renamed from: of */
        public static Resolver<ForParameter> m15202of(ForParameter... forParameterArr) {
            return m15205of(Arrays.asList(forParameterArr));
        }

        /* renamed from: of */
        public static <S extends ModifierContributor> Resolver<S> m15205of(Collection<? extends S> collection) {
            return new Resolver<>(collection);
        }
    }

    int getMask();

    int getRange();

    boolean isDefault();
}
