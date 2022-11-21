.class public Lnet/bytebuddy/pool/TypePool$Explicit;
.super Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Empty;

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/pool/TypePool$Explicit;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;->INSTANCE:Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;)V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Explicit;->types:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Explicit;->types:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;

    invoke-direct {p1, v0}, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    move-object v0, p1

    :goto_0
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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Explicit;->types:Ljava/util/Map;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Explicit;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Explicit;->types:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Explicit;->types:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
