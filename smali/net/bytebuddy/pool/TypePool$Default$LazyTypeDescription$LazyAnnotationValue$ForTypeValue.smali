.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;
.super Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForTypeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private transient synthetic resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

.field private final typeName:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue;-><init>(Lnet/bytebuddy/pool/TypePool$1;)V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;->typeName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doResolve()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;->typeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForTypeDescription;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;->typeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType;-><init>(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationValue$ForTypeValue;->resolved:Lnet/bytebuddy/description/annotation/AnnotationValue;

    :goto_1
    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->TYPE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method
