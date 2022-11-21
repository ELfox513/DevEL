.class public abstract Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForDefinedMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithoutBody;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithBody;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 9

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->isImplemented()Z

    move-result v1

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/method/MethodDescription;->getActualModifiers(ZLnet/bytebuddy/description/modifier/Visibility;)I

    move-result v4

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getGenericSignature()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getMethod()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->hasExplicitMetaData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyHead(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    invoke-interface {p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyBody(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    :cond_1
    return-void
.end method
