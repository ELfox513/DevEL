.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;
.super Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTopLevelType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final internalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;->internalName:Ljava/lang/String;

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;->internalName:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;->internalName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;->internalName:Ljava/lang/String;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

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

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;->internalName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isParameterized()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toToken()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
    .locals 3

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForParameterizedType;

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;->parameters:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForParameterizedType;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForRawType;

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForTopLevelType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForRawType;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
