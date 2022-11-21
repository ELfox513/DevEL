.class public Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ambiguous"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final left:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final parameters:I

.field private final priority:I

.field private final right:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->left:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->right:Ljava/lang/reflect/Constructor;

    iput p3, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->priority:I

    iput p4, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->parameters:I

    return-void
.end method


# virtual methods
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
    iget v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->priority:I

    check-cast p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;

    iget v3, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->priority:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->parameters:I

    iget v3, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->parameters:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->left:Ljava/lang/reflect/Constructor;

    iget-object v3, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->left:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->right:Ljava/lang/reflect/Constructor;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->right:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->left:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->right:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->priority:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->parameters:I

    add-int/2addr v0, v1

    return v0
.end method

.method public instantiate()Lnet/bytebuddy/build/Plugin;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ambiguous constructors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->left:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->right:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceBy(Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;
    .locals 4

    invoke-virtual {p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;->value()I

    move-result v2

    :goto_0
    iget v3, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->priority:I

    if-le v2, v3, :cond_1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;->value()I

    move-result v1

    :goto_1
    iget v0, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->priority:I

    if-ge v1, v0, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;->parameters:I

    if-le v0, v1, :cond_4

    return-object p1

    :cond_4
    return-object p0
.end method
