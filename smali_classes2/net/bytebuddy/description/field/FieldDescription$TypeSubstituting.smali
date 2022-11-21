.class public Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;
.super Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/field/FieldDescription$InGenericShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSubstituting"
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

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
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iput-object p3, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->asDefined()Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method
