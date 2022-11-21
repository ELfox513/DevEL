.class public Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Simple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final additionalVariableLength:I

.field private final dispatcher:Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;

.field private final prepareable:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->dispatcher:Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;

    iput-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->prepareable:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;

    iput p3, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->additionalVariableLength:I

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;)Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->dispatcher:Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;)I
    .locals 0

    iget p0, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->additionalVariableLength:I

    return p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher$Appender;-><init>(Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;Lnet/bytebuddy/implementation/Implementation$Target;)V

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
    iget v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->additionalVariableLength:I

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    iget v3, p1, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->additionalVariableLength:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->dispatcher:Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;

    iget-object v3, p1, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->dispatcher:Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->prepareable:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->prepareable:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->dispatcher:Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->prepareable:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->additionalVariableLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;->prepareable:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method
