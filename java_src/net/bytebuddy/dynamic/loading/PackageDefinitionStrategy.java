package net.bytebuddy.dynamic.loading;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface PackageDefinitionStrategy {

    /* loaded from: classes2.dex */
    public interface Definition {

        /* loaded from: classes2.dex */
        public static class Simple implements Definition {
            @MaybeNull
            private final String implementationTitle;
            @MaybeNull
            private final String implementationVendor;
            @MaybeNull
            private final String implementationVersion;
            @MaybeNull
            public final URL sealBase;
            @MaybeNull
            private final String specificationTitle;
            @MaybeNull
            private final String specificationVendor;
            @MaybeNull
            private final String specificationVersion;

            @SuppressFBWarnings(justification = "Package sealing relies on URL equality.", value = {"DMI_BLOCKING_METHODS_ON_URL"})
            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                Simple simple = (Simple) obj;
                String str = this.specificationTitle;
                if (str == null ? simple.specificationTitle == null : str.equals(simple.specificationTitle)) {
                    String str2 = this.specificationVersion;
                    if (str2 == null ? simple.specificationVersion == null : str2.equals(simple.specificationVersion)) {
                        String str3 = this.specificationVendor;
                        if (str3 == null ? simple.specificationVendor == null : str3.equals(simple.specificationVendor)) {
                            String str4 = this.implementationTitle;
                            if (str4 == null ? simple.implementationTitle == null : str4.equals(simple.implementationTitle)) {
                                String str5 = this.implementationVersion;
                                if (str5 == null ? simple.implementationVersion == null : str5.equals(simple.implementationVersion)) {
                                    String str6 = this.implementationVendor;
                                    if (str6 == null ? simple.implementationVendor == null : str6.equals(simple.implementationVendor)) {
                                        URL url = this.sealBase;
                                        if (url != null) {
                                            if (url.equals(simple.sealBase)) {
                                                return true;
                                            }
                                        } else if (simple.sealBase == null) {
                                            return true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getImplementationTitle() {
                return this.implementationTitle;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getImplementationVendor() {
                return this.implementationVendor;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getImplementationVersion() {
                return this.implementationVersion;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public URL getSealBase() {
                return this.sealBase;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getSpecificationTitle() {
                return this.specificationTitle;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getSpecificationVendor() {
                return this.specificationVendor;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getSpecificationVersion() {
                return this.specificationVersion;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public boolean isDefined() {
                return true;
            }

            @SuppressFBWarnings(justification = "Package sealing relies on URL equality.", value = {"DMI_BLOCKING_METHODS_ON_URL"})
            public int hashCode() {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                String str = this.specificationTitle;
                int i7 = 0;
                if (str != null) {
                    i = str.hashCode();
                } else {
                    i = 0;
                }
                int i8 = i * 31;
                String str2 = this.specificationVersion;
                if (str2 != null) {
                    i2 = str2.hashCode();
                } else {
                    i2 = 0;
                }
                int i9 = (i8 + i2) * 31;
                String str3 = this.specificationVendor;
                if (str3 != null) {
                    i3 = str3.hashCode();
                } else {
                    i3 = 0;
                }
                int i10 = (i9 + i3) * 31;
                String str4 = this.implementationTitle;
                if (str4 != null) {
                    i4 = str4.hashCode();
                } else {
                    i4 = 0;
                }
                int i11 = (i10 + i4) * 31;
                String str5 = this.implementationVersion;
                if (str5 != null) {
                    i5 = str5.hashCode();
                } else {
                    i5 = 0;
                }
                int i12 = (i11 + i5) * 31;
                String str6 = this.implementationVendor;
                if (str6 != null) {
                    i6 = str6.hashCode();
                } else {
                    i6 = 0;
                }
                int i13 = (i12 + i6) * 31;
                URL url = this.sealBase;
                if (url != null) {
                    i7 = url.hashCode();
                }
                return i13 + i7;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public boolean isCompatibleTo(Package r2) {
                URL url = this.sealBase;
                if (url == null) {
                    return !r2.isSealed();
                }
                return r2.isSealed(url);
            }

            public Simple(@MaybeNull String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String str4, @MaybeNull String str5, @MaybeNull String str6, @MaybeNull URL url) {
                this.specificationTitle = str;
                this.specificationVersion = str2;
                this.specificationVendor = str3;
                this.implementationTitle = str4;
                this.implementationVersion = str5;
                this.implementationVendor = str6;
                this.sealBase = url;
            }
        }

        /* loaded from: classes2.dex */
        public enum Trivial implements Definition {
            INSTANCE;
            
            @AlwaysNull
            private static final String NO_VALUE = null;
            @AlwaysNull
            private static final URL NOT_SEALED = null;

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getImplementationTitle() {
                return NO_VALUE;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public String getImplementationVendor() {
                return NO_VALUE;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getImplementationVersion() {
                return NO_VALUE;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public URL getSealBase() {
                return NOT_SEALED;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getSpecificationTitle() {
                return NO_VALUE;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getSpecificationVendor() {
                return NO_VALUE;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            @MaybeNull
            public String getSpecificationVersion() {
                return NO_VALUE;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public boolean isCompatibleTo(Package r1) {
                return true;
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public boolean isDefined() {
                return true;
            }
        }

        /* loaded from: classes2.dex */
        public enum Undefined implements Definition {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public String getImplementationTitle() {
                throw new IllegalStateException("Cannot read property of undefined package");
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public String getImplementationVendor() {
                throw new IllegalStateException("Cannot read property of undefined package");
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public String getImplementationVersion() {
                throw new IllegalStateException("Cannot read property of undefined package");
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public URL getSealBase() {
                throw new IllegalStateException("Cannot read property of undefined package");
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public String getSpecificationTitle() {
                throw new IllegalStateException("Cannot read property of undefined package");
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public String getSpecificationVendor() {
                throw new IllegalStateException("Cannot read property of undefined package");
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public String getSpecificationVersion() {
                throw new IllegalStateException("Cannot read property of undefined package");
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public boolean isCompatibleTo(Package r2) {
                throw new IllegalStateException("Cannot check compatibility to undefined package");
            }

            @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.Definition
            public boolean isDefined() {
                return false;
            }
        }

        @MaybeNull
        String getImplementationTitle();

        @MaybeNull
        String getImplementationVendor();

        @MaybeNull
        String getImplementationVersion();

        @MaybeNull
        URL getSealBase();

        @MaybeNull
        String getSpecificationTitle();

        @MaybeNull
        String getSpecificationVendor();

        @MaybeNull
        String getSpecificationVersion();

        boolean isCompatibleTo(Package r1);

        boolean isDefined();
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ManifestReading implements PackageDefinitionStrategy {
        private static final Attributes.Name[] ATTRIBUTE_NAMES = {Attributes.Name.SPECIFICATION_TITLE, Attributes.Name.SPECIFICATION_VERSION, Attributes.Name.SPECIFICATION_VENDOR, Attributes.Name.IMPLEMENTATION_TITLE, Attributes.Name.IMPLEMENTATION_VERSION, Attributes.Name.IMPLEMENTATION_VENDOR, Attributes.Name.SEALED};
        @AlwaysNull
        private static final URL NOT_SEALED = null;
        private final SealBaseLocator sealBaseLocator;

        /* loaded from: classes2.dex */
        public interface SealBaseLocator {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForFixedValue implements SealBaseLocator {
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final URL sealBase;

                @SuppressFBWarnings(justification = "Package sealing relies on URL equality.", value = {"DMI_BLOCKING_METHODS_ON_URL"})
                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj == null || getClass() != obj.getClass()) {
                        return false;
                    }
                    URL url = this.sealBase;
                    URL url2 = ((ForFixedValue) obj).sealBase;
                    if (url == null) {
                        return url2 == null;
                    }
                    return url.equals(url2);
                }

                @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.ManifestReading.SealBaseLocator
                @MaybeNull
                public URL findSealBase(ClassLoader classLoader, String str) {
                    return this.sealBase;
                }

                @SuppressFBWarnings(justification = "Package sealing relies on URL equality.", value = {"DMI_BLOCKING_METHODS_ON_URL"})
                public int hashCode() {
                    URL url = this.sealBase;
                    if (url == null) {
                        return 17;
                    }
                    return url.hashCode();
                }

                public ForFixedValue(@MaybeNull URL url) {
                    this.sealBase = url;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForTypeResourceUrl implements SealBaseLocator {
                private static final String CLASS_FILE_EXTENSION = ".class";
                private static final int EXCLUDE_INITIAL_SLASH = 1;
                private static final String FILE_SYSTEM = "file";
                private static final String JAR_FILE = "jar";
                private static final String RUNTIME_IMAGE = "jrt";
                private final SealBaseLocator fallback;

                public ForTypeResourceUrl() {
                    this(NonSealing.INSTANCE);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.fallback.equals(((ForTypeResourceUrl) obj).fallback);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.fallback.hashCode();
                }

                public ForTypeResourceUrl(SealBaseLocator sealBaseLocator) {
                    this.fallback = sealBaseLocator;
                }

                @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.ManifestReading.SealBaseLocator
                @MaybeNull
                public URL findSealBase(ClassLoader classLoader, String str) {
                    URL resource = classLoader.getResource(str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ".class");
                    if (resource != null) {
                        try {
                            if (resource.getProtocol().equals(JAR_FILE)) {
                                return new URL(resource.getPath().substring(0, resource.getPath().indexOf(33)));
                            }
                            if (resource.getProtocol().equals(FILE_SYSTEM)) {
                                return resource;
                            }
                            if (resource.getProtocol().equals(RUNTIME_IMAGE)) {
                                String path = resource.getPath();
                                int indexOf = path.indexOf(47, 1);
                                if (indexOf != -1) {
                                    return new URL("jrt:" + path.substring(0, indexOf));
                                }
                                return resource;
                            }
                        } catch (MalformedURLException e) {
                            throw new IllegalStateException("Unexpected URL: " + resource, e);
                        }
                    }
                    return this.fallback.findSealBase(classLoader, str);
                }
            }

            /* loaded from: classes2.dex */
            public enum NonSealing implements SealBaseLocator {
                INSTANCE;

                @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy.ManifestReading.SealBaseLocator
                @MaybeNull
                public URL findSealBase(ClassLoader classLoader, String str) {
                    return ManifestReading.NOT_SEALED;
                }
            }

            @MaybeNull
            URL findSealBase(ClassLoader classLoader, String str);
        }

        public ManifestReading() {
            this(new SealBaseLocator.ForTypeResourceUrl());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.sealBaseLocator.equals(((ManifestReading) obj).sealBaseLocator);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.sealBaseLocator.hashCode();
        }

        public ManifestReading(SealBaseLocator sealBaseLocator) {
            this.sealBaseLocator = sealBaseLocator;
        }

        @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy
        public Definition define(ClassLoader classLoader, String str, String str2) {
            URL url;
            Attributes.Name[] nameArr;
            Attributes.Name[] nameArr2;
            InputStream resourceAsStream = classLoader.getResourceAsStream("META-INF/MANIFEST.MF");
            if (resourceAsStream != null) {
                try {
                    Manifest manifest = new Manifest(resourceAsStream);
                    HashMap hashMap = new HashMap();
                    Attributes mainAttributes = manifest.getMainAttributes();
                    if (mainAttributes != null) {
                        for (Attributes.Name name : ATTRIBUTE_NAMES) {
                            hashMap.put(name, mainAttributes.getValue(name));
                        }
                    }
                    Attributes attributes = manifest.getAttributes(str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/').concat("/"));
                    if (attributes != null) {
                        for (Attributes.Name name2 : ATTRIBUTE_NAMES) {
                            String value = attributes.getValue(name2);
                            if (value != null) {
                                hashMap.put(name2, value);
                            }
                        }
                    }
                    String str3 = (String) hashMap.get(Attributes.Name.SPECIFICATION_TITLE);
                    String str4 = (String) hashMap.get(Attributes.Name.SPECIFICATION_VERSION);
                    String str5 = (String) hashMap.get(Attributes.Name.SPECIFICATION_VENDOR);
                    String str6 = (String) hashMap.get(Attributes.Name.IMPLEMENTATION_TITLE);
                    String str7 = (String) hashMap.get(Attributes.Name.IMPLEMENTATION_VERSION);
                    String str8 = (String) hashMap.get(Attributes.Name.IMPLEMENTATION_VENDOR);
                    if (Boolean.parseBoolean((String) hashMap.get(Attributes.Name.SEALED))) {
                        url = this.sealBaseLocator.findSealBase(classLoader, str2);
                    } else {
                        url = NOT_SEALED;
                    }
                    Definition.Simple simple = new Definition.Simple(str3, str4, str5, str6, str7, str8, url);
                    resourceAsStream.close();
                    return simple;
                } catch (IOException e) {
                    throw new IllegalStateException("Error while reading manifest file", e);
                }
            }
            return Definition.Trivial.INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public enum NoOp implements PackageDefinitionStrategy {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy
        public Definition define(ClassLoader classLoader, String str, String str2) {
            return Definition.Undefined.INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public enum Trivial implements PackageDefinitionStrategy {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.loading.PackageDefinitionStrategy
        public Definition define(ClassLoader classLoader, String str, String str2) {
            return Definition.Trivial.INSTANCE;
        }
    }

    Definition define(ClassLoader classLoader, String str, String str2);
}
