.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/assign/Assigner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner$IsAssignableToVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    return-object v0
.end method


# virtual methods
.method public assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner$IsAssignableToVisitor;

    invoke-direct {v0, p2}, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner$IsAssignableToVisitor;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object p1

    :cond_1
    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->isDynamic()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    invoke-interface {p1, p3}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/assign/TypeCasting;->to(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-object p1

    :cond_4
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_2

    :cond_5
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    :goto_2
    return-object p1
.end method
