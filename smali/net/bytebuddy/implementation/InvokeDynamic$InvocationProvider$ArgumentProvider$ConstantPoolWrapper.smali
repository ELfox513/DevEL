.class public abstract enum Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ConstantPoolWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$WrappingArgumentProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

.field public static final enum BOOLEAN:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

.field public static final enum BYTE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

.field public static final enum CHARACTER:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

.field public static final enum FLOAT:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

.field public static final enum LONG:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

.field public static final enum SHORT:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;


# instance fields
.field private final primitiveType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final wrapperType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$1;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->BOOLEAN:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    new-instance v1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$2;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Byte;

    const-string v5, "BYTE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$2;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->BYTE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    new-instance v2, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$3;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Short;

    const-string v7, "SHORT"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$3;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v2, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->SHORT:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    new-instance v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$4;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Character;

    const-string v9, "CHARACTER"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$4;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v3, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->CHARACTER:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    new-instance v5, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$5;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Integer;

    const-string v11, "INTEGER"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$5;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v5, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->INTEGER:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    new-instance v7, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$6;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Long;

    const-string v13, "LONG"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$6;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v7, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->LONG:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    new-instance v9, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$7;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Float;

    const-string v15, "FLOAT"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$7;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v9, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->FLOAT:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    new-instance v11, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$8;

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v15, Ljava/lang/Double;

    const-string v14, "DOUBLE"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper$8;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    sput-object v11, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->DOUBLE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    const/16 v13, 0x8

    new-array v13, v13, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    aput-object v0, v13, v4

    aput-object v1, v13, v6

    aput-object v2, v13, v8

    aput-object v3, v13, v10

    const/4 v0, 0x4

    aput-object v5, v13, v0

    const/4 v0, 0x5

    aput-object v7, v13, v0

    const/4 v0, 0x6

    aput-object v9, v13, v0

    aput-object v11, v13, v12

    sput-object v13, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->$VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->primitiveType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {p4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->wrapperType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/implementation/InvokeDynamic$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic c(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->primitiveType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p0
.end method

.method public static synthetic d(Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->wrapperType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
    .locals 2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->BOOLEAN:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->BYTE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->SHORT:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->CHARACTER:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->INTEGER:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->LONG:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->FLOAT:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->DOUBLE:Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForStringConstant;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForStringConstant;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_9

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForClassConstant;

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForClassConstant;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    :cond_9
    instance-of v0, p0, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_a

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForClassConstant;

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForClassConstant;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    :cond_a
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_b

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;

    new-instance v1, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;

    check-cast p0, Ljava/lang/Enum;

    invoke-direct {v1, p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$ForLoadedEnumeration;-><init>(Ljava/lang/Enum;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;-><init>(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V

    return-object v0

    :cond_b
    instance-of v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    if-eqz v0, :cond_c

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;

    check-cast p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForEnumerationValue;-><init>(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)V

    return-object v0

    :cond_c
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    return-object v0

    :cond_d
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/utility/JavaType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;

    invoke-static {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->ofLoaded(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaConstant$MethodType;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    return-object v0

    :cond_e
    instance-of v0, p0, Lnet/bytebuddy/utility/JavaConstant;

    if-eqz v0, :cond_f

    new-instance v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;

    check-cast p0, Lnet/bytebuddy/utility/JavaConstant;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForJavaConstant;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    return-object v0

    :cond_f
    invoke-static {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ForInstance;->of(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->$VALUES:[Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider$ConstantPoolWrapper;

    return-object v0
.end method


# virtual methods
.method public abstract make(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$ArgumentProvider;
.end method
