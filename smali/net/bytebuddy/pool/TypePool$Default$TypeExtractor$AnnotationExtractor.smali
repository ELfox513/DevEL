.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;
.super Lnet/bytebuddy/jar/asm/AnnotationVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationExtractor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;,
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

.field private final annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

.field private final componentTypeLocator:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;ILjava/util/Map;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;",
            "Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;",
            ")V"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;

    invoke-direct {v0, p2, p3, p4}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement$WithIndex;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-direct {p0, p1, v0, p5}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;",
            "Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;",
            ")V"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement;

    invoke-direct {v0, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForByteCodeElement;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, p1, v0, p4}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;-><init>(I)V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->componentTypeLocator:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;)Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    return-object p0
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p2, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_1

    check-cast p2, Lnet/bytebuddy/jar/asm/Type;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v2, v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$1;)V

    invoke-interface {v0, p1, v1}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    invoke-static {p2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Ljava/lang/Object;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    :goto_1
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;

    invoke-direct {v2, p0, p2, p1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$AnnotationLookup;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v3, v3, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {p1, v3, p2}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->componentTypeLocator:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;

    invoke-interface {v3, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;->bind(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor$ArrayLookup;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;Lnet/bytebuddy/pool/TypePool$1;)V

    sget-object p1, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->onComplete()V

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->annotationRegistrant:Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v2, v2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$1;)V

    invoke-interface {v0, p1, v1}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;->register(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    return-void
.end method
