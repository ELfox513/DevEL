.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;
.super Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessorBridge"
.end annotation


# instance fields
.field private final bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

.field private final bridgeType:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription$TypeToken;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->bridgeType:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$TypeErasing;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$TypeErasing;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    or-int/lit16 v0, v0, 0x1000

    and-int/lit16 v0, v0, -0x501

    return v0
.end method

.method public getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->bridgeType:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;->bridgeType:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method
