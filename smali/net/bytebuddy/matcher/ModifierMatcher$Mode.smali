.class public final enum Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/ModifierMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/ModifierMatcher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

.field public static final enum VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;


# instance fields
.field private final description:Ljava/lang/String;

.field private final matcher:Lnet/bytebuddy/matcher/ModifierMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ModifierMatcher<",
            "*>;"
        }
    .end annotation
.end field

.field private final modifiers:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "isPublic()"

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v4, "PROTECTED"

    const/4 v5, 0x4

    const-string v6, "isProtected()"

    invoke-direct {v1, v4, v3, v5, v6}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v4, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v6, "PRIVATE"

    const/4 v7, 0x2

    const-string v8, "isPrivate()"

    invoke-direct {v4, v6, v7, v7, v8}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v6, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v8, "FINAL"

    const/4 v9, 0x3

    const/16 v10, 0x10

    const-string v11, "isFinal()"

    invoke-direct {v6, v8, v9, v10, v11}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v8, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v11, "STATIC"

    const/16 v12, 0x8

    const-string v13, "isStatic()"

    invoke-direct {v8, v11, v5, v12, v13}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v11, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v13, "SYNCHRONIZED"

    const/4 v14, 0x5

    const/16 v15, 0x20

    const-string v5, "isSynchronized()"

    invoke-direct {v11, v13, v14, v15, v5}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v5, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v13, "NATIVE"

    const/4 v15, 0x6

    const/16 v14, 0x100

    const-string v9, "isNative()"

    invoke-direct {v5, v13, v15, v14, v9}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v9, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v13, "STRICT"

    const/4 v14, 0x7

    const/16 v15, 0x800

    const-string v7, "isStrict()"

    invoke-direct {v9, v13, v14, v15, v7}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v7, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v13, "VAR_ARGS"

    const/16 v15, 0x80

    const-string v14, "isVarArgs()"

    invoke-direct {v7, v13, v12, v15, v14}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v13, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v14, "SYNTHETIC"

    const/16 v12, 0x9

    const/16 v3, 0x1000

    const-string v2, "isSynthetic()"

    invoke-direct {v13, v14, v12, v3, v2}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v2, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v3, "BRIDGE"

    const/16 v14, 0xa

    const/16 v12, 0x40

    const-string v10, "isBridge()"

    invoke-direct {v2, v3, v14, v12, v10}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v10, "ABSTRACT"

    const/16 v14, 0xb

    const/16 v15, 0x400

    const-string v12, "isAbstract()"

    invoke-direct {v3, v10, v14, v15, v12}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v12, "INTERFACE"

    const/16 v15, 0xc

    const/16 v14, 0x200

    move-object/from16 v16, v3

    const-string v3, "isInterface()"

    invoke-direct {v10, v12, v15, v14, v3}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v12, "ANNOTATION"

    const/16 v14, 0xd

    const/16 v15, 0x2000

    move-object/from16 v17, v10

    const-string v10, "isAnnotation()"

    invoke-direct {v3, v12, v14, v15, v10}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v12, "VOLATILE"

    const/16 v15, 0xe

    const-string v14, "isVolatile()"

    move-object/from16 v18, v3

    const/16 v3, 0x40

    invoke-direct {v10, v12, v15, v3, v14}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v12, "TRANSIENT"

    const/16 v14, 0xf

    const-string v15, "isTransient()"

    move-object/from16 v19, v10

    const/16 v10, 0x80

    invoke-direct {v3, v12, v14, v10, v15}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v12, "MANDATED"

    const v15, 0x8000

    const-string v14, "isMandated()"

    move-object/from16 v20, v3

    const/16 v3, 0x10

    invoke-direct {v10, v12, v3, v15, v14}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    new-instance v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const-string v12, "ENUMERATION"

    const/16 v14, 0x11

    const/16 v15, 0x4000

    move-object/from16 v21, v10

    const-string v10, "isEnum()"

    invoke-direct {v3, v12, v14, v15, v10}, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/16 v10, 0x12

    new-array v10, v10, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    const/4 v12, 0x0

    aput-object v0, v10, v12

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v4, v10, v0

    const/4 v0, 0x3

    aput-object v6, v10, v0

    const/4 v0, 0x4

    aput-object v8, v10, v0

    const/4 v0, 0x5

    aput-object v11, v10, v0

    const/4 v0, 0x6

    aput-object v5, v10, v0

    const/4 v0, 0x7

    aput-object v9, v10, v0

    const/16 v0, 0x8

    aput-object v7, v10, v0

    const/16 v0, 0x9

    aput-object v13, v10, v0

    const/16 v0, 0xa

    aput-object v2, v10, v0

    const/16 v0, 0xb

    aput-object v16, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    aput-object v3, v10, v14

    sput-object v10, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->modifiers:I

    iput-object p4, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->description:Ljava/lang/String;

    new-instance p1, Lnet/bytebuddy/matcher/ModifierMatcher;

    invoke-direct {p1, p0}, Lnet/bytebuddy/matcher/ModifierMatcher;-><init>(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)V

    iput-object p1, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->matcher:Lnet/bytebuddy/matcher/ModifierMatcher;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
    .locals 1

    const-class v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;
    .locals 1

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMatcher()Lnet/bytebuddy/matcher/ModifierMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/matcher/ModifierMatcher<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->matcher:Lnet/bytebuddy/matcher/ModifierMatcher;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->modifiers:I

    return v0
.end method
