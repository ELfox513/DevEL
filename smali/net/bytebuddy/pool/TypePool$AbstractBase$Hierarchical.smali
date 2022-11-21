.class public abstract Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;
.super Lnet/bytebuddy/pool/TypePool$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Hierarchical"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final parent:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;)V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->clear()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->clear()V

    throw v0
.end method

.method public describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-interface {v0, p1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->parent:Lnet/bytebuddy/pool/TypePool;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
