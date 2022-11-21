.class public Lnet/bytebuddy/pool/TypePool$ClassLoading;
.super Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassLoading"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p3    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;)V

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$ClassLoading;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;
    .locals 1
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Empty;

    invoke-static {p0, v0}, Lnet/bytebuddy/pool/TypePool$ClassLoading;->of(Ljava/lang/ClassLoader;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/ClassLoader;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool;
    .locals 2
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    new-instance v0, Lnet/bytebuddy/pool/TypePool$ClassLoading;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    invoke-direct {v0, v1, p1, p0}, Lnet/bytebuddy/pool/TypePool$ClassLoading;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static ofBootLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$ClassLoading;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public static ofPlatformLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$ClassLoading;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public static ofSystemLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$ClassLoading;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 3

    :try_start_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$ClassLoading;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$ClassLoading;->classLoader:Ljava/lang/ClassLoader;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$ClassLoading;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$ClassLoading;->classLoader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$ClassLoading;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
