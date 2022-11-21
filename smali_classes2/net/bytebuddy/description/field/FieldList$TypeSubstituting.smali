.class public Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;
.super Lnet/bytebuddy/description/field/FieldList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSubstituting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/field/FieldList$AbstractBase<",
        "Lnet/bytebuddy/description/field/FieldDescription$InGenericShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final fieldDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;->fieldDescriptions:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;->get(I)Lnet/bytebuddy/description/field/FieldDescription$InGenericShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/field/FieldDescription$InGenericShape;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v2, p0, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;->fieldDescriptions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription;

    iget-object v2, p0, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldList$TypeSubstituting;->fieldDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
