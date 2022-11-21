.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfGenericArrayType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method


# virtual methods
.method public doAnnotate(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;
    .locals 3
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

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotations:Ljava/util/List;

    invoke-static {v2, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object v0
.end method

.method public doBuild()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;

    iget-object v3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->annotations:Ljava/util/List;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationSource$Explicit;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder$OfGenericArrayType;->componentType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
