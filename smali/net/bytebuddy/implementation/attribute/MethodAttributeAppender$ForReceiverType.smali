.class public Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForReceiverType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForReceiverType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForReceiverType;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 2

    iget-object p2, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForReceiverType;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;

    new-instance v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;

    invoke-direct {v1, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target$OnMethod;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;)V

    invoke-static {v0, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofReceiverType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForReceiverType;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    check-cast p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForReceiverType;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForReceiverType;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForReceiverType;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .locals 0

    return-object p0
.end method
