.class public final enum Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$UnboxingResponsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExplicitlyTypedUnboxingResponsible"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$UnboxingResponsible;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;


# instance fields
.field private final primitiveUnboxingDelegate:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->BOOLEAN:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v4, "BYTE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->BYTE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v6, "SHORT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->SHORT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    new-instance v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v8, "CHARACTER"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->CHARACTER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    new-instance v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    sget-object v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v10, "INTEGER"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->INTEGER:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    new-instance v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    sget-object v10, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v12, "LONG"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v8, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->LONG:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    new-instance v10, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v14, "FLOAT"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v10, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->FLOAT:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    new-instance v12, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    sget-object v14, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const-string v15, "DOUBLE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V

    sput-object v12, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    const/16 v14, 0x8

    new-array v14, v14, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    sput-object v14, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->primitiveUnboxingDelegate:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;

    return-object v0
.end method


# virtual methods
.method public assignUnboxedTo(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 p3, 0x2

    new-array p3, p3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate$ExplicitlyTypedUnboxingResponsible;->primitiveUnboxingDelegate:Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;->c(Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveUnboxingDelegate;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->forPrimitive(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;->widenTo(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-direct {p2, p3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object p2
.end method
