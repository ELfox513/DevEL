.class public Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAnnotationValue"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/annotation/AnnotationValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-void
.end method


# virtual methods
.method public assemble(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 1

    new-instance p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-direct {p3, p1, v0, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)V

    return-object p3
.end method

.method public compile(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;
    .locals 0

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
