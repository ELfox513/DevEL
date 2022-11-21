.class final enum Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod$2;
.super Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/attribute/MethodAttributeAppender$1;)V

    return-void
.end method


# virtual methods
.method public appendReceiver(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 0

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$ForTypeAnnotations;->ofReceiverType(Lnet/bytebuddy/implementation/attribute/AnnotationAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object p1

    invoke-interface {p3, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    :goto_0
    return-object p1
.end method
