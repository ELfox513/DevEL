.class public Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;
.super Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfTypeVariables"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;
    }
.end annotation


# instance fields
.field private final detachedTypeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation
.end field

.field private final typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

.field private final visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
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
.method public constructor <init>(Lnet/bytebuddy/description/TypeVariableSource;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/TypeVariableSource;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;->detachedTypeVariables:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;->get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;->detachedTypeVariables:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeVariableToken;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;-><init>(Lnet/bytebuddy/description/TypeVariableSource;Lnet/bytebuddy/description/type/TypeVariableToken;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;->detachedTypeVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
