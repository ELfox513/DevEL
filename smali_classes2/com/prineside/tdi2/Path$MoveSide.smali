.class public final enum Lcom/prineside/tdi2/Path$MoveSide;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoveSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/Path$MoveSide;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum BOTTOM_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum BOTTOM_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum BOTTOM_TOP:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum CENTER_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum CENTER_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum CENTER_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum CENTER_TOP:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum LEFT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum LEFT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum LEFT_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum LEFT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum RIGHT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum RIGHT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum RIGHT_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum RIGHT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum TOP_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum TOP_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum TOP_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

.field public static final enum TOP_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

.field public static a:[[Z

.field public static b:[Lcom/prineside/tdi2/utils/IntPair;

.field public static d:[Z

.field public static final synthetic k:[Lcom/prineside/tdi2/Path$MoveSide;

.field public static reverse:[Lcom/prineside/tdi2/Path$MoveSide;

.field public static final values:[Lcom/prineside/tdi2/Path$MoveSide;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "LEFT_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "LEFT_BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "LEFT_CENTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "TOP_LEFT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->TOP_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "TOP_RIGHT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->TOP_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "TOP_BOTTOM"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->TOP_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "TOP_CENTER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->TOP_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "RIGHT_LEFT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "RIGHT_TOP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "RIGHT_BOTTOM"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "RIGHT_CENTER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "BOTTOM_LEFT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "BOTTOM_TOP"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "BOTTOM_RIGHT"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "BOTTOM_CENTER"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "CENTER_LEFT"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "CENTER_TOP"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "CENTER_RIGHT"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    new-instance v0, Lcom/prineside/tdi2/Path$MoveSide;

    const-string v1, "CENTER_BOTTOM"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/prineside/tdi2/Path$MoveSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-static {}, Lcom/prineside/tdi2/Path$MoveSide;->c()[Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->k:[Lcom/prineside/tdi2/Path$MoveSide;

    invoke-static {}, Lcom/prineside/tdi2/Path$MoveSide;->values()[Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/prineside/tdi2/Path$MoveSide;->values()[Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v1

    array-length v1, v1

    new-array v15, v4, [I

    aput v1, v15, v3

    aput v0, v15, v2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->a:[[Z

    invoke-static {}, Lcom/prineside/tdi2/Path$MoveSide;->values()[Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/utils/IntPair;

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->b:[Lcom/prineside/tdi2/utils/IntPair;

    invoke-static {}, Lcom/prineside/tdi2/Path$MoveSide;->values()[Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->d:[Z

    invoke-static {}, Lcom/prineside/tdi2/Path$MoveSide;->values()[Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v0

    array-length v1, v0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v1, :cond_a

    aget-object v16, v0, v15

    invoke-static {}, Lcom/prineside/tdi2/Path$MoveSide;->values()[Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v14

    array-length v13, v14

    const/4 v12, 0x0

    :goto_1
    const-string v11, "LEFT"

    const-string v10, "BOTTOM"

    const-string v9, "RIGHT"

    const-string v8, "TOP"

    if-ge v12, v13, :cond_5

    aget-object v17, v14, v12

    sget-object v18, Lcom/prineside/tdi2/Path$MoveSide;->a:[[Z

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    aput-boolean v7, v18, v19

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/16 v10, 0x8

    goto :goto_1

    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lcom/prineside/tdi2/Path$MoveSide;->b:[Lcom/prineside/tdi2/utils/IntPair;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Lcom/prineside/tdi2/utils/IntPair;

    invoke-direct {v9, v2, v3}, Lcom/prineside/tdi2/utils/IntPair;-><init>(II)V

    aput-object v9, v7, v8

    goto :goto_3

    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/prineside/tdi2/Path$MoveSide;->b:[Lcom/prineside/tdi2/utils/IntPair;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Lcom/prineside/tdi2/utils/IntPair;

    invoke-direct {v9, v3, v2}, Lcom/prineside/tdi2/utils/IntPair;-><init>(II)V

    aput-object v9, v7, v8

    goto :goto_3

    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/prineside/tdi2/Path$MoveSide;->b:[Lcom/prineside/tdi2/utils/IntPair;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Lcom/prineside/tdi2/utils/IntPair;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v2}, Lcom/prineside/tdi2/utils/IntPair;-><init>(II)V

    aput-object v9, v7, v8

    goto :goto_3

    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/prineside/tdi2/Path$MoveSide;->b:[Lcom/prineside/tdi2/utils/IntPair;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    new-instance v9, Lcom/prineside/tdi2/utils/IntPair;

    const/4 v10, -0x1

    invoke-direct {v9, v2, v10}, Lcom/prineside/tdi2/utils/IntPair;-><init>(II)V

    aput-object v9, v7, v8

    :cond_9
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/16 v10, 0x8

    const/16 v11, 0x9

    const/16 v12, 0xa

    const/16 v13, 0xb

    const/16 v14, 0xc

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->d:[Z

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput-boolean v3, v0, v7

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->d:[Z

    sget-object v7, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput-boolean v3, v0, v8

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->d:[Z

    sget-object v8, Lcom/prineside/tdi2/Path$MoveSide;->TOP_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput-boolean v3, v0, v9

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->d:[Z

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput-boolean v3, v0, v10

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/prineside/tdi2/Path$MoveSide;

    sget-object v10, Lcom/prineside/tdi2/Path$MoveSide;->TOP_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    aput-object v10, v0, v2

    aput-object v7, v0, v3

    sget-object v2, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    aput-object v2, v0, v4

    sget-object v2, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    aput-object v2, v0, v5

    sget-object v2, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    aput-object v2, v0, v6

    sget-object v2, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x6

    aput-object v9, v0, v2

    sget-object v2, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->TOP_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0xd

    aput-object v8, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->TOP_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    sget-object v2, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    aput-object v2, v0, v1

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->reverse:[Lcom/prineside/tdi2/Path$MoveSide;

    invoke-static {}, Lcom/prineside/tdi2/Path$MoveSide;->values()[Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/Path$MoveSide;->values:[Lcom/prineside/tdi2/Path$MoveSide;

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

.method public static areConnected(Lcom/prineside/tdi2/Path$MoveSide;Lcom/prineside/tdi2/Path$MoveSide;)Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->a:[[Z

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-boolean p0, p0, p1

    return p0
.end method

.method public static synthetic c()[Lcom/prineside/tdi2/Path$MoveSide;
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/prineside/tdi2/Path$MoveSide;

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->TOP_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->TOP_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->TOP_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->TOP_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getNextNodeShift(Lcom/prineside/tdi2/Path$MoveSide;)Lcom/prineside/tdi2/utils/IntPair;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->b:[Lcom/prineside/tdi2/utils/IntPair;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static isStraightLine(Lcom/prineside/tdi2/Path$MoveSide;)Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->d:[Z

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-boolean p0, v0, p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/Path$MoveSide;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/Path$MoveSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/Path$MoveSide;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/Path$MoveSide;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->k:[Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/Path$MoveSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/Path$MoveSide;

    return-object v0
.end method
