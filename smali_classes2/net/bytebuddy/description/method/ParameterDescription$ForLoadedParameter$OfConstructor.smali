.class public Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfConstructor;
.super Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;ILnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;I",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;-><init>(Ljava/lang/reflect/AccessibleObject;ILnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 4
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "The implicit field type casting is not understood by Findbugs"
        value = {
            "BC_UNCONFIRMED_CAST"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfConstructor;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    array-length v2, v0

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isInnerClass()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    if-nez v1, :cond_0

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v1
.end method

.method public getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "The implicit field type casting is not understood by Findbugs."
        value = {
            "BC_UNCONFIRMED_CAST"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "The implicit field type casting is not understood by Findbugs."
        value = {
            "BC_UNCONFIRMED_CAST"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfConstructor;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "The implicit field type casting is not understood by Findbugs."
        value = {
            "BC_UNCONFIRMED_CAST"
        }
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Constructor;

    iget v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfConstructorParameter;-><init>(Ljava/lang/reflect/Constructor;I[Ljava/lang/Class;)V

    return-object v0
.end method
