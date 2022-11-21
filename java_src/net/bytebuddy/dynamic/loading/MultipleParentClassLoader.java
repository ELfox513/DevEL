package net.bytebuddy.dynamic.loading;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.nullability.UnknownNull;
/* loaded from: classes2.dex */
public class MultipleParentClassLoader extends InjectionClassLoader {
    private final List<? extends ClassLoader> parents;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Builder {
        private static final int ONLY = 0;
        private final List<? extends ClassLoader> classLoaders;
        private final boolean sealed;

        public Builder() {
            this(true);
        }

        @SuppressFBWarnings(justification = "Assuring privilege is explicit user responsibility.", value = {"DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"})
        private ClassLoader doBuild(@MaybeNull ClassLoader classLoader) {
            return new MultipleParentClassLoader(classLoader, this.classLoaders, this.sealed);
        }

        public Builder append(Class<?>... clsArr) {
            return append((Collection<? extends Class<?>>) Arrays.asList(clsArr));
        }

        public Builder appendMostSpecific(Class<?>... clsArr) {
            return appendMostSpecific((Collection<? extends Class<?>>) Arrays.asList(clsArr));
        }

        @SuppressFBWarnings(justification = "Assuring privilege is explicit user responsibility.", value = {"DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"})
        public ClassLoader build() {
            return this.classLoaders.size() == 1 ? this.classLoaders.get(0) : new MultipleParentClassLoader(this.classLoaders);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Builder builder = (Builder) obj;
                return this.sealed == builder.sealed && this.classLoaders.equals(builder.classLoaders);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + (this.sealed ? 1 : 0)) * 31) + this.classLoaders.hashCode();
        }

        public Builder(boolean z) {
            this(Collections.emptyList(), z);
        }

        public Builder append(Collection<? extends Class<?>> collection) {
            ArrayList arrayList = new ArrayList(collection.size());
            for (Class<?> cls : collection) {
                arrayList.add(cls.getClassLoader());
            }
            return append((List<? extends ClassLoader>) arrayList);
        }

        public Builder appendMostSpecific(Collection<? extends Class<?>> collection) {
            ArrayList arrayList = new ArrayList(collection.size());
            for (Class<?> cls : collection) {
                arrayList.add(cls.getClassLoader());
            }
            return appendMostSpecific((List<? extends ClassLoader>) arrayList);
        }

        public Builder filter(ElementMatcher<? super ClassLoader> elementMatcher) {
            ArrayList arrayList = new ArrayList(this.classLoaders.size());
            for (ClassLoader classLoader : this.classLoaders) {
                if (elementMatcher.matches(classLoader)) {
                    arrayList.add(classLoader);
                }
            }
            return new Builder(arrayList, this.sealed);
        }

        private Builder(List<? extends ClassLoader> list, boolean z) {
            this.classLoaders = list;
            this.sealed = z;
        }

        public ClassLoader build(ClassLoader classLoader) {
            return !this.classLoaders.isEmpty() ? (this.classLoaders.size() == 1 && this.classLoaders.contains(classLoader)) ? classLoader : filter(ElementMatchers.not(ElementMatchers.m14829is(classLoader))).doBuild(classLoader) : classLoader;
        }

        public Builder append(ClassLoader... classLoaderArr) {
            return append(Arrays.asList(classLoaderArr));
        }

        public Builder appendMostSpecific(ClassLoader... classLoaderArr) {
            return appendMostSpecific(Arrays.asList(classLoaderArr));
        }

        public Builder append(List<? extends ClassLoader> list) {
            ArrayList arrayList = new ArrayList(this.classLoaders.size() + list.size());
            arrayList.addAll(this.classLoaders);
            HashSet hashSet = new HashSet(this.classLoaders);
            for (ClassLoader classLoader : list) {
                if (classLoader != null && hashSet.add(classLoader)) {
                    arrayList.add(classLoader);
                }
            }
            return new Builder(arrayList, this.sealed);
        }

        public Builder appendMostSpecific(List<? extends ClassLoader> list) {
            ArrayList arrayList = new ArrayList(this.classLoaders.size() + list.size());
            arrayList.addAll(this.classLoaders);
            for (ClassLoader classLoader : list) {
                if (classLoader != null) {
                    ClassLoader classLoader2 = classLoader;
                    do {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (((ClassLoader) it.next()).equals(classLoader2)) {
                                it.remove();
                            }
                        }
                        classLoader2 = classLoader2.getParent();
                    } while (classLoader2 != null);
                    Iterator it2 = arrayList.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            ClassLoader classLoader3 = (ClassLoader) it2.next();
                            while (!classLoader3.equals(classLoader)) {
                                classLoader3 = classLoader3.getParent();
                                if (classLoader3 == null) {
                                    break;
                                }
                            }
                        } else {
                            arrayList.add(classLoader);
                            break;
                        }
                    }
                }
            }
            return new Builder(arrayList, this.sealed);
        }
    }

    /* loaded from: classes2.dex */
    public static class CompoundEnumeration implements Enumeration<URL> {
        private static final int FIRST = 0;
        @UnknownNull
        private Enumeration<URL> current;
        private final List<Enumeration<URL>> enumerations;

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            Enumeration<URL> enumeration = this.current;
            if (enumeration != null && enumeration.hasMoreElements()) {
                return true;
            }
            if (this.enumerations.isEmpty()) {
                return false;
            }
            this.current = this.enumerations.remove(0);
            return hasMoreElements();
        }

        @Override // java.util.Enumeration
        @SuppressFBWarnings(justification = "Null reference is avoided by element check.", value = {"UWF_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"})
        public URL nextElement() {
            if (hasMoreElements()) {
                return this.current.nextElement();
            }
            throw new NoSuchElementException();
        }

        public CompoundEnumeration(List<Enumeration<URL>> list) {
            this.enumerations = list;
        }
    }

    static {
        doRegisterAsParallelCapable();
    }

    public MultipleParentClassLoader(List<? extends ClassLoader> list) {
        this(ClassLoadingStrategy.BOOTSTRAP_LOADER, list);
    }

    public MultipleParentClassLoader(@MaybeNull ClassLoader classLoader, List<? extends ClassLoader> list) {
        this(classLoader, list, true);
    }

    @SuppressFBWarnings(justification = "Must be invoked from targeting class loader type.", value = {"DP_DO_INSIDE_DO_PRIVILEGED"})
    private static void doRegisterAsParallelCapable() {
        try {
            Method declaredMethod = ClassLoader.class.getDeclaredMethod("registerAsParallelCapable", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    @Override // net.bytebuddy.dynamic.loading.InjectionClassLoader
    public Map<String, Class<?>> doDefineClasses(Map<String, byte[]> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), defineClass(entry.getKey(), entry.getValue(), 0, entry.getValue().length));
        }
        return hashMap;
    }

    @Override // java.lang.ClassLoader
    public URL getResource(String str) {
        for (ClassLoader classLoader : this.parents) {
            URL resource = classLoader.getResource(str);
            if (resource != null) {
                return resource;
            }
        }
        return super.getResource(str);
    }

    @Override // java.lang.ClassLoader
    public Enumeration<URL> getResources(String str) {
        ArrayList arrayList = new ArrayList(this.parents.size() + 1);
        for (ClassLoader classLoader : this.parents) {
            arrayList.add(classLoader.getResources(str));
        }
        arrayList.add(super.getResources(str));
        return new CompoundEnumeration(arrayList);
    }

    @Override // java.lang.ClassLoader
    public Class<?> loadClass(String str, boolean z) {
        for (ClassLoader classLoader : this.parents) {
            try {
                Class<?> loadClass = classLoader.loadClass(str);
                if (z) {
                    resolveClass(loadClass);
                }
                return loadClass;
            } catch (ClassNotFoundException unused) {
            }
        }
        return super.loadClass(str, z);
    }

    public MultipleParentClassLoader(@MaybeNull ClassLoader classLoader, List<? extends ClassLoader> list, boolean z) {
        super(classLoader, z);
        this.parents = list;
    }
}
