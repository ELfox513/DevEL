.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForExplicitField"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

.field private final defaultValue:Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Ljava/lang/Object;Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getActualModifiers()I

    move-result v2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getGenericSignature()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lnet/bytebuddy/description/field/FieldDescription;->NO_DEFAULT_VALUE:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->resolveDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {p2, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {p2, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getField()Lnet/bytebuddy/description/field/FieldDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-object v0
.end method

.method public getFieldAppender()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isImplicit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resolveDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method
