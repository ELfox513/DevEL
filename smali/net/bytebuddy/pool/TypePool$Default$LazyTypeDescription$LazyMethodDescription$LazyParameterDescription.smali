.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;
.super Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyParameterDescription"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

.field private final index:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;I)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;-><init>()V

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->index:I

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    iget-object v0, v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->l(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asListOfNullable(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    return-object v0
.end method

.method public bridge synthetic getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->index:I

    return v0
.end method

.method public getModifiers()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->hasModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->e(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)[Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getModifiers()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->isNamed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->d(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->index:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->k(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    iget-object v2, v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->i(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;->resolveParameterTypes(Ljava/util/List;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->e(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)[Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNamed()Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->d(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;->index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
