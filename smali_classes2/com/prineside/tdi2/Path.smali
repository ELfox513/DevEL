.class public Lcom/prineside/tdi2/Path;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/GraphPath;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Path$MoveSide;,
        Lcom/prineside/tdi2/Path$MoveDirection;,
        Lcom/prineside/tdi2/Path$SideFunction;,
        Lcom/prineside/tdi2/Path$PathSegment;,
        Lcom/prineside/tdi2/Path$BezierSideFunction;,
        Lcom/prineside/tdi2/Path$LinearSideFunction;,
        Lcom/prineside/tdi2/Path$SharpCornerSideFunction;,
        Lcom/prineside/tdi2/Path$Connection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
        "Lcom/prineside/tdi2/PathNode;",
        ">;",
        "Lcom/esotericsoftware/kryo/KryoSerializable;"
    }
.end annotation


# static fields
.field public static final MIDDLE_SIDE_SHIFT:I = 0x5

.field public static final MOVE_SIDE_BY_DIRECTIONS:[[Lcom/prineside/tdi2/Path$MoveSide;

.field public static final SIDE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

.field public static final SIDE_SHIFTS:I = 0xb

.field public static final SIDE_SHIFT_BY_COUNT:[[I

.field public static final SIDE_SIMPLE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

.field public static final b:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/Path$PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/badlogic/gdx/math/Vector2;

.field public static final k:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:Z

.field public moveSides:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Path$MoveSide;",
            ">;"
        }
    .end annotation
.end field

.field public nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    const-class v0, Lcom/prineside/tdi2/Path$SideFunction;

    const/16 v1, 0xc

    new-array v1, v1, [[I

    sput-object v1, Lcom/prineside/tdi2/Path;->SIDE_SHIFT_BY_COUNT:[[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput v5, v3, v4

    aput-object v3, v1, v2

    const/4 v3, 0x2

    new-array v6, v3, [I

    fill-array-data v6, :array_0

    aput-object v6, v1, v3

    const/4 v6, 0x3

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    aput-object v7, v1, v6

    const/4 v6, 0x4

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    aput-object v7, v1, v6

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    aput-object v6, v1, v5

    const/4 v5, 0x6

    new-array v6, v5, [I

    fill-array-data v6, :array_4

    aput-object v6, v1, v5

    const/4 v5, 0x7

    new-array v6, v5, [I

    fill-array-data v6, :array_5

    aput-object v6, v1, v5

    const/16 v5, 0x8

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    aput-object v6, v1, v5

    const/16 v5, 0x9

    new-array v6, v5, [I

    fill-array-data v6, :array_7

    aput-object v6, v1, v5

    const/16 v5, 0xa

    new-array v6, v5, [I

    fill-array-data v6, :array_8

    aput-object v6, v1, v5

    const/16 v5, 0xb

    new-array v6, v5, [I

    fill-array-data v6, :array_9

    aput-object v6, v1, v5

    sget-object v1, Lcom/prineside/tdi2/Path$MoveDirection;->values:[Lcom/prineside/tdi2/Path$MoveDirection;

    array-length v6, v1

    array-length v7, v1

    new-array v8, v3, [I

    aput v7, v8, v2

    aput v6, v8, v4

    const-class v6, Lcom/prineside/tdi2/Path$MoveSide;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lcom/prineside/tdi2/Path$MoveSide;

    sput-object v6, Lcom/prineside/tdi2/Path;->MOVE_SIDE_BY_DIRECTIONS:[[Lcom/prineside/tdi2/Path$MoveSide;

    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v1, v7

    sget-object v9, Lcom/prineside/tdi2/Path$MoveDirection;->values:[Lcom/prineside/tdi2/Path$MoveDirection;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    if-ne v8, v12, :cond_0

    goto :goto_2

    :cond_0
    sget-object v13, Lcom/prineside/tdi2/Path;->MOVE_SIDE_BY_DIRECTIONS:[[Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/tdi2/Path$MoveSide;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v4

    aput-object v4, v13, v14

    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->values:[Lcom/prineside/tdi2/Path$MoveSide;

    array-length v1, v1

    new-array v4, v3, [I

    aput v5, v4, v2

    const/4 v6, 0x0

    aput v1, v4, v6

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/prineside/tdi2/Path$SideFunction;

    sput-object v1, Lcom/prineside/tdi2/Path;->SIDE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    const/4 v6, 0x0

    :goto_3
    const/high16 v1, 0x3d800000    # 0.0625f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v7, -0x41000000    # -0.5f

    if-ge v6, v5, :cond_3

    add-int/lit8 v8, v6, -0x5

    int-to-float v8, v8

    mul-float v1, v1, v8

    sget-object v8, Lcom/prineside/tdi2/Path;->SIDE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v18, -0x41000000    # -0.5f

    neg-float v11, v1

    const/high16 v23, 0x3f000000    # 0.5f

    move-object/from16 v17, v10

    move/from16 v19, v11

    move/from16 v20, v1

    move/from16 v21, v11

    move/from16 v22, v1

    move/from16 v24, v1

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v10, v7, v11, v4, v11}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v20, -0x41000000    # -0.5f

    const/high16 v25, -0x41000000    # -0.5f

    move-object/from16 v19, v10

    move/from16 v22, v11

    move/from16 v23, v11

    move/from16 v24, v11

    move/from16 v26, v11

    invoke-direct/range {v19 .. v26}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v26}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->TOP_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v19, 0x3f000000    # 0.5f

    const/high16 v22, -0x41000000    # -0.5f

    move-object/from16 v17, v10

    move/from16 v18, v11

    move/from16 v20, v11

    move/from16 v21, v1

    move/from16 v23, v1

    move/from16 v24, v11

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->TOP_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v22, 0x3f000000    # 0.5f

    move-object/from16 v17, v10

    move/from16 v21, v11

    move/from16 v23, v11

    move/from16 v24, v1

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->TOP_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v10, v11, v4, v11, v7}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->TOP_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v21, 0x3f000000    # 0.5f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v10

    move/from16 v22, v11

    invoke-direct/range {v19 .. v26}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v10, v4, v1, v7, v1}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v23, 0x3f000000    # 0.5f

    move-object/from16 v17, v10

    move/from16 v19, v1

    move/from16 v20, v1

    move/from16 v21, v1

    move/from16 v22, v1

    move/from16 v24, v11

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v23, -0x41000000    # -0.5f

    move-object/from16 v17, v10

    move/from16 v20, v11

    move/from16 v22, v11

    move/from16 v24, v1

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v10

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v19, -0x41000000    # -0.5f

    const/high16 v22, -0x41000000    # -0.5f

    move-object/from16 v17, v10

    move/from16 v18, v1

    move/from16 v20, v1

    move/from16 v23, v1

    move/from16 v24, v1

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v10, v9, v6

    sget-object v9, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    new-instance v10, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v10, v1, v7, v1, v4}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v10, v9, v6

    sget-object v4, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v8, v4

    new-instance v7, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/high16 v22, 0x3f000000    # 0.5f

    move-object/from16 v17, v7

    move/from16 v21, v11

    move/from16 v23, v11

    move/from16 v24, v11

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v7, v4, v6

    sget-object v4, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v8, v4

    new-instance v7, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v7, v4, v6

    sget-object v4, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v8, v4

    new-instance v7, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v22, -0x41000000    # -0.5f

    move-object/from16 v17, v7

    move/from16 v21, v1

    move/from16 v23, v1

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v7, v4, v6

    sget-object v4, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v8, v4

    new-instance v7, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/16 v21, 0x0

    const/high16 v23, 0x3f000000    # 0.5f

    move-object/from16 v17, v7

    move/from16 v20, v1

    move/from16 v22, v1

    invoke-direct/range {v17 .. v24}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v7, v4, v6

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v8, v1

    new-instance v4, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/high16 v24, 0x3f000000    # 0.5f

    move-object/from16 v19, v4

    move/from16 v23, v11

    move/from16 v25, v11

    invoke-direct/range {v19 .. v26}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v4, v1, v6

    sget-object v1, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v8, v1

    new-instance v4, Lcom/prineside/tdi2/Path$BezierSideFunction;

    const/16 v23, 0x0

    const/high16 v25, -0x41000000    # -0.5f

    move-object/from16 v19, v4

    move/from16 v22, v11

    move/from16 v24, v11

    invoke-direct/range {v19 .. v26}, Lcom/prineside/tdi2/Path$BezierSideFunction;-><init>(FFFFFFF)V

    aput-object v4, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_3
    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->values:[Lcom/prineside/tdi2/Path$MoveSide;

    array-length v6, v6

    new-array v3, v3, [I

    aput v5, v3, v2

    const/4 v2, 0x0

    aput v6, v3, v2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/prineside/tdi2/Path$SideFunction;

    sput-object v0, Lcom/prineside/tdi2/Path;->SIDE_SIMPLE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    :goto_4
    if-ge v2, v5, :cond_4

    add-int/lit8 v0, v2, -0x5

    int-to-float v0, v0

    mul-float v0, v0, v1

    sget-object v3, Lcom/prineside/tdi2/Path;->SIDE_SIMPLE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v15, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;

    const/high16 v9, -0x41000000    # -0.5f

    neg-float v14, v0

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v15

    move v10, v14

    move v11, v0

    move v12, v14

    move v13, v0

    move v1, v14

    move/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;-><init>(FFFFFF)V

    aput-object v15, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v7, v1, v4, v1}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;

    const/high16 v17, -0x41000000    # -0.5f

    const/high16 v22, -0x41000000    # -0.5f

    move-object/from16 v16, v8

    move/from16 v18, v1

    move/from16 v19, v1

    move/from16 v20, v1

    move/from16 v21, v1

    invoke-direct/range {v16 .. v22}, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;-><init>(FFFFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->LEFT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    const/4 v15, 0x0

    invoke-direct {v8, v7, v1, v15, v15}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->TOP_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v16, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v13, -0x41000000    # -0.5f

    move-object/from16 v8, v16

    move v9, v1

    move v11, v1

    move v12, v0

    move v14, v0

    invoke-direct/range {v8 .. v14}, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;-><init>(FFFFFF)V

    aput-object v16, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->TOP_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v21, 0x3f000000    # 0.5f

    move-object/from16 v16, v8

    move/from16 v17, v1

    move/from16 v22, v1

    invoke-direct/range {v16 .. v22}, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;-><init>(FFFFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->TOP_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v1, v4, v1, v7}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->TOP_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v1, v4, v15, v15}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v4, v0, v7, v0}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v16, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v8, v16

    move v10, v0

    move v11, v0

    move v13, v0

    invoke-direct/range {v8 .. v14}, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;-><init>(FFFFFF)V

    aput-object v16, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v16, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;

    const/high16 v14, -0x41000000    # -0.5f

    move-object/from16 v8, v16

    move v11, v1

    move v13, v1

    invoke-direct/range {v8 .. v14}, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;-><init>(FFFFFF)V

    aput-object v16, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->RIGHT_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v4, v0, v15, v15}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v16, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;

    const/high16 v10, -0x41000000    # -0.5f

    const/high16 v13, -0x41000000    # -0.5f

    move-object/from16 v8, v16

    move v9, v0

    move v11, v0

    move v14, v0

    invoke-direct/range {v8 .. v14}, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;-><init>(FFFFFF)V

    aput-object v16, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v0, v7, v0, v4}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v16, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;

    const/high16 v13, 0x3f000000    # 0.5f

    move-object/from16 v8, v16

    move v12, v1

    move v14, v1

    invoke-direct/range {v8 .. v14}, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;-><init>(FFFFFF)V

    aput-object v16, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->BOTTOM_CENTER:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v0, v7, v15, v15}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_LEFT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v15, v15, v7, v0}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v6, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_TOP:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v3, v6

    new-instance v8, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v8, v15, v15, v0, v4}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v8, v6, v2

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_RIGHT:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v3, v0

    new-instance v6, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v6, v15, v15, v4, v1}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v6, v0, v2

    sget-object v0, Lcom/prineside/tdi2/Path$MoveSide;->CENTER_BOTTOM:Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v3, v0

    new-instance v3, Lcom/prineside/tdi2/Path$LinearSideFunction;

    invoke-direct {v3, v15, v15, v1, v7}, Lcom/prineside/tdi2/Path$LinearSideFunction;-><init>(FFFF)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    const/high16 v1, 0x3d800000    # 0.0625f

    goto/16 :goto_4

    :cond_4
    new-instance v0, Lcom/prineside/tdi2/Path$1;

    const/16 v1, 0x10

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/Path$1;-><init>(II)V

    sput-object v0, Lcom/prineside/tdi2/Path;->b:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Path;->d:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Path;->k:Lcom/badlogic/gdx/math/Vector2;

    return-void

    :array_0
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x5
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
        0x5
        0x7
        0x9
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x2
        0x4
        0x5
        0x6
        0x8
        0xa
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x6
        0x7
        0x8
        0xa
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/PathNode;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Path$MoveSide;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/Path;)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Path;-><init>()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-boolean p1, p1, Lcom/prineside/tdi2/Path;->a:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/Path;->a:Z

    return-void
.end method

.method public static calculateMoveSides(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;)Lcom/prineside/tdi2/Path$MoveSide;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget v1, p1, Lcom/prineside/tdi2/PathNode;->y:I

    iget v2, p0, Lcom/prineside/tdi2/PathNode;->y:I

    if-ne v1, v2, :cond_0

    iget v3, p1, Lcom/prineside/tdi2/PathNode;->x:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v3, v4, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Path$MoveDirection;->LEFT:Lcom/prineside/tdi2/Path$MoveDirection;

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    iget v3, p1, Lcom/prineside/tdi2/PathNode;->x:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v3, v4, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Path$MoveDirection;->RIGHT:Lcom/prineside/tdi2/Path$MoveDirection;

    goto :goto_0

    :cond_1
    iget v3, p1, Lcom/prineside/tdi2/PathNode;->x:I

    iget v4, p0, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v3, v4, :cond_2

    add-int/lit8 v5, v1, 0x1

    if-ne v5, v2, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Path$MoveDirection;->BOTTOM:Lcom/prineside/tdi2/Path$MoveDirection;

    goto :goto_0

    :cond_2
    if-ne v3, v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Path$MoveDirection;->TOP:Lcom/prineside/tdi2/Path$MoveDirection;

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/Path$MoveDirection;->CENTER:Lcom/prineside/tdi2/Path$MoveDirection;

    :goto_0
    if-eqz p2, :cond_8

    iget v2, p2, Lcom/prineside/tdi2/PathNode;->y:I

    iget v3, p0, Lcom/prineside/tdi2/PathNode;->y:I

    if-ne v2, v3, :cond_5

    iget v4, p2, Lcom/prineside/tdi2/PathNode;->x:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v4, v5, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Path$MoveDirection;->LEFT:Lcom/prineside/tdi2/Path$MoveDirection;

    goto :goto_1

    :cond_5
    if-ne v2, v3, :cond_6

    iget v4, p2, Lcom/prineside/tdi2/PathNode;->x:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v4, v5, :cond_6

    sget-object v0, Lcom/prineside/tdi2/Path$MoveDirection;->RIGHT:Lcom/prineside/tdi2/Path$MoveDirection;

    goto :goto_1

    :cond_6
    iget v4, p2, Lcom/prineside/tdi2/PathNode;->x:I

    iget v5, p0, Lcom/prineside/tdi2/PathNode;->x:I

    if-ne v4, v5, :cond_7

    add-int/lit8 v6, v2, 0x1

    if-ne v6, v3, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Path$MoveDirection;->BOTTOM:Lcom/prineside/tdi2/Path$MoveDirection;

    goto :goto_1

    :cond_7
    if-ne v4, v5, :cond_9

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v3, :cond_9

    sget-object v0, Lcom/prineside/tdi2/Path$MoveDirection;->TOP:Lcom/prineside/tdi2/Path$MoveDirection;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/prineside/tdi2/Path$MoveDirection;->CENTER:Lcom/prineside/tdi2/Path$MoveDirection;

    :cond_9
    :goto_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p1, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    array-length v6, v5

    if-ge v4, v6, :cond_c

    aget v5, v5, v4

    if-eq v5, v2, :cond_b

    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    array-length v7, v6

    if-ge v5, v7, :cond_b

    aget v6, v6, v5

    iget-object v7, p1, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_a

    sget-object v1, Lcom/prineside/tdi2/Path$MoveDirection;->values:[Lcom/prineside/tdi2/Path$MoveDirection;

    aget-object v1, v1, v5

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    if-nez v0, :cond_f

    const/4 v4, 0x0

    :goto_5
    iget-object v5, p2, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    array-length v6, v5

    if-ge v4, v6, :cond_f

    aget v5, v5, v4

    if-eq v5, v2, :cond_e

    const/4 v5, 0x0

    :goto_6
    iget-object v6, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    array-length v7, v6

    if-ge v5, v7, :cond_e

    aget v6, v6, v5

    iget-object v7, p2, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_d

    sget-object v0, Lcom/prineside/tdi2/Path$MoveDirection;->values:[Lcom/prineside/tdi2/Path$MoveDirection;

    aget-object v0, v0, v5

    goto :goto_7

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    if-eqz v1, :cond_12

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    if-ne v1, v0, :cond_11

    sget-object v1, Lcom/prineside/tdi2/Path$MoveDirection;->CENTER:Lcom/prineside/tdi2/Path$MoveDirection;

    :cond_11
    sget-object p0, Lcom/prineside/tdi2/Path;->MOVE_SIDE_BY_DIRECTIONS:[[Lcom/prineside/tdi2/Path$MoveSide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    :cond_12
    :goto_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find move direction - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    if-nez v1, :cond_13

    const-string v1, "no from, "

    goto :goto_9

    :cond_13
    move-object v1, v4

    :goto_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_14

    const-string v4, "no to, "

    :cond_14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (prev: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") (curr: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") (next: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v2

    :goto_b
    goto :goto_a
.end method

.method public static synthetic d()Lcom/badlogic/gdx/utils/Pool;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Path;->b:Lcom/badlogic/gdx/utils/Pool;

    return-object v0
.end method

.method public static e(FFFF)Lcom/prineside/tdi2/Path$PathSegment$Direction;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result p0

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->normalizeAngle(F)F

    move-result p0

    const/high16 p1, 0x42340000    # 45.0f

    cmpg-float p2, p0, p1

    if-ltz p2, :cond_3

    const p2, 0x439d8000    # 315.0f

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x43070000    # 135.0f

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_1

    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    sget-object p0, Lcom/prineside/tdi2/Path$PathSegment$Direction;->LEFT:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    return-object p0

    :cond_1
    cmpl-float p1, p0, p2

    if-ltz p1, :cond_2

    const/high16 p1, 0x43610000    # 225.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    sget-object p0, Lcom/prineside/tdi2/Path$PathSegment$Direction;->BOTTOM:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    return-object p0

    :cond_2
    sget-object p0, Lcom/prineside/tdi2/Path$PathSegment$Direction;->RIGHT:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/prineside/tdi2/Path$PathSegment$Direction;->TOP:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/prineside/tdi2/PathNode;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/Path;->a:Z

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/PathNode;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Path;->add(Lcom/prineside/tdi2/PathNode;)V

    return-void
.end method

.method public calculateMoveSides(I)Lcom/prineside/tdi2/Path$MoveSide;
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/PathNode;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    move-object v4, v1

    check-cast v4, [Lcom/prineside/tdi2/PathNode;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    check-cast v1, [Lcom/prineside/tdi2/PathNode;

    add-int/lit8 p1, p1, 0x1

    aget-object v3, v1, p1

    :cond_1
    invoke-static {v2, v4, v3}, Lcom/prineside/tdi2/Path;->calculateMoveSides(Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;Lcom/prineside/tdi2/PathNode;)Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    return-void
.end method

.method public debugDump()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->getCount()I

    move-result v0

    const-string v1, "Path"

    if-nez v0, :cond_0

    const-string v0, "path his empty"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/PathNode;

    invoke-virtual {v3}, Lcom/prineside/tdi2/PathNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/prineside/tdi2/Path;->a:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "NP"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public describe()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const-string v1, "Prepared: "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/prineside/tdi2/Path;->a:Z

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, "nodes: "

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, " > "

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/PathNode;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/PathNode;->x:I

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/PathNode;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/prineside/tdi2/PathNode;->y:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Path$MoveSide;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(F)Lcom/prineside/tdi2/PathNode;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/PathNode;

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public get(I)Lcom/prineside/tdi2/PathNode;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/PathNode;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Path;->get(I)Lcom/prineside/tdi2/PathNode;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public getLengthInTiles()I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMoveSide(F)Lcom/prineside/tdi2/Path$MoveSide;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Path;->getMoveSide(I)Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object p1

    return-object p1
.end method

.method public getMoveSide(I)Lcom/prineside/tdi2/Path$MoveSide;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Path$MoveSide;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Path is not prepared"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNodeCount()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public getPosition(FI)Lcom/badlogic/gdx/math/Vector2;
    .locals 7

    const-string v0, ", nodes.size = "

    const-string v1, ", passedTiles = "

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    iget-object v2, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_4

    add-int/lit8 v4, v3, -0x1

    const v5, 0x3f7d70a4    # 0.99f

    int-to-float v3, v3

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v3, v6

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    add-float/2addr p1, v6

    float-to-int v4, p1

    int-to-float v3, v4

    sub-float v5, p1, v3

    :cond_0
    :try_start_0
    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/PathNode;

    aget-object v2, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Path$MoveSide;

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    sget-object p1, Lcom/prineside/tdi2/Path;->SIDE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    aget-object p1, p1, p2

    sget-object p2, Lcom/prineside/tdi2/Path;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {p1, v5, p2}, Lcom/prineside/tdi2/Path$SideFunction;->position(FLcom/badlogic/gdx/math/Vector2;)V

    iget p1, v2, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 p1, p1, 0x80

    add-int/lit8 p1, p1, 0x40

    iget v0, v2, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x40

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iput v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    add-int/lit8 p1, p1, 0x40

    add-int/lit8 p1, p1, -0x1

    if-le v1, p1, :cond_1

    int-to-float p1, p1

    iput p1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    :cond_1
    float-to-int p1, v2

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    int-to-float p1, v0

    iput p1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    :cond_2
    return-object p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t get moveSide, currentNodeIdx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t get current node, currentNodeIdx = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No nodes in path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPositionSimpleSegmentsForGraphics(ILcom/badlogic/gdx/utils/Array;)F
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Path$PathSegment;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lcom/prineside/tdi2/Path;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Path;->getMoveSide(I)Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v6

    iget-object v7, v0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/PathNode;

    aget-object v7, v7, v2

    invoke-static {v6}, Lcom/prineside/tdi2/Path$MoveSide;->isStraightLine(Lcom/prineside/tdi2/Path$MoveSide;)Z

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x42800000    # 64.0f

    if-eqz v8, :cond_0

    sget-object v8, Lcom/prineside/tdi2/Path;->b:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/Path$PathSegment;

    sget-object v11, Lcom/prineside/tdi2/Path;->SIDE_SIMPLE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget-object v12, v11, v12

    aget-object v12, v12, p1

    sget-object v13, Lcom/prineside/tdi2/Path;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v12, v4, v13}, Lcom/prineside/tdi2/Path$SideFunction;->position(FLcom/badlogic/gdx/math/Vector2;)V

    iget v12, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, v7, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 v14, v14, 0x80

    int-to-float v14, v14

    add-float/2addr v12, v14

    add-float/2addr v12, v10

    iput v12, v8, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v12, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v14, v7, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v14, v14, 0x80

    int-to-float v14, v14

    add-float/2addr v12, v14

    add-float/2addr v12, v10

    iput v12, v8, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v11, v6

    aget-object v6, v6, p1

    invoke-interface {v6, v9, v13}, Lcom/prineside/tdi2/Path$SideFunction;->position(FLcom/badlogic/gdx/math/Vector2;)V

    iget v6, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, v7, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 v9, v9, 0x80

    int-to-float v9, v9

    add-float/2addr v6, v9

    add-float/2addr v6, v10

    iput v6, v8, Lcom/prineside/tdi2/Path$PathSegment;->x2:F

    iget v9, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v7, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v7, v7, 0x80

    int-to-float v7, v7

    add-float/2addr v9, v7

    add-float/2addr v9, v10

    iput v9, v8, Lcom/prineside/tdi2/Path$PathSegment;->y2:F

    iget v7, v8, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v10, v8, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    invoke-static {v7, v10, v6, v9}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v6

    iput v6, v8, Lcom/prineside/tdi2/Path$PathSegment;->length:F

    iput v5, v8, Lcom/prineside/tdi2/Path$PathSegment;->distanceFromStart:F

    iget v6, v8, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v7, v8, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    iget v9, v8, Lcom/prineside/tdi2/Path$PathSegment;->x2:F

    iget v10, v8, Lcom/prineside/tdi2/Path$PathSegment;->y2:F

    invoke-static {v6, v7, v9, v10}, Lcom/prineside/tdi2/Path;->e(FFFF)Lcom/prineside/tdi2/Path$PathSegment$Direction;

    move-result-object v6

    iput-object v6, v8, Lcom/prineside/tdi2/Path$PathSegment;->direction:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v6, v8, Lcom/prineside/tdi2/Path$PathSegment;->length:F

    add-float/2addr v5, v6

    goto/16 :goto_1

    :cond_0
    sget-object v8, Lcom/prineside/tdi2/Path;->b:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/prineside/tdi2/Path$PathSegment;

    sget-object v12, Lcom/prineside/tdi2/Path;->SIDE_SIMPLE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-object v13, v12, v13

    aget-object v13, v13, p1

    sget-object v14, Lcom/prineside/tdi2/Path;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v13, v4, v14}, Lcom/prineside/tdi2/Path$SideFunction;->position(FLcom/badlogic/gdx/math/Vector2;)V

    iget v13, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v7, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 v15, v15, 0x80

    int-to-float v15, v15

    add-float/2addr v13, v15

    add-float/2addr v13, v10

    iput v13, v11, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v13, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v15, v7, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v15, v15, 0x80

    int-to-float v15, v15

    add-float/2addr v13, v15

    add-float/2addr v13, v10

    iput v13, v11, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-object v13, v12, v13

    aget-object v13, v13, p1

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-interface {v13, v15, v14}, Lcom/prineside/tdi2/Path$SideFunction;->position(FLcom/badlogic/gdx/math/Vector2;)V

    iget v13, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v7, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 v15, v15, 0x80

    int-to-float v15, v15

    add-float/2addr v13, v15

    add-float/2addr v13, v10

    iput v13, v11, Lcom/prineside/tdi2/Path$PathSegment;->x2:F

    iget v15, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v7, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v4, v4, 0x80

    int-to-float v4, v4

    add-float/2addr v15, v4

    add-float/2addr v15, v10

    iput v15, v11, Lcom/prineside/tdi2/Path$PathSegment;->y2:F

    iget v4, v11, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v10, v11, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    invoke-static {v4, v10, v13, v15}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v4

    iput v4, v11, Lcom/prineside/tdi2/Path$PathSegment;->length:F

    iput v5, v11, Lcom/prineside/tdi2/Path$PathSegment;->distanceFromStart:F

    iget v4, v11, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v10, v11, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    iget v13, v11, Lcom/prineside/tdi2/Path$PathSegment;->x2:F

    iget v15, v11, Lcom/prineside/tdi2/Path$PathSegment;->y2:F

    invoke-static {v4, v10, v13, v15}, Lcom/prineside/tdi2/Path;->e(FFFF)Lcom/prineside/tdi2/Path$PathSegment$Direction;

    move-result-object v4

    iput-object v4, v11, Lcom/prineside/tdi2/Path$PathSegment;->direction:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v4, v11, Lcom/prineside/tdi2/Path$PathSegment;->length:F

    add-float/2addr v5, v4

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Path$PathSegment;

    iget v8, v11, Lcom/prineside/tdi2/Path$PathSegment;->x2:F

    iput v8, v4, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v8, v11, Lcom/prineside/tdi2/Path$PathSegment;->y2:F

    iput v8, v4, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v12, v6

    aget-object v6, v6, p1

    invoke-interface {v6, v9, v14}, Lcom/prineside/tdi2/Path$SideFunction;->position(FLcom/badlogic/gdx/math/Vector2;)V

    iget v6, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v7, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 v8, v8, 0x80

    int-to-float v8, v8

    add-float/2addr v6, v8

    const/high16 v8, 0x42800000    # 64.0f

    add-float/2addr v6, v8

    iput v6, v4, Lcom/prineside/tdi2/Path$PathSegment;->x2:F

    iget v9, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v7, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v7, v7, 0x80

    int-to-float v7, v7

    add-float/2addr v9, v7

    add-float/2addr v9, v8

    iput v9, v4, Lcom/prineside/tdi2/Path$PathSegment;->y2:F

    iget v7, v4, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v8, v4, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    invoke-static {v7, v8, v6, v9}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v6

    iput v6, v4, Lcom/prineside/tdi2/Path$PathSegment;->length:F

    iput v5, v4, Lcom/prineside/tdi2/Path$PathSegment;->distanceFromStart:F

    iget v6, v4, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v7, v4, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    iget v8, v4, Lcom/prineside/tdi2/Path$PathSegment;->x2:F

    iget v9, v4, Lcom/prineside/tdi2/Path$PathSegment;->y2:F

    invoke-static {v6, v7, v8, v9}, Lcom/prineside/tdi2/Path;->e(FFFF)Lcom/prineside/tdi2/Path$PathSegment$Direction;

    move-result-object v6

    iput-object v6, v4, Lcom/prineside/tdi2/Path$PathSegment;->direction:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v4, v4, Lcom/prineside/tdi2/Path$PathSegment;->length:F

    add-float/2addr v5, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1
    return v5

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No nodes in path"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Path is not prepared yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public getRotation(FI)F
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int v1, p1

    int-to-float v0, v1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const p1, 0x3f7d70a4    # 0.99f

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Path$MoveSide;

    aget-object v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Path;->SIDE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v1, v0

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/Path$SideFunction;->rotation(F)F

    move-result p1

    return p1
.end method

.method public getSpeedMultiplier(FI)F
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v1, v0

    :cond_0
    if-ltz v1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Path;->SIDE_FUNCTIONS:[[Lcom/prineside/tdi2/Path$SideFunction;

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Path$MoveSide;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    aget-object p1, p1, p2

    invoke-interface {p1}, Lcom/prineside/tdi2/Path$SideFunction;->speedMultiplier()F

    move-result p1

    return p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentNodeIdx = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", passedTiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/prineside/tdi2/PathNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public passesThroughTileType(Lcom/prineside/tdi2/enums/TileType;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->prepareIfNeeded()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/PathNode;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/PathNode;->tileType:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public prepareIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Path;->calculateMoveSides(I)Lcom/prineside/tdi2/Path$MoveSide;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move side not calculated for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Path;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path must contain at least 2 nodes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    return-void
.end method

.method public reverse()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    return-void
.end method

.method public set(Lcom/prineside/tdi2/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-boolean p1, p1, Lcom/prineside/tdi2/Path;->a:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/Path;->a:Z

    return-void
.end method

.method public setMoveSide(ILcom/prineside/tdi2/Path$MoveSide;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "side is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Path is not prepared"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/Path;->a:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Path;->moveSides:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
