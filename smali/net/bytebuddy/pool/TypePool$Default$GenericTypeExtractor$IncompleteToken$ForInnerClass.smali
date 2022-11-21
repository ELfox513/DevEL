.class public Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;
.super Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForInnerClass"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final INNER_CLASS_SEPARATOR:C = '$'


# instance fields
.field private final internalName:Ljava/lang/String;

.field private final outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->internalName:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->internalName:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->internalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    invoke-interface {v1}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->internalName:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->internalName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isParameterized()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->isParameterized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toToken()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;
    .locals 4

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->isParameterized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForRawType;

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForRawType;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForParameterizedType$Nested;

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$AbstractBase;->parameters:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken$ForInnerClass;->outerTypeToken:Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;

    invoke-interface {v3}, Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor$IncompleteToken;->toToken()Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForParameterizedType$Nested;-><init>(Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken;)V

    :goto_1
    return-object v0
.end method
