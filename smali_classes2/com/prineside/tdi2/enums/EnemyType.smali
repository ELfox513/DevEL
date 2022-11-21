.class public final enum Lcom/prineside/tdi2/enums/EnemyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/EnemyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum BOSS:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum FAST:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum FIGHTER:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum GENERIC:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum HEALER:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum HELI:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum ICY:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum JET:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum LIGHT:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum STRONG:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final enum TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/EnemyType;

.field public static final mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

.field public static final values:[Lcom/prineside/tdi2/enums/EnemyType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v1, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v3, "FAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/prineside/tdi2/enums/EnemyType;->FAST:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v3, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v5, "STRONG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/prineside/tdi2/enums/EnemyType;->STRONG:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v5, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v7, "HELI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/prineside/tdi2/enums/EnemyType;->HELI:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v7, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v9, "JET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/prineside/tdi2/enums/EnemyType;->JET:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v9, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v11, "ARMORED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/prineside/tdi2/enums/EnemyType;->ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v11, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v13, "HEALER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v13, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v15, "TOXIC"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v15, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v14, "ICY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/prineside/tdi2/enums/EnemyType;->ICY:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v14, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v12, "FIGHTER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/prineside/tdi2/enums/EnemyType;->FIGHTER:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v12, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v10, "LIGHT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/prineside/tdi2/enums/EnemyType;->LIGHT:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v10, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v8, "GENERIC"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/prineside/tdi2/enums/EnemyType;->GENERIC:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v8, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v10, "BOSS"

    const/16 v6, 0xc

    invoke-direct {v8, v10, v6}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v10, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "SNAKE_BOSS_HEAD"

    const/16 v2, 0xd

    invoke-direct {v10, v4, v2}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "SNAKE_BOSS_BODY"

    const/16 v10, 0xe

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "SNAKE_BOSS_TAIL"

    const/16 v10, 0xf

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "BROOT_BOSS"

    const/16 v10, 0x10

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "CONSTRUCTOR_BOSS"

    const/16 v10, 0x11

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "MOBCHAIN_BOSS_HEAD"

    const/16 v10, 0x12

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "MOBCHAIN_BOSS_BODY"

    const/16 v10, 0x13

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "MOBCHAIN_BOSS_CREEP"

    const/16 v10, 0x14

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "METAPHOR_BOSS"

    const/16 v10, 0x15

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v2, Lcom/prineside/tdi2/enums/EnemyType;

    const-string v4, "METAPHOR_BOSS_CREEP"

    const/16 v10, 0x16

    invoke-direct {v2, v4, v10}, Lcom/prineside/tdi2/enums/EnemyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-static {}, Lcom/prineside/tdi2/enums/EnemyType;->c()[Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v2

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->a:[Lcom/prineside/tdi2/enums/EnemyType;

    invoke-static {}, Lcom/prineside/tdi2/enums/EnemyType;->values()[Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v2

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    new-array v2, v6, [Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v8, v2, v0

    sput-object v2, Lcom/prineside/tdi2/enums/EnemyType;->mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Lcom/prineside/tdi2/enums/EnemyType;
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->FAST:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->STRONG:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->HELI:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->JET:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->TOXIC:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->ICY:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->FIGHTER:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->LIGHT:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->GENERIC:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->SNAKE_BOSS_TAIL:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->CONSTRUCTOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_HEAD:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_BODY:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->MOBCHAIN_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->METAPHOR_BOSS_CREEP:Lcom/prineside/tdi2/enums/EnemyType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/EnemyType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/EnemyType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/EnemyType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->a:[Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/EnemyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/EnemyType;

    return-object v0
.end method
