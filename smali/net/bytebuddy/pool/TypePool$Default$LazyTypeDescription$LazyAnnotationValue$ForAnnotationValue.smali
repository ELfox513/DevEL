.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;
.super Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAnnotationValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue<",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

.field private transient synthetic resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;-><init>(Lnet/bytebuddy/pool/TypePool$1;)V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;->annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;-><init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;)V

    return-void
.end method


# virtual methods
.method public doResolve()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;->annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    invoke-static {v0, v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;->a(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;->isResolved()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;->annotationToken:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;

    invoke-virtual {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;->getBinaryName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isAnnotation()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForMismatchedType;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ANNOTATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    invoke-direct {v2, v0, v3, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForMismatchedType;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;Lnet/bytebuddy/pool/TypePool$1;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken$Resolution;->resolve()Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;-><init>(Lnet/bytebuddy/description/annotation/AnnotationDescription;)V

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForAnnotationValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    :goto_1
    return-object v1
.end method

.method public getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ANNOTATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method
