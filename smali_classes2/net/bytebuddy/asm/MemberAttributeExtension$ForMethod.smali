.class public Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
.super Lnet/bytebuddy/asm/MemberAttributeExtension;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberAttributeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/asm/MemberAttributeExtension<",
        "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    invoke-direct {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/MemberAttributeExtension;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p1

    return-object p1
.end method

.method public annotateMethod(Ljava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotateMethod([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateMethod(Ljava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotateMethod([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p1

    return-object p1
.end method

.method public annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;"
        }
    .end annotation

    if-ltz p1, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter index cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public annotateParameter(ILjava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotateParameter(I[Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateParameter(ILjava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotateParameter(I[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 6

    new-instance v0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberAttributeExtension;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iget-object v4, p0, Lnet/bytebuddy/asm/MemberAttributeExtension;->attributeAppenderFactory:Ljava/lang/Object;

    check-cast v4, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory$Compound;-><init>([Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    return-object v0
.end method

.method public on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 6

    new-instance p4, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;

    iget-object p5, p0, Lnet/bytebuddy/asm/MemberAttributeExtension;->attributeAppenderFactory:Ljava/lang/Object;

    check-cast p5, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    invoke-interface {p5, p1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    move-result-object v3

    iget-object p1, p0, Lnet/bytebuddy/asm/MemberAttributeExtension;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {p1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/asm/MemberAttributeExtension$1;)V

    return-object p4
.end method
