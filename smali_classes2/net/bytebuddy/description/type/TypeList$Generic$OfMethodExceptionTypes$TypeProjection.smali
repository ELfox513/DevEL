.class Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeProjection"
.end annotation


# instance fields
.field private final erasure:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final index:I

.field private final method:Ljava/lang/reflect/Method;

.field private transient synthetic resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->method:Ljava/lang/reflect/Method;

    iput p2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->index:I

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    iget v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->method:Ljava/lang/reflect/Method;

    iget v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->index:I

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;-><init>(Ljava/lang/reflect/AccessibleObject;I)V

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    array-length v1, v1

    array-length v2, v0

    if-ne v1, v2, :cond_1

    iget v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->index:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AbstractBase;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfMethodExceptionTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_1
    return-object v0
.end method
