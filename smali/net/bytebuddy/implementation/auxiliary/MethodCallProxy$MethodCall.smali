.class public Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final accessorMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->accessorMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->accessorMethod:Lnet/bytebuddy/description/method/MethodDescription;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-object p0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$1;)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->accessorMethod:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->accessorMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->accessorMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method
