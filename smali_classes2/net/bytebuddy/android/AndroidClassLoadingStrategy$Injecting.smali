.class public Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;
.super Lnet/bytebuddy/android/AndroidClassLoadingStrategy;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/android/AndroidClassLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injecting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    :try_start_0
    new-instance v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForAndroidPVm;

    const-class v1, Ldalvik/system/BaseDexClassLoader;

    const-string v2, "addDexPath"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForAndroidPVm;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher$ForLegacyVm;

    :goto_0
    sput-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$ForSdkCompiler;->makeDefault()Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;-><init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;-><init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V

    return-void
.end method


# virtual methods
.method public doLoad(Ljava/lang/ClassLoader;Ljava/util/Set;Ljava/io/File;)Ljava/util/Map;
    .locals 3
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->privateDirectory:Ljava/io/File;

    iget-object v2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-interface {v0, v1, p3, p1, v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;->loadDex(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/RandomString;)Ldalvik/system/DexFile;

    move-result-object p3

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;->DISPATCHER:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;

    invoke-interface {v2, p3, p1, v1}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting$Dispatcher;->loadClass(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ldalvik/system/DexFile;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ldalvik/system/DexFile;->close()V

    :cond_3
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
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

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot inject classes into the bootstrap class loader on Android"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
