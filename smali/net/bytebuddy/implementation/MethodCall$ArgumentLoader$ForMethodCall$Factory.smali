.class public Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodCall:Lnet/bytebuddy/implementation/MethodCall;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/MethodCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/MethodCall;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/MethodCall;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$ArgumentProvider;

    new-instance v1, Lnet/bytebuddy/implementation/MethodCall$Appender;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->IGNORING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    invoke-direct {v1, v2, p1, v3}, Lnet/bytebuddy/implementation/MethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/MethodCall;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$ArgumentProvider;-><init>(Lnet/bytebuddy/implementation/MethodCall$Appender;)V

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/MethodCall;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method
