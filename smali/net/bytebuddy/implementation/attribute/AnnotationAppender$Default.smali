.class public Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/AnnotationAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    return-void
.end method

.method public static apply(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    sget-object v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->NO_NAME:Ljava/lang/String;

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->apply(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p0

    check-cast p3, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    sget-object p1, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    invoke-static {p0, p3, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->handle(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$OfEnumeration;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-class v0, Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_4

    check-cast p3, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p3}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2, p3}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;->visit(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2, p1, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->handle(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    :cond_0
    return-void
.end method

.method private doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p4, p5}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;->visit(Ljava/lang/String;ZILjava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2, p1, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->handle(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    :cond_0
    return-void
.end method

.method private static handle(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 4

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2, p1, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;->isRelevant(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v2, v3, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->apply(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    return-void
.end method


# virtual methods
.method public append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 2

    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$1;->a:[I

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getRetention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected retention policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getRetention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    :goto_0
    return-object p0
.end method

.method public append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
    .locals 9

    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$1;->a:[I

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getRetention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected retention policy: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getRetention()Ljava/lang/annotation/RetentionPolicy;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->doAppend(Lnet/bytebuddy/description/annotation/AnnotationDescription;ZLnet/bytebuddy/implementation/attribute/AnnotationValueFilter;ILjava/lang/String;)V

    :goto_0
    return-object p0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    check-cast p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->target:Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
