.class public Lnet/bytebuddy/description/method/ParameterDescription$Latent;
.super Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latent"
.end annotation


# instance fields
.field private final declaredAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final index:I

.field private final modifiers:Ljava/lang/Integer;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final offset:I

.field private final parameterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/method/ParameterDescription$Token;II)V
    .locals 8

    invoke-virtual {p2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-virtual {p2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    invoke-virtual {p2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getModifiers()Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;II)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;II)V
    .locals 8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_NAME:Ljava/lang/String;

    sget-object v5, Lnet/bytebuddy/description/method/ParameterDescription$Token;->NO_MODIFIERS:Ljava/lang/Integer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;II)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;II)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->parameterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->declaredAnnotations:Ljava/util/List;

    iput-object p4, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->name:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->modifiers:Ljava/lang/Integer;

    iput p6, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->index:I

    iput p7, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->offset:I

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->declaredAnnotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public bridge synthetic getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->index:I

    return v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->modifiers:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getModifiers()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->offset:I

    return v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->parameterType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/method/ParameterDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->modifiers:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNamed()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$Latent;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
