.class public Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;
.super Lnet/bytebuddy/asm/MemberAttributeExtension;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberAttributeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/asm/MemberAttributeExtension<",
        "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    invoke-direct {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$NoOp;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/MemberAttributeExtension;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public annotate(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Explicit;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Explicit;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;->attribute(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;

    move-result-object p1

    return-object p1
.end method

.method public annotate(Ljava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;->annotate(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotate([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;->annotate(Ljava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;

    move-result-object p1

    return-object p1
.end method

.method public varargs annotate([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;->annotate(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;
    .locals 6

    new-instance v0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberAttributeExtension;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    iget-object v4, p0, Lnet/bytebuddy/asm/MemberAttributeExtension;->attributeAppenderFactory:Ljava/lang/Object;

    check-cast v4, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory$Compound;-><init>([Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;)V

    return-object v0
.end method

.method public on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;

    invoke-direct {v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;->field(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 7

    new-instance v6, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension;->attributeAppenderFactory:Ljava/lang/Object;

    check-cast v0, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    move-result-object v3

    iget-object p1, p0, Lnet/bytebuddy/asm/MemberAttributeExtension;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-interface {p1, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForField$FieldAttributeVisitor;-><init>(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/asm/MemberAttributeExtension$1;)V

    return-object v6
.end method
