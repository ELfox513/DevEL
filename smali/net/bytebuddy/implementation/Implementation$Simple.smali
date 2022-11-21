.class public Lnet/bytebuddy/implementation/Implementation$Simple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;,
        Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final NO_ADDITIONAL_VARIABLES:I


# instance fields
.field private final byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# direct methods
.method public varargs constructor <init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-void
.end method

.method public static of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;)Lnet/bytebuddy/implementation/Implementation;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/bytebuddy/implementation/Implementation$Simple;->of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;I)Lnet/bytebuddy/implementation/Implementation;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;I)Lnet/bytebuddy/implementation/Implementation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    invoke-static {p0, v0, p1}, Lnet/bytebuddy/implementation/Implementation$Simple;->of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)Lnet/bytebuddy/implementation/Implementation;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;)Lnet/bytebuddy/implementation/Implementation;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/implementation/Implementation$Simple;->of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)Lnet/bytebuddy/implementation/Implementation;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)Lnet/bytebuddy/implementation/Implementation;
    .locals 1

    if-ltz p2, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;-><init>(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Additional variable length cannot be negative: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-object p1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Simple;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
