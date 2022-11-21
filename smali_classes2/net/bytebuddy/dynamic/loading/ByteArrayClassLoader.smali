.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.super Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static final FROM_BEGINNING:I = 0x0

.field private static final NO_URL:Ljava/net/URL;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field

.field private static final PACKAGE_LOOKUP_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

.field public static final SYNCHRONIZATION_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

.field public static final URL_SCHEMA:Ljava/lang/String; = "bytebuddy"


# instance fields
.field public final accessControlContext:Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field public final classFilePostProcessor:Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;

.field public final packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

.field public final persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

.field public final protectionDomain:Ljava/security/ProtectionDomain;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field public final typeDefinitions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.security.AccessController"

    invoke-static {v2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v2, "net.bytebuddy.securitymanager"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :catch_1
    sput-boolean v1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->ACCESS_CONTROLLER:Z

    :goto_0
    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->NO_URL:Ljava/net/URL;

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;

    invoke-static {v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->PACKAGE_LOOKUP_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$CreationAction;

    invoke-static {v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->SYNCHRONIZATION_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->doRegisterAsParallelCapable()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V
    .locals 7
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V
    .locals 8
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V
    .locals 8
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p4    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            ")V"
        }
    .end annotation

    sget-object v7, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p4    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/loading/InjectionClassLoader;-><init>(Ljava/lang/ClassLoader;Z)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->protectionDomain:Ljava/security/ProtectionDomain;

    iput-object p5, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iput-object p6, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iput-object p7, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->classFilePostProcessor:Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->getContext()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->accessControlContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;)V
    .locals 7
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            ")V"
        }
    .end annotation

    sget-object v4, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    sget-object v6, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;)V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->methodHandle()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->PACKAGE_LOOKUP_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    return-object v0
.end method

.method public static synthetic c(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    .locals 0

    invoke-virtual/range {p0 .. p8}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private doGetPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 0
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p1

    return-object p1
.end method

.method private static doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static doPrivileged(Ljava/security/PrivilegedAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/AccessControlContext;

    invoke-static {p0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static doRegisterAsParallelCapable()V
    .locals 4
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Must be invoked from targeting class loader type."
        value = {
            "DP_DO_INSIDE_DO_PRIVILEGED"
        }
    .end annotation

    :try_start_0
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "registerAsParallelCapable"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic e(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->doGetPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Ljava/net/URL;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->NO_URL:Ljava/net/URL;

    return-object v0
.end method

.method public static synthetic g(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getContext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    sget-object v4, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;ZZ)Ljava/util/Map;
    .locals 9
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
            "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;",
            "ZZ)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuring privilege is explicit user responsibility."
        value = {
            "DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v8, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    sget-object v7, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;

    move-object v0, v8

    move-object v1, p0

    move v2, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;-><init>(Ljava/lang/ClassLoader;ZLjava/util/Map;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription;

    :try_start_0
    invoke-interface {p2}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p3, p4, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p3

    invoke-static {}, Lnet/bytebuddy/utility/GraalImageCode;->getCurrent()Lnet/bytebuddy/utility/GraalImageCode;

    move-result-object p4

    invoke-virtual {p4}, Lnet/bytebuddy/utility/GraalImageCode;->isNativeImageExecution()Z

    move-result p4

    if-nez p4, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    if-ne p4, v8, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Class already loaded: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot load class "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-object p0
.end method

.method private static methodHandle()Ljava/lang/Object;
    .locals 4

    const-string v0, "java.lang.invoke.MethodHandles"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "lookup"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doDefineClasses(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->SYNCHRONIZATION_STRATEGY:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;

    invoke-interface {v3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;->initialize()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;

    move-result-object v3

    invoke-interface {v3, p0, v2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;->getClassLoadingLock(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2, v0, v3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->release(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object v1

    :catchall_1
    move-exception p1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2, v1, v3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->release(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->lookup(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->classFilePostProcessor:Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface {v2, p0, p1, v3, v0}, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;->transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;-><init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;[B)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->accessControlContext:Ljava/lang/Object;

    invoke-static {v1, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->persistenceHandler:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->typeDefinitions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$EmptyEnumeration;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SingletonEnumeration;-><init>(Ljava/net/URL;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
