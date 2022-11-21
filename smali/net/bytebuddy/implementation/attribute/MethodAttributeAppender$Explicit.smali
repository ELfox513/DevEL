.class public Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;
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
    name = "Explicit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final target:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethodParameter;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;-><init>(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target$OnMethod;

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;-><init>(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->target:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;

    iput-object p2, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->annotations:Ljava/util/List;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    invoke-static {p0}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->ofMethodAnnotations(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->ofParameterAnnotations(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory$Compound;-><init>([Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    return-object v0
.end method

.method public static ofMethodAnnotations(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;

    invoke-interface {p0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static ofParameterAnnotations(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;
    .locals 4

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription;

    new-instance v2, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v3

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory$Compound;

    invoke-direct {p0, v0}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory$Compound;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->target:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;->make(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Target;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->annotations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v0, p2, p3}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->append(Lnet/bytebuddy/description/annotation/AnnotationDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)Lnet/bytebuddy/implementation/attribute/AnnotationAppender;

    move-result-object v0

    goto :goto_0

    :cond_0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->target:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;

    check-cast p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;

    iget-object v3, p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->target:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->annotations:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->annotations:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->target:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;->annotations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .locals 0

    return-object p0
.end method
