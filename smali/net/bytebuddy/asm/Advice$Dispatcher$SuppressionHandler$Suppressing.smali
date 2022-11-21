.class public Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Suppressing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final suppressedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$NoOp;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;

    invoke-direct {v0, p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;
    .locals 2

    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing$Bound;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

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

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Suppressing;->suppressedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
