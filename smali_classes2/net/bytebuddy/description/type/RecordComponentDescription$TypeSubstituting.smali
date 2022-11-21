.class public Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;
.super Lnet/bytebuddy/description/type/RecordComponentDescription$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/RecordComponentDescription$InGenericShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSubstituting"
.end annotation


# instance fields
.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

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
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/RecordComponentDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p2, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    iput-object p3, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->asDefined()Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    return-object v0
.end method

.method public getAccessor()Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

    return-object v0
.end method

.method public bridge synthetic getAccessor()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->getAccessor()Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

    move-result-object v0

    return-object v0
.end method

.method public getActualName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->declaringType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/RecordComponentDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method
