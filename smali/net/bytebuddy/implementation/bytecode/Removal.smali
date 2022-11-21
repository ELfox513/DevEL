.class public enum Lnet/bytebuddy/implementation/bytecode/Removal;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Removal;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Removal;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/Removal;

.field public static final enum SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/Removal;


# instance fields
.field private final opcode:I

.field private final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Removal$1;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "ZERO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lnet/bytebuddy/implementation/bytecode/Removal$1;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Removal;->ZERO:Lnet/bytebuddy/implementation/bytecode/Removal;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/Removal;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v4, "SINGLE"

    const/4 v5, 0x1

    const/16 v6, 0x57

    invoke-direct {v1, v4, v5, v2, v6}, Lnet/bytebuddy/implementation/bytecode/Removal;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/Removal;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v6, "DOUBLE"

    const/4 v7, 0x2

    const/16 v8, 0x58

    invoke-direct {v2, v6, v7, v4, v8}, Lnet/bytebuddy/implementation/bytecode/Removal;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/Removal;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    const/4 v4, 0x3

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/Removal;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/Removal;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Removal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Removal;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/Removal;->opcode:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;ILnet/bytebuddy/implementation/bytecode/Removal$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/bytecode/Removal;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal$2;->a:[I

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/Removal;->ZERO:Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/Removal;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object p0

    :cond_2
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Removal;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/Removal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Removal;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Removal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Removal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/Removal;->opcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Removal;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
