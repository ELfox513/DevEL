.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfParameterizedType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private final rawType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 1
    .param p2    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p2    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doAnnotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotations:Ljava/util/List;

    invoke-static {v4, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public doBuild()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 6

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    new-instance v4, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;

    iget-object v5, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotations:Ljava/util/List;

    invoke-direct {v4, v5}, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->rawType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->ownerType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfParameterizedType;->parameterTypes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
