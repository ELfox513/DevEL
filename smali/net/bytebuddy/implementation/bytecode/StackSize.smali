.class public final enum Lnet/bytebuddy/implementation/bytecode/StackSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/StackSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/StackSize;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

.field public static final enum SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;


# instance fields
.field private final size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v3, "SINGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/bytebuddy/implementation/bytecode/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    new-instance v3, Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v5, "DOUBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnet/bytebuddy/implementation/bytecode/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/implementation/bytecode/StackSize;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/implementation/bytecode/StackSize;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->size:I

    return-void
.end method

.method public static of(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static varargs of([Lnet/bytebuddy/description/type/TypeDefinition;)I
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public static of(I)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stack size value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0

    :cond_2
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/StackSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->size:I

    return v0
.end method

.method public maximum(Lnet/bytebuddy/implementation/bytecode/StackSize;)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 5

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    return-object p1

    :cond_5
    return-object p0
.end method

.method public toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method

.method public toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method
