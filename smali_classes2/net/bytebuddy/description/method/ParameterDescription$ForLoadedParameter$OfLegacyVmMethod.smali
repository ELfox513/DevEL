.class public Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;
.super Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfLegacyVmMethod"
.end annotation


# instance fields
.field private final index:I

.field private final method:Ljava/lang/reflect/Method;

.field private final parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

.field private final parameterType:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I[Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I[",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->method:Ljava/lang/reflect/Method;

    iput p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->index:I

    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->parameterType:[Ljava/lang/Class;

    iput-object p4, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->index:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->method:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->index:I

    return v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4

    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->parameterType:[Ljava/lang/Class;

    iget v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfMethodParameter;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->method:Ljava/lang/reflect/Method;

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->index:I

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;->parameterType:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfMethodParameter;-><init>(Ljava/lang/reflect/Method;I[Ljava/lang/Class;)V

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNamed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
