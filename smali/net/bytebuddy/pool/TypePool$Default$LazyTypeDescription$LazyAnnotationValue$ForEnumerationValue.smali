.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;
.super Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForEnumerationValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue<",
        "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
        "Ljava/lang/Enum<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private transient synthetic resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

.field private final typeName:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;-><init>(Lnet/bytebuddy/pool/TypePool$1;)V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->typeName:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doResolve()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->typeName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->typeName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/ModifierReviewable$OfEnumeration;->isEnum()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForMismatchedType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ENUMERATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForMismatchedType;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;Lnet/bytebuddy/pool/TypePool$1;)V

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->value:Ljava/lang/String;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$WithUnknownConstant;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->value:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$WithUnknownConstant;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;

    new-instance v2, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->value:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription;-><init>(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V

    :goto_0
    if-nez v1, :cond_4

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForEnumerationValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    :goto_1
    return-object v1
.end method

.method public getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->ENUMERATION:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method
