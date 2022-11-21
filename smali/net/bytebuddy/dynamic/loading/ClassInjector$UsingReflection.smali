.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingReflection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$System;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static final CHECK_PERMISSION:Ljava/lang/reflect/Method;

.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

.field private static final SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$System;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final forbidExisting:Z

.field private final packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

.field private final protectionDomain:Ljava/security/ProtectionDomain;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.security.AccessController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v2, "net.bytebuddy.securitymanager"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-boolean v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->ACCESS_CONTROLLER:Z

    goto :goto_0

    :catch_1
    sput-boolean v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->ACCESS_CONTROLLER:Z

    :goto_0
    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$CreationAction;

    invoke-static {v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    sput-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    const-class v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$System;

    invoke-static {v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$System;

    sput-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$System;

    new-instance v2, Lnet/bytebuddy/utility/privilege/GetMethodAction;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Ljava/security/Permission;

    aput-object v3, v0, v1

    const-string v1, "java.lang.SecurityManager"

    const-string v3, "checkPermission"

    invoke-direct {v2, v1, v3, v0}, Lnet/bytebuddy/utility/privilege/GetMethodAction;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-static {v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->CHECK_PERMISSION:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V
    .locals 2
    .param p2    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;Z)V
    .locals 0
    .param p2    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iput-boolean p4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot inject classes into the bootstrap class loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$System;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$System;

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->CHECK_PERMISSION:Ljava/lang/reflect/Method;

    return-object v0
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

    sget-boolean v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static ofSystemClassLoader()Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public injectRaw(Ljava/util/Map;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher$Initializable;->initialize()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/util/Map$Entry;

    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12, v0, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->getClassLoadingLock(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_0
    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v12, v0, v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->findClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object v2, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v11, v3}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;->define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;

    move-result-object v10

    invoke-interface {v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v12, v0, v11}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->getDefinedPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v3, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVendor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSealBase()Ljava/net/URL;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v12

    move-object v4, v11

    move-object/from16 p1, v14

    move-object v14, v10

    move-object v10, v0

    move-object/from16 v18, v13

    move-object v13, v11

    move-object/from16 v11, v17

    :try_start_2
    invoke-interface/range {v2 .. v11}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->definePackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v18, v13

    move-object/from16 p1, v14

    move-object v14, v10

    move-object v13, v11

    :goto_1
    :try_start_3
    iget-object v2, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v12, v2, v13}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v14, v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isCompatibleTo(Ljava/lang/Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sealing violation for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (getPackage fallback)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    throw v0

    :cond_2
    move-object/from16 v18, v13

    move-object/from16 p1, v14

    move-object v14, v10

    move-object v13, v11

    invoke-interface {v14, v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isCompatibleTo(Ljava/lang/Package;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sealing violation for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object/from16 v18, v13

    move-object/from16 p1, v14

    :goto_2
    iget-object v0, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface {v12, v0, v2, v3, v4}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection$Dispatcher;->defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BLjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object/from16 v18, v13

    move-object/from16 p1, v14

    iget-boolean v2, v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->forbidExisting:Z

    if-nez v2, :cond_6

    :goto_3
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v16

    move-object/from16 v14, p1

    move-object v13, v3

    goto/16 :goto_0

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot inject already loaded type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    move-object v3, v13

    return-object v3
.end method

.method public isAlive()Z
    .locals 1

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;->isAvailable()Z

    move-result v0

    return v0
.end method
