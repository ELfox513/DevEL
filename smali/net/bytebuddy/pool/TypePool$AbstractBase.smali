.class public abstract Lnet/bytebuddy/pool/TypePool$AbstractBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;,
        Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;,
        Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ARRAY_SYMBOL:Ljava/lang/String; = "["

.field public static final PRIMITIVE_DESCRIPTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMITIVE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x6

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x7

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/16 v4, 0x8

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->PRIMITIVE_TYPES:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->PRIMITIVE_DESCRIPTORS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->clear()V

    return-void
.end method

.method public describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    sget-object v1, Lnet/bytebuddy/pool/TypePool$AbstractBase;->PRIMITIVE_DESCRIPTORS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :cond_2
    :goto_1
    sget-object v1, Lnet/bytebuddy/pool/TypePool$AbstractBase;->PRIMITIVE_TYPES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-interface {v1, p1}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v2, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;

    invoke-direct {v2, v1}, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    move-object v1, v2

    :goto_2
    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->doCache(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    :cond_4
    invoke-static {v1, v0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$ArrayTypeResolution;->of(Lnet/bytebuddy/pool/TypePool$Resolution;I)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains the illegal character \'/\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public doCache(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/pool/TypePool$CacheProvider;->register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object p1

    return-object p1
.end method

.method public abstract doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$AbstractBase;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

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

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase;->cacheProvider:Lnet/bytebuddy/pool/TypePool$CacheProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
