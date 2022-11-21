.class public final enum Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum GET_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum GET_STATIC_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum INVOKE_INTERFACE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum INVOKE_SPECIAL:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum INVOKE_SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum INVOKE_STATIC:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum INVOKE_VIRTUAL:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum PUT_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

.field public static final enum PUT_STATIC_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;


# instance fields
.field private final field:Z

.field private final identifier:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v1, "INVOKE_VIRTUAL"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, v2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_VIRTUAL:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-instance v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v4, "INVOKE_STATIC"

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-direct {v1, v4, v5, v6, v2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_STATIC:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-instance v4, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v7, "INVOKE_SPECIAL"

    const/4 v8, 0x2

    const/4 v9, 0x7

    invoke-direct {v4, v7, v8, v9, v2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v4, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_SPECIAL:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-instance v7, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v10, "INVOKE_INTERFACE"

    const/4 v11, 0x3

    const/16 v12, 0x9

    invoke-direct {v7, v10, v11, v12, v2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v7, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_INTERFACE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-instance v10, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v13, "INVOKE_SPECIAL_CONSTRUCTOR"

    const/4 v14, 0x4

    const/16 v15, 0x8

    invoke-direct {v10, v13, v14, v15, v2}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v10, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-instance v13, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v2, "PUT_FIELD"

    invoke-direct {v13, v2, v3, v11, v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v13, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->PUT_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-instance v2, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v3, "GET_FIELD"

    invoke-direct {v2, v3, v6, v5, v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v2, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->GET_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-instance v3, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v6, "PUT_STATIC_FIELD"

    invoke-direct {v3, v6, v9, v14, v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->PUT_STATIC_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-instance v6, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const-string v9, "GET_STATIC_FIELD"

    invoke-direct {v6, v9, v15, v8, v5}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v6, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->GET_STATIC_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    new-array v9, v12, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    const/4 v12, 0x0

    aput-object v0, v9, v12

    aput-object v1, v9, v5

    aput-object v4, v9, v8

    aput-object v7, v9, v11

    aput-object v10, v9, v14

    const/4 v0, 0x5

    aput-object v13, v9, v0

    const/4 v0, 0x6

    aput-object v2, v9, v0

    const/4 v0, 0x7

    aput-object v3, v9, v0

    aput-object v6, v9, v15

    sput-object v9, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->identifier:I

    iput-boolean p4, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->field:Z

    return-void
.end method

.method public static of(I)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 5

    invoke-static {}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->values()[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->getIdentifier()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown handle type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 3

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isTypeInitializer()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_STATIC:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_SPECIAL:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object p0

    :cond_2
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_INTERFACE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object p0

    :cond_3
    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_VIRTUAL:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create handle of type initializer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofGetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 0

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->GET_STATIC_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->GET_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    :goto_0
    return-object p0
.end method

.method public static ofSetter(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 0

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->PUT_STATIC_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->PUT_FIELD:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    :goto_0
    return-object p0
.end method

.method public static ofSpecial(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 3

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_SPECIAL_CONSTRUCTOR:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->INVOKE_SPECIAL:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " via invokespecial"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->identifier:I

    return v0
.end method

.method public isField()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->field:Z

    return v0
.end method
