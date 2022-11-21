.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;
.super Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyParameterList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)V

    return-void
.end method


# virtual methods
.method public asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->k(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    iget-object v2, v2, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->i(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$Resolution$ForMethod;->resolveParameterTypes(Ljava/util/List;Lnet/bytebuddy/pool/TypePool;Ljava/util/Map;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .locals 2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterDescription;-><init>(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;I)V

    return-object v0
.end method

.method public hasExplicitMetaData()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->d(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->e(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription$LazyParameterList;->a:Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;->g(Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyMethodDescription;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
