package net.bytebuddy.utility;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public abstract class FileSystem {
    private static final boolean ACCESS_CONTROLLER;
    private static /* synthetic */ FileSystem INSTANCE;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForLegacyVm extends FileSystem {
        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass();
        }

        public int hashCode() {
            return getClass().hashCode();
        }

        @Override // net.bytebuddy.utility.FileSystem
        public void copy(File file, File file2) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        fileOutputStream.close();
                        return;
                    }
                }
            } finally {
                fileInputStream.close();
            }
        }

        @Override // net.bytebuddy.utility.FileSystem
        public void move(File file, File file2) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
                fileInputStream.close();
                if (!file.delete()) {
                    file.deleteOnExit();
                }
            } catch (Throwable th) {
                fileInputStream.close();
                throw th;
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForNio2CapableVm extends FileSystem {
        private static final Dispatcher DISPATCHER = (Dispatcher) FileSystem.doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
        private static final Files FILES = (Files) FileSystem.doPrivileged(JavaDispatcher.m14754of(Files.class));
        private static final StandardCopyOption STANDARD_COPY_OPTION = (StandardCopyOption) FileSystem.doPrivileged(JavaDispatcher.m14754of(StandardCopyOption.class));

        @JavaDispatcher.Proxied("java.io.File")
        /* loaded from: classes.dex */
        public interface Dispatcher {
            @JavaDispatcher.Proxied("toPath")
            Object toPath(File file);
        }

        @JavaDispatcher.Proxied("java.nio.file.Files")
        /* loaded from: classes.dex */
        public interface Files {
            @JavaDispatcher.IsStatic
            @JavaDispatcher.Proxied("copy")
            Object copy(@JavaDispatcher.Proxied("java.nio.file.Path") Object obj, @JavaDispatcher.Proxied("java.nio.file.Path") Object obj2, @JavaDispatcher.Proxied("java.nio.file.CopyOption") Object[] objArr);

            @JavaDispatcher.IsStatic
            @JavaDispatcher.Proxied("move")
            Object move(@JavaDispatcher.Proxied("java.nio.file.Path") Object obj, @JavaDispatcher.Proxied("java.nio.file.Path") Object obj2, @JavaDispatcher.Proxied("java.nio.file.CopyOption") Object[] objArr);
        }

        @JavaDispatcher.Proxied("java.nio.file.StandardCopyOption")
        /* loaded from: classes.dex */
        public interface StandardCopyOption {
            @JavaDispatcher.Container
            @JavaDispatcher.Proxied("toArray")
            Object[] toArray(int i);

            @JavaDispatcher.IsStatic
            @JavaDispatcher.Proxied(ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME)
            Object valueOf(String str);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass();
        }

        public int hashCode() {
            return getClass().hashCode();
        }

        @Override // net.bytebuddy.utility.FileSystem
        public void copy(File file, File file2) {
            StandardCopyOption standardCopyOption = STANDARD_COPY_OPTION;
            Object[] array = standardCopyOption.toArray(1);
            array[0] = standardCopyOption.valueOf("REPLACE_EXISTING");
            Files files = FILES;
            Dispatcher dispatcher = DISPATCHER;
            files.copy(dispatcher.toPath(file), dispatcher.toPath(file2), array);
        }

        @Override // net.bytebuddy.utility.FileSystem
        public void move(File file, File file2) {
            StandardCopyOption standardCopyOption = STANDARD_COPY_OPTION;
            Object[] array = standardCopyOption.toArray(1);
            array[0] = standardCopyOption.valueOf("REPLACE_EXISTING");
            Files files = FILES;
            Dispatcher dispatcher = DISPATCHER;
            files.move(dispatcher.toPath(file), dispatcher.toPath(file2), array);
        }
    }

    static {
        boolean z = false;
        try {
            Class.forName("java.security.AccessController", false, null);
            ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
        } catch (ClassNotFoundException unused) {
            ACCESS_CONTROLLER = z;
        } catch (SecurityException unused2) {
            z = true;
            ACCESS_CONTROLLER = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @AccessControllerPlugin.Enhance
    public static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
        return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
    }

    public abstract void copy(File file, File file2);

    public abstract void move(File file, File file2);

    @CachedReturnPlugin.Enhance("INSTANCE")
    public static FileSystem getInstance() {
        FileSystem forLegacyVm;
        if (INSTANCE != null) {
            forLegacyVm = null;
        } else {
            try {
                Class.forName("java.nio.file.Files", false, ClassLoadingStrategy.BOOTSTRAP_LOADER);
                forLegacyVm = new ForNio2CapableVm();
            } catch (ClassNotFoundException unused) {
                forLegacyVm = new ForLegacyVm();
            }
        }
        if (forLegacyVm == null) {
            return INSTANCE;
        }
        INSTANCE = forLegacyVm;
        return forLegacyVm;
    }
}
