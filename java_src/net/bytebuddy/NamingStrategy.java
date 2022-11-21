package net.bytebuddy;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface NamingStrategy {
    public static final String BYTE_BUDDY_RENAME_PACKAGE = "net.bytebuddy.renamed";
    public static final String NO_PREFIX = "";

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements NamingStrategy {
        public abstract String name(TypeDescription typeDescription);

        @Override // net.bytebuddy.NamingStrategy
        public String rebase(TypeDescription typeDescription) {
            return typeDescription.getName();
        }

        @Override // net.bytebuddy.NamingStrategy
        public String redefine(TypeDescription typeDescription) {
            return typeDescription.getName();
        }

        @Override // net.bytebuddy.NamingStrategy
        public String subclass(TypeDescription.Generic generic) {
            return name(generic.asErasure());
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Suffixing extends AbstractBase {
        private static final String JAVA_PACKAGE = "java.";
        private final BaseNameResolver baseNameResolver;
        private final String javaLangPackagePrefix;
        private final String suffix;

        /* loaded from: classes2.dex */
        public interface BaseNameResolver {

            /* loaded from: classes2.dex */
            public enum ForUnnamedType implements BaseNameResolver {
                INSTANCE;

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver
                public String resolve(TypeDescription typeDescription) {
                    return typeDescription.getName();
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class WithCallerSuffix implements BaseNameResolver {
                private final BaseNameResolver delegate;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.delegate.equals(((WithCallerSuffix) obj).delegate);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.delegate.hashCode();
                }

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver
                public String resolve(TypeDescription typeDescription) {
                    String str;
                    StackTraceElement stackTraceElement;
                    StackTraceElement[] stackTrace = new Throwable().getStackTrace();
                    int length = stackTrace.length;
                    int i = 0;
                    boolean z = false;
                    while (true) {
                        if (i < length) {
                            if (stackTrace[i].getClassName().equals(ByteBuddy.class.getName())) {
                                z = true;
                            } else if (z) {
                                str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
                                break;
                            }
                            i++;
                        } else {
                            str = null;
                            break;
                        }
                    }
                    if (str != null) {
                        return this.delegate.resolve(typeDescription) + "$" + str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '$');
                    }
                    throw new IllegalStateException("Base name resolver not invoked via " + ByteBuddy.class);
                }

                public WithCallerSuffix(BaseNameResolver baseNameResolver) {
                    this.delegate = baseNameResolver;
                }
            }

            String resolve(TypeDescription typeDescription);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForFixedValue implements BaseNameResolver {
                private final String name;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.name.equals(((ForFixedValue) obj).name);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.name.hashCode();
                }

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver
                public String resolve(TypeDescription typeDescription) {
                    return this.name;
                }

                public ForFixedValue(String str) {
                    this.name = str;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForGivenType implements BaseNameResolver {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForGivenType) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver
                public String resolve(TypeDescription typeDescription) {
                    return this.typeDescription.getName();
                }

                public ForGivenType(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }
        }

        public Suffixing(String str) {
            this(str, BaseNameResolver.ForUnnamedType.INSTANCE);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Suffixing suffixing = (Suffixing) obj;
                return this.suffix.equals(suffixing.suffix) && this.javaLangPackagePrefix.equals(suffixing.javaLangPackagePrefix) && this.baseNameResolver.equals(suffixing.baseNameResolver);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.suffix.hashCode()) * 31) + this.javaLangPackagePrefix.hashCode()) * 31) + this.baseNameResolver.hashCode();
        }

        public Suffixing(String str, String str2) {
            this(str, BaseNameResolver.ForUnnamedType.INSTANCE, str2);
        }

        @Override // net.bytebuddy.NamingStrategy.AbstractBase
        public String name(TypeDescription typeDescription) {
            String resolve = this.baseNameResolver.resolve(typeDescription);
            if (resolve.startsWith(JAVA_PACKAGE) && !this.javaLangPackagePrefix.equals("")) {
                resolve = this.javaLangPackagePrefix + "." + resolve;
            }
            return resolve + "$" + this.suffix;
        }

        public Suffixing(String str, BaseNameResolver baseNameResolver) {
            this(str, baseNameResolver, NamingStrategy.BYTE_BUDDY_RENAME_PACKAGE);
        }

        public Suffixing(String str, BaseNameResolver baseNameResolver, String str2) {
            this.suffix = str;
            this.baseNameResolver = baseNameResolver;
            this.javaLangPackagePrefix = str2;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class SuffixingRandom extends Suffixing {
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
        private final RandomString randomString;

        @Deprecated
        /* loaded from: classes2.dex */
        public interface BaseNameResolver extends Suffixing.BaseNameResolver {

            @HashCodeAndEqualsPlugin.Enhance
            @Deprecated
            /* loaded from: classes.dex */
            public static class ForFixedValue extends Suffixing.BaseNameResolver.ForFixedValue implements BaseNameResolver {
                public ForFixedValue(String str) {
                    super(str);
                }

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver.ForFixedValue
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass();
                    }
                    return false;
                }

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver.ForFixedValue
                public int hashCode() {
                    return super.hashCode();
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            @Deprecated
            /* loaded from: classes.dex */
            public static class ForGivenType extends Suffixing.BaseNameResolver.ForGivenType implements BaseNameResolver {
                public ForGivenType(TypeDescription typeDescription) {
                    super(typeDescription);
                }

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver.ForGivenType
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass();
                    }
                    return false;
                }

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver.ForGivenType
                public int hashCode() {
                    return super.hashCode();
                }
            }

            @Deprecated
            /* loaded from: classes2.dex */
            public enum ForUnnamedType implements BaseNameResolver {
                INSTANCE;

                @Override // net.bytebuddy.NamingStrategy.Suffixing.BaseNameResolver
                public String resolve(TypeDescription typeDescription) {
                    return typeDescription.getName();
                }
            }
        }

        public SuffixingRandom(String str) {
            this(str, Suffixing.BaseNameResolver.ForUnnamedType.INSTANCE);
        }

        @Override // net.bytebuddy.NamingStrategy.Suffixing
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass();
            }
            return false;
        }

        @Override // net.bytebuddy.NamingStrategy.Suffixing
        public int hashCode() {
            return super.hashCode();
        }

        @Override // net.bytebuddy.NamingStrategy.Suffixing, net.bytebuddy.NamingStrategy.AbstractBase
        public String name(TypeDescription typeDescription) {
            return super.name(typeDescription) + "$" + this.randomString.nextString();
        }

        public SuffixingRandom(String str, String str2) {
            this(str, Suffixing.BaseNameResolver.ForUnnamedType.INSTANCE, str2);
        }

        @Deprecated
        public SuffixingRandom(String str, BaseNameResolver baseNameResolver) {
            this(str, (Suffixing.BaseNameResolver) baseNameResolver);
        }

        public SuffixingRandom(String str, Suffixing.BaseNameResolver baseNameResolver) {
            this(str, baseNameResolver, NamingStrategy.BYTE_BUDDY_RENAME_PACKAGE);
        }

        @Deprecated
        public SuffixingRandom(String str, BaseNameResolver baseNameResolver, String str2) {
            this(str, (Suffixing.BaseNameResolver) baseNameResolver, str2);
        }

        public SuffixingRandom(String str, Suffixing.BaseNameResolver baseNameResolver, String str2) {
            this(str, baseNameResolver, str2, new RandomString());
        }

        @Deprecated
        public SuffixingRandom(String str, BaseNameResolver baseNameResolver, String str2, RandomString randomString) {
            this(str, (Suffixing.BaseNameResolver) baseNameResolver, str2, randomString);
        }

        public SuffixingRandom(String str, Suffixing.BaseNameResolver baseNameResolver, String str2, RandomString randomString) {
            super(str, baseNameResolver, str2);
            this.randomString = randomString;
        }
    }

    String rebase(TypeDescription typeDescription);

    String redefine(TypeDescription typeDescription);

    String subclass(TypeDescription.Generic generic);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class PrefixingRandom extends AbstractBase {
        private final String prefix;
        @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
        private final RandomString randomString = new RandomString();

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.prefix.equals(((PrefixingRandom) obj).prefix);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.prefix.hashCode();
        }

        @Override // net.bytebuddy.NamingStrategy.AbstractBase
        public String name(TypeDescription typeDescription) {
            return this.prefix + "." + typeDescription.getName() + "$" + this.randomString.nextString();
        }

        public PrefixingRandom(String str) {
            this.prefix = str;
        }
    }
}
