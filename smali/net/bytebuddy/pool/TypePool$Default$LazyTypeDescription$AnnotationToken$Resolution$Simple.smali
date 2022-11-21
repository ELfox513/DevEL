.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Simple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Simple;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

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
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Simple;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Simple;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Simple;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

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

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Simple;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution$Simple;->annotationDescription:Lnet/bytebuddy/description/annotation/AnnotationDescription;

    return-object v0
.end method
