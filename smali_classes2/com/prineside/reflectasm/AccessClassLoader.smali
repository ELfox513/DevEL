.class Lcom/prineside/reflectasm/AccessClassLoader;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prineside/reflectasm/AccessClassLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/ClassLoader;

.field public static volatile d:Lcom/prineside/reflectasm/AccessClassLoader;

.field public static volatile e:Ljava/lang/reflect/Method;


# instance fields
.field public final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->b:Ljava/util/WeakHashMap;

    const-class v0, Lcom/prineside/reflectasm/AccessClassLoader;

    invoke-static {v0}, Lcom/prineside/reflectasm/AccessClassLoader;->f(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->c:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/prineside/reflectasm/AccessClassLoader;

    invoke-direct {v1, v0}, Lcom/prineside/reflectasm/AccessClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/prineside/reflectasm/AccessClassLoader;->d:Lcom/prineside/reflectasm/AccessClassLoader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/prineside/reflectasm/AccessClassLoader;->a:Ljava/util/HashSet;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p0, :cond_3

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    if-nez p1, :cond_5

    if-ne p0, v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    if-ne p0, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public static activeAccessClassLoaders()I
    .locals 2

    sget-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    sget-object v1, Lcom/prineside/reflectasm/AccessClassLoader;->d:Lcom/prineside/reflectasm/AccessClassLoader;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public static d(Ljava/lang/Class;)Lcom/prineside/reflectasm/AccessClassLoader;
    .locals 3

    invoke-static {p0}, Lcom/prineside/reflectasm/AccessClassLoader;->f(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    sget-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/prineside/reflectasm/AccessClassLoader;->d:Lcom/prineside/reflectasm/AccessClassLoader;

    if-nez p0, :cond_1

    sget-object p0, Lcom/prineside/reflectasm/AccessClassLoader;->b:Ljava/util/WeakHashMap;

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/prineside/reflectasm/AccessClassLoader;->d:Lcom/prineside/reflectasm/AccessClassLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/prineside/reflectasm/AccessClassLoader;

    invoke-direct {v1, v0}, Lcom/prineside/reflectasm/AccessClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/prineside/reflectasm/AccessClassLoader;->d:Lcom/prineside/reflectasm/AccessClassLoader;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/prineside/reflectasm/AccessClassLoader;->d:Lcom/prineside/reflectasm/AccessClassLoader;

    return-object p0

    :cond_2
    sget-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->b:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/reflectasm/AccessClassLoader;

    if-eqz v1, :cond_3

    monitor-exit v0

    return-object v1

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v1, Lcom/prineside/reflectasm/AccessClassLoader;

    invoke-direct {v1, p0}, Lcom/prineside/reflectasm/AccessClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static e()Ljava/lang/reflect/Method;
    .locals 7

    sget-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->b:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/prineside/reflectasm/AccessClassLoader;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "defineClass"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, [B

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-class v6, Ljava/security/ProtectionDomain;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/prineside/reflectasm/AccessClassLoader;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/prineside/reflectasm/AccessClassLoader;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->e:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static f(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static remove(Ljava/lang/ClassLoader;)V
    .locals 1

    sget-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/prineside/reflectasm/AccessClassLoader;->d:Lcom/prineside/reflectasm/AccessClassLoader;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/reflectasm/AccessClassLoader;->b:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/prineside/reflectasm/AccessClassLoader;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/prineside/reflectasm/AccessClassLoader;->c(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/prineside/reflectasm/AccessClassLoader;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v4, 0x0

    :try_start_1
    array-length v5, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    const-string v1, "AccessClassLoader"

    const-string v2, "failed to define class in a regular way, using ByteBuddy ClassLoadingStrategy"

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2}, Lcom/prineside/tdi2/ActionResolver;->getByteBuddyClassLoadingStrategy()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/prineside/reflectasm/AccessClassLoader$1;

    invoke-direct {v3, p0, p1}, Lcom/prineside/reflectasm/AccessClassLoader$1;-><init>(Lcom/prineside/reflectasm/AccessClassLoader;Ljava/lang/String;)V

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Lcom/prineside/reflectasm/AccessClassLoader;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "created new class: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to define class in a regular way and no ClassLoadingStrategy provided by ActionResolver"

    invoke-direct {p1, p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/prineside/reflectasm/AccessClassLoader;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/prineside/reflectasm/AccessClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/prineside/reflectasm/PublicConstructorAccess;

    const-class v1, Lcom/prineside/reflectasm/ConstructorAccess;

    const-class v2, Lcom/prineside/reflectasm/MethodAccess;

    const-class v3, Lcom/prineside/reflectasm/FieldAccess;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
