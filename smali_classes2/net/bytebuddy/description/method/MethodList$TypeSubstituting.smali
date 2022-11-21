.class public Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;
.super Lnet/bytebuddy/description/method/MethodList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSubstituting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/MethodList$AbstractBase<",
        "Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;",
        ">;"
    }
.end annotation


# instance fields
.field public final declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field public final methodDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;->methodDescriptions:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;->get(I)Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$TypeSubstituting;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;->methodDescriptions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/description/method/MethodDescription$TypeSubstituting;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodList$TypeSubstituting;->methodDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
