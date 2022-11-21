.class public Lnet/bytebuddy/implementation/MethodCall$FieldSetting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodCall:Lnet/bytebuddy/implementation/MethodCall;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/MethodCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    return-void
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/MethodCall;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$FieldSetting$Appender;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/MethodCall;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/MethodCall;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;->methodCall:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/MethodCall;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;-><init>(Lnet/bytebuddy/implementation/MethodCall;)V

    return-object v0
.end method
