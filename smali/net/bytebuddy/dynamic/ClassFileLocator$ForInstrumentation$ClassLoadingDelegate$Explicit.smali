.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fallbackDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Default;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;-><init>(Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->fallbackDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->types:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->types:Ljava/util/Map;

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static of(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;-><init>(Ljava/lang/ClassLoader;Ljava/util/Collection;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->fallbackDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->fallbackDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->types:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->types:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->fallbackDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->fallbackDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->types:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public locate(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->types:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->fallbackDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;->locate(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method
