.class public Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForBooleanConstant"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;->value:Z

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
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;->value:Z

    check-cast p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;

    iget-boolean p1, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;->value:Z

    if-eq v2, p1, :cond_3

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

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;->value:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    return-object p1
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$Resolved;
    .locals 0

    new-instance p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$Resolved$Simple;

    iget-boolean p2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForBooleanConstant;->value:Z

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(Z)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$Resolved$Simple;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object p1
.end method
