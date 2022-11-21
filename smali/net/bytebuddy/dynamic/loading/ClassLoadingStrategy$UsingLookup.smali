.class public Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/loading/ClassInjector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;

    invoke-static {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;-><init>(Lnet/bytebuddy/dynamic/loading/ClassInjector;)V

    return-object v0
.end method

.method public static withFallback(Ljava/util/concurrent/Callable;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->withFallback(Ljava/util/concurrent/Callable;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object p0

    return-object p0
.end method

.method public static withFallback(Ljava/util/concurrent/Callable;Z)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;Z)",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->of(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForUnsafeInjection;

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForUnsafeInjection;-><init>()V

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;->WRAPPER:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$Default;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Neither lookup or unsafe class injection is available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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

    iget-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$UsingLookup;->classInjector:Lnet/bytebuddy/dynamic/loading/ClassInjector;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
