.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;
.super Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;",
        ">;"
    }
.end annotation


# instance fields
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->nodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public asMethodList()Lnet/bytebuddy/description/method/MethodList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/method/MethodList$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/method/MethodList$Explicit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->get(I)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public wrap(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;->wrap(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    move-result-object p1

    return-object p1
.end method
