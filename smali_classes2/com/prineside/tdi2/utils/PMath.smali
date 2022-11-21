.class public Lcom/prineside/tdi2/utils/PMath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/utils/PMath$Sin;,
        Lcom/prineside/tdi2/utils/PMath$ClassComparator;,
        Lcom/prineside/tdi2/utils/PMath$WeakReferenceComparator;
    }
.end annotation


# static fields
.field public static final a:Lcom/badlogic/gdx/math/Vector2;

.field public static final b:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[Ljava/lang/String;

.field public static final d:[Lcom/prineside/tdi2/utils/PMath$ClassComparator;

.field public static e:Lcom/prineside/luaj/LuaDouble;

.field public static f:Lcom/prineside/luaj/LuaDouble;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/PMath;->a:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/PMath;->b:Lcom/badlogic/gdx/utils/ObjectSet;

    const-class v1, Ljava/lang/Character;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Short;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2000

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/prineside/tdi2/utils/PMath;->c:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    sget-object v1, Lcom/prineside/tdi2/serializers/ArraySerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/RandomXS128Serializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/Vector2Serializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/IntSetSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/IntArraySerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/FloatArraySerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/RectangleSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/ObjectSetSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/ObjectMapSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/serializers/IntMapSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/ListenerGroup;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/CheatSafeInt;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/CheatSafeLong;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/GameSystemProvider;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/ScriptSystem;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/luaj/LuaTable;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PMath$WeakReferenceComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/utils/PMath$WeakReferenceComparator;-><init>(Lcom/prineside/tdi2/utils/PMath$1;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/prineside/tdi2/utils/PMath;->d:[Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFFFF)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addWithoutOverflow(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/prineside/tdi2/utils/PMath;->willAdditionOverflow(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static cachedLuaDouble1(D)Lcom/prineside/luaj/LuaDouble;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/PMath;->e:Lcom/prineside/luaj/LuaDouble;

    if-nez v0, :cond_0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaDouble;

    sput-object v0, Lcom/prineside/tdi2/utils/PMath;->e:Lcom/prineside/luaj/LuaDouble;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/PMath;->e:Lcom/prineside/luaj/LuaDouble;

    invoke-virtual {v0, p0, p1}, Lcom/prineside/luaj/LuaDouble;->setDirectly(D)V

    sget-object p0, Lcom/prineside/tdi2/utils/PMath;->e:Lcom/prineside/luaj/LuaDouble;

    return-object p0
.end method

.method public static cachedLuaDouble2(D)Lcom/prineside/luaj/LuaDouble;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/PMath;->f:Lcom/prineside/luaj/LuaDouble;

    if-nez v0, :cond_0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaDouble;

    sput-object v0, Lcom/prineside/tdi2/utils/PMath;->f:Lcom/prineside/luaj/LuaDouble;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/PMath;->f:Lcom/prineside/luaj/LuaDouble;

    invoke-virtual {v0, p0, p1}, Lcom/prineside/luaj/LuaDouble;->setDirectly(D)V

    sget-object p0, Lcom/prineside/tdi2/utils/PMath;->f:Lcom/prineside/luaj/LuaDouble;

    return-object p0
.end method

.method public static circleIntersectsCircle(FFFFFF)Z
    .locals 0

    sub-float/2addr p0, p3

    sub-float/2addr p1, p4

    add-float/2addr p2, p5

    mul-float p2, p2, p2

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static circleIntersectsRect(FFFFFFF)Z
    .locals 2

    add-float/2addr p5, p3

    invoke-static {p0, p3, p5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p3

    add-float/2addr p6, p4

    invoke-static {p1, p4, p6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p4

    sub-float/2addr p0, p3

    float-to-double p5, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p5, p6, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p5

    sub-float/2addr p1, p4

    float-to-double p0, p1

    invoke-static {p0, p1, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p0

    add-double/2addr p5, p0

    mul-float p2, p2, p2

    float-to-double p0, p2

    cmpg-double p2, p5, p0

    if-gez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static compareFingerprints(Ljava/lang/String;[Ljava/lang/Enum;[BLcom/esotericsoftware/kryo/io/Input;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-byte v5, p2, v5

    if-eq v4, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z[Ljava/lang/Enum;)V

    return-void
.end method

.method public static compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z[Ljava/lang/Enum;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/badlogic/gdx/utils/StringBuilder;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Z[",
            "Ljava/lang/Enum;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    if-gez p4, :cond_1

    if-eqz p6, :cond_0

    const-string v0, "> too deep\n"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    return-void

    :cond_1
    if-ne v0, v3, :cond_2

    return-void

    :cond_2
    const-string v1, "\n"

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v14, v2, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-eq v2, v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v14, v2, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v14, v2, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz p6, :cond_6

    const-string v0, "> skipped (already compared) "

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v15, 0x0

    :goto_1
    iget v0, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v0, :cond_5

    iget-object v0, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v15

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_6
    return-void

    :cond_7
    :goto_2
    const-string v2, "> comparing "

    if-eqz p6, :cond_9

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    :goto_3
    iget v5, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_8

    iget-object v5, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_9
    if-nez v0, :cond_a

    if-nez v3, :cond_b

    :cond_a
    if-nez v3, :cond_d

    if-eqz v0, :cond_d

    :cond_b
    const/4 v15, 0x0

    :goto_4
    iget v0, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v0, :cond_c

    iget-object v0, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v15

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_c
    const-string v0, ": one object is null\n"

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_d
    if-eqz v0, :cond_69

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, ")\n"

    const-string v7, ", "

    if-eq v4, v5, :cond_f

    const/4 v15, 0x0

    :goto_5
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_e

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_e
    const-string v1, ": classes differ ("

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_f
    sget-object v4, Lcom/prineside/tdi2/utils/PMath;->d:[Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    array-length v5, v4

    const/4 v8, 0x0

    :goto_6
    const/4 v11, 0x0

    if-ge v8, v5, :cond_11

    aget-object v9, v4, v8

    invoke-virtual {v9}, Lcom/prineside/tdi2/utils/PMath$ClassComparator;->forClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_11
    move-object v9, v11

    :goto_7
    if-eqz v9, :cond_12

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/utils/PMath$ClassComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    goto/16 :goto_43

    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    const-string v15, "?"

    const-string v10, " "

    const-string v9, " != "

    if-eqz v4, :cond_49

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v5, "] "

    const-string v8, "["

    const-string v11, ": sizes differ ("

    if-ne v2, v4, :cond_18

    check-cast v0, [F

    move-object v2, v3

    check-cast v2, [F

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_14

    const/4 v15, 0x0

    :goto_8
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_13

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_14
    const/4 v3, 0x0

    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_69

    aget v4, v0, v3

    aget v6, v2, v3

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    :goto_a
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_15

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_15
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    if-nez p7, :cond_16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_b

    :cond_16
    aget-object v6, p7, v3

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :goto_b
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget v6, v0, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget v6, v2, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_1e

    check-cast v0, [I

    move-object v2, v3

    check-cast v2, [I

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_1a

    const/4 v15, 0x0

    :goto_c
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_19

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_19
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_1a
    const/4 v3, 0x0

    :goto_d
    array-length v4, v0

    if-ge v3, v4, :cond_69

    aget v4, v0, v3

    aget v6, v2, v3

    if-eq v4, v6, :cond_1d

    const/4 v4, 0x0

    :goto_e
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_1b

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    if-nez p7, :cond_1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_f

    :cond_1c
    aget-object v6, p7, v3

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :goto_f
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget v6, v0, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget v6, v2, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_24

    check-cast v0, [D

    move-object v2, v3

    check-cast v2, [D

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_20

    const/4 v15, 0x0

    :goto_10
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_1f

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    :cond_1f
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_20
    const/4 v3, 0x0

    :goto_11
    array-length v4, v0

    if-ge v3, v4, :cond_69

    aget-wide v6, v0, v3

    aget-wide v10, v2, v3

    cmpl-double v4, v6, v10

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    :goto_12
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_21

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_21
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    if-nez p7, :cond_22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_13

    :cond_22
    aget-object v6, p7, v3

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :goto_13
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-wide v6, v0, v3

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-wide v6, v2, v3

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_24
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_2a

    check-cast v0, [Z

    move-object v2, v3

    check-cast v2, [Z

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_26

    const/4 v15, 0x0

    :goto_14
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_25

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    :cond_25
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_26
    const/4 v3, 0x0

    :goto_15
    array-length v4, v0

    if-ge v3, v4, :cond_69

    aget-boolean v4, v0, v3

    aget-boolean v6, v2, v3

    if-eq v4, v6, :cond_29

    const/4 v4, 0x0

    :goto_16
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_27

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_27
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    if-nez p7, :cond_28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_17

    :cond_28
    aget-object v6, p7, v3

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :goto_17
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-boolean v6, v0, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-boolean v6, v2, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_30

    check-cast v0, [B

    move-object v2, v3

    check-cast v2, [B

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_2c

    const/4 v15, 0x0

    :goto_18
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_2b

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    :cond_2b
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_2c
    const/4 v3, 0x0

    :goto_19
    array-length v4, v0

    if-ge v3, v4, :cond_69

    aget-byte v4, v0, v3

    aget-byte v6, v2, v3

    if-eq v4, v6, :cond_2f

    const/4 v4, 0x0

    :goto_1a
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_2d

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2d
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    if-nez p7, :cond_2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1b

    :cond_2e
    aget-object v6, p7, v3

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :goto_1b
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-byte v6, v0, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-byte v6, v2, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_36

    check-cast v0, [S

    move-object v2, v3

    check-cast v2, [S

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_32

    const/4 v15, 0x0

    :goto_1c
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_31

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_1c

    :cond_31
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_32
    const/4 v3, 0x0

    :goto_1d
    array-length v4, v0

    if-ge v3, v4, :cond_69

    aget-short v4, v0, v3

    aget-short v6, v2, v3

    if-eq v4, v6, :cond_35

    const/4 v4, 0x0

    :goto_1e
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_33

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_33
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    if-nez p7, :cond_34

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1f

    :cond_34
    aget-object v6, p7, v3

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :goto_1f
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-short v6, v0, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-short v6, v2, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_36
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_3c

    check-cast v0, [J

    move-object v2, v3

    check-cast v2, [J

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_38

    const/4 v15, 0x0

    :goto_20
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_37

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    :cond_37
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_38
    const/4 v3, 0x0

    :goto_21
    array-length v4, v0

    if-ge v3, v4, :cond_69

    aget-wide v6, v0, v3

    aget-wide v10, v2, v3

    cmp-long v4, v6, v10

    if-eqz v4, :cond_3b

    const/4 v4, 0x0

    :goto_22
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_39

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_39
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    if-nez p7, :cond_3a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_23

    :cond_3a
    aget-object v6, p7, v3

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :goto_23
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-wide v6, v0, v3

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-wide v6, v2, v3

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_42

    check-cast v0, [C

    move-object v2, v3

    check-cast v2, [C

    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_3e

    const/4 v15, 0x0

    :goto_24
    iget v1, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v1, :cond_3d

    iget-object v1, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_24

    :cond_3d
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_3e
    const/4 v3, 0x0

    :goto_25
    array-length v4, v0

    if-ge v3, v4, :cond_69

    aget-char v4, v0, v3

    aget-char v6, v2, v3

    if-eq v4, v6, :cond_41

    const/4 v4, 0x0

    :goto_26
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_3f

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_3f
    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    if-nez p7, :cond_40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_27

    :cond_40
    aget-object v6, p7, v3

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :goto_27
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-char v6, v0, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    aget-char v6, v2, v3

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_42
    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    array-length v0, v9

    array-length v1, v5

    if-eq v0, v1, :cond_44

    const/4 v15, 0x0

    :goto_28
    iget v0, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v0, :cond_43

    iget-object v0, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v15

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_28

    :cond_43
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v9

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    array-length v1, v5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_43

    :cond_44
    const/4 v7, 0x0

    :goto_29
    array-length v0, v9

    if-ge v7, v0, :cond_69

    aget-object v0, v9, v7

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_45
    aget-object v0, v5, v7

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_46
    move-object v0, v15

    :goto_2a
    invoke-virtual {v13, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-nez p7, :cond_47

    invoke-static {v7}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_47
    aget-object v1, p7, v7

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v0, "]"

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    aget-object v0, v9, v7

    aget-object v1, v5, v7

    add-int/lit8 v4, p4, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v11, v5

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z)V

    const/4 v0, 0x0

    :goto_2c
    const/4 v1, 0x5

    if-ge v0, v1, :cond_48

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_48
    add-int/lit8 v7, v7, 0x1

    move-object v5, v11

    goto :goto_29

    :cond_49
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_67

    sget-object v4, Lcom/prineside/tdi2/utils/PMath;->b:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto/16 :goto_41

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/prineside/tdi2/serializers/GameStateSerializer;->getAllFields(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    const/4 v7, 0x0

    :goto_2d
    iget v4, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v4, :cond_69

    iget-object v4, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Ljava/lang/reflect/Field;

    aget-object v6, v4, v7

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Float;

    if-eq v4, v5, :cond_62

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4b

    goto/16 :goto_3c

    :cond_4b
    const-class v5, Ljava/lang/Integer;

    if-eq v4, v5, :cond_5e

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4c

    goto/16 :goto_39

    :cond_4c
    const-class v5, Ljava/lang/Boolean;

    if-eq v4, v5, :cond_5a

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4d

    goto/16 :goto_36

    :cond_4d
    const-class v5, Ljava/lang/Double;

    if-eq v4, v5, :cond_56

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4e

    goto/16 :goto_32

    :cond_4e
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_50

    sget-boolean v4, Lcom/prineside/tdi2/GameSystemProvider;->DEBUG:Z

    if-eqz v4, :cond_4f

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    :cond_4f
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    :cond_50
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_53

    sget-boolean v4, Lcom/prineside/tdi2/GameSystemProvider;->DEBUG:Z

    if-eqz v4, :cond_52

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_51

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2e

    :cond_51
    move-object v4, v15

    :goto_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    :cond_52
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    :cond_53
    move-object v4, v15

    :cond_54
    :goto_2f
    invoke-static {v6}, Lcom/prineside/tdi2/serializers/GameStateSerializer;->getEnumKeyArrayFieldAnnotationCached(Ljava/lang/reflect/Field;)Lcom/prineside/tdi2/utils/EnumKeyArray;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-interface {v5}, Lcom/prineside/tdi2/utils/EnumKeyArray;->enumerator()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Enum;

    move-object/from16 v16, v5

    goto :goto_30

    :cond_55
    move-object/from16 v16, v11

    :goto_30
    const-string v5, ".("

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v4, ")"

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v17, p4, -0x1

    move-object/from16 p7, v6

    move-object/from16 v6, p2

    move/from16 v18, v7

    move-object/from16 v7, p3

    move-object/from16 v19, v8

    move/from16 v8, v17

    move-object v14, v9

    move-object/from16 v9, p5

    move-object/from16 v17, v15

    move-object v15, v10

    move/from16 v10, p6

    move-object/from16 v20, v11

    move-object/from16 v11, v16

    :try_start_1
    invoke-static/range {v4 .. v11}, Lcom/prineside/tdi2/utils/PMath;->compareObjects(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/Array;ILcom/badlogic/gdx/utils/IntIntMap;Z[Ljava/lang/Enum;)V

    const/4 v4, 0x0

    :goto_31
    const/4 v5, 0x4

    if-ge v4, v5, :cond_66

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_56
    :goto_32
    move-object/from16 p7, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object v14, v9

    move-object/from16 v20, v11

    move-object/from16 v17, v15

    move-object v15, v10

    const-string v4, ".(double)"

    if-eqz p6, :cond_58

    :try_start_2
    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x0

    :goto_33
    iget v6, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_57

    iget-object v6, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_57
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_34

    :catch_0
    move-exception v0

    move-object/from16 v5, p7

    goto/16 :goto_40

    :cond_58
    :goto_34
    move-object/from16 v5, p7

    :try_start_3
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v8

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_66

    const/4 v6, 0x0

    :goto_35
    iget v7, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_59

    iget-object v7, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_59
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3f

    :cond_5a
    :goto_36
    move-object v5, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object v14, v9

    move-object/from16 v20, v11

    move-object/from16 v17, v15

    move-object v15, v10

    const-string v4, ".(boolean)"

    if-eqz p6, :cond_5c

    :try_start_4
    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v6, 0x0

    :goto_37
    iget v7, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_5b

    iget-object v7, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_5b
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_5c
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_66

    const/4 v6, 0x0

    :goto_38
    iget v7, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_5d

    iget-object v7, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_5d
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3f

    :cond_5e
    :goto_39
    move-object v5, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object v14, v9

    move-object/from16 v20, v11

    move-object/from16 v17, v15

    move-object v15, v10

    const-string v4, ".(int)"

    if-eqz p6, :cond_60

    :try_start_5
    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v6, 0x0

    :goto_3a
    iget v7, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_5f

    iget-object v7, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_5f
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_60
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_66

    const/4 v6, 0x0

    :goto_3b
    iget v7, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_61

    iget-object v7, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_61
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3f

    :cond_62
    :goto_3c
    move-object v5, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object v14, v9

    move-object/from16 v20, v11

    move-object/from16 v17, v15

    move-object v15, v10

    const-string v4, ".(float)"

    if-eqz p6, :cond_64

    :try_start_6
    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v6, 0x0

    :goto_3d
    iget v7, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_63

    iget-object v7, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_63
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_64
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_66

    const/4 v6, 0x0

    :goto_3e
    iget v7, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_65

    iget-object v7, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_65
    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_66
    :goto_3f
    add-int/lit8 v7, v18, 0x1

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v15, v17

    move-object/from16 v8, v19

    move-object/from16 v11, v20

    move-object/from16 v14, p5

    goto/16 :goto_2d

    :catch_1
    move-exception v0

    goto :goto_40

    :catch_2
    move-exception v0

    move-object v5, v6

    :goto_40
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/utils/Array;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_67
    :goto_41
    move-object v14, v9

    invoke-virtual/range {p0 .. p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    const/4 v15, 0x0

    :goto_42
    iget v2, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v2, :cond_68

    iget-object v2, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v15

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_42

    :cond_68
    const-string v2, ": "

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_69
    :goto_43
    return-void
.end method

.method public static cos(F)F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/PMath$Sin;->a:[F

    const v1, 0x3fc90fdb

    add-float/2addr p0, v1

    const v1, 0x44a2f983

    mul-float p0, p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x1fff

    aget p0, v0, p0

    return p0
.end method

.method public static cosDeg(F)F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/PMath$Sin;->a:[F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr p0, v1

    const v1, 0x41b60b61

    mul-float p0, p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x1fff

    aget p0, v0, p0

    return p0
.end method

.method public static generateNewId()J
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sget-object v2, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAngleBetweenPoints(FFFF)F
    .locals 0

    sub-float/2addr p3, p1

    sub-float/2addr p2, p0

    invoke-static {p3, p2}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result p0

    const p1, 0x42652ee0

    mul-float p0, p0, p1

    const/high16 p1, 0x42b40000    # 90.0f

    sub-float/2addr p0, p1

    return p0
.end method

.method public static getAngleBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p1, p0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result p0

    const p1, 0x42652ee0

    mul-float p0, p0, p1

    const/high16 p1, 0x42b40000    # 90.0f

    sub-float/2addr p0, p1

    return p0
.end method

.method public static getBezierCurvePos(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/PMath;->a:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v1, v1, p4

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, p4

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float p1, p1, p4

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p1, p1, p4

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float p1, p1, p4

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p1, p1, p4

    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public static getByChance(Lcom/badlogic/gdx/math/RandomXS128;Lcom/badlogic/gdx/utils/IntArray;)I
    .locals 1

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget p1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {p0, v0, p1}, Lcom/prineside/tdi2/utils/PMath;->getByChance(Lcom/badlogic/gdx/math/RandomXS128;[II)I

    move-result p0

    return p0
.end method

.method public static getByChance(Lcom/badlogic/gdx/math/RandomXS128;[II)I
    .locals 4

    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p0

    const/4 v1, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget v2, p1, v0

    add-int v3, v1, v2

    if-ge p0, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget p0, p1, v0

    return p0

    :cond_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Something gone wrong"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "chances must contain pairs (chance, index)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static getDistanceBetweenAngles(FF)F
    .locals 1

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->normalizeAngle(F)F

    move-result p0

    invoke-static {p1}, Lcom/prineside/tdi2/utils/PMath;->normalizeAngle(F)F

    move-result p1

    sub-float/2addr p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    add-float/2addr p1, p0

    return p1

    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    sub-float/2addr p1, p0

    :cond_1
    return p1
.end method

.method public static getDistanceBetweenPoints(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    mul-float p0, p0, p0

    sub-float/2addr p1, p3

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getDistanceBetweenPoints(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v2, v0, v1

    sub-float/2addr v0, v1

    mul-float v2, v2, v0

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, p0, p1

    sub-float/2addr p0, p1

    mul-float v0, v0, p0

    add-float/2addr v2, v0

    float-to-double p0, v2

    invoke-static {p0, p1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getLineCircleIntersection(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)Z
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v1, v2, v3, p3}, Lcom/prineside/tdi2/utils/PMath;->a(FFFFF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p1, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p0, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v0

    sub-float/2addr p1, p0

    sub-float/2addr v3, v0

    sub-float/2addr v4, p0

    mul-float v5, v2, v2

    mul-float v6, p1, p1

    add-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_1

    mul-float v3, v3, v2

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    mul-float v4, v2, v3

    mul-float v3, v3, p1

    goto :goto_0

    :cond_1
    move v3, p1

    move v4, v2

    :goto_0
    add-float/2addr v0, v4

    iput v0, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr p0, v3

    iput p0, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p4, v4, v4

    mul-float v7, v3, v3

    add-float/2addr p4, v7

    iget v7, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, p0, v7, p2, p3}, Lcom/prineside/tdi2/utils/PMath;->a(FFFFF)Z

    move-result p0

    if-eqz p0, :cond_2

    cmpg-float p0, p4, v5

    if-gtz p0, :cond_2

    mul-float v4, v4, v2

    mul-float v3, v3, p1

    add-float/2addr v4, v3

    cmpl-float p0, v4, v6

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    const v0, 0x3c8efa35

    mul-float p2, p2, v0

    sget-object v0, Lcom/prineside/tdi2/utils/PMath;->a:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p2}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v1

    neg-float v1, v1

    mul-float v1, v1, p3

    add-float/2addr p0, v1

    iput p0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {p2}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result p0

    mul-float p3, p3, p0

    add-float/2addr p1, p3

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object v0
.end method

.method public static getPointByAngleFromPoint(FFFFLcom/badlogic/gdx/math/Vector2;)V
    .locals 1

    const v0, 0x3c8efa35

    mul-float p2, p2, v0

    invoke-static {p2}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, p3

    add-float/2addr p0, v0

    iput p0, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {p2}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result p0

    mul-float p3, p3, p0

    add-float/2addr p1, p3

    iput p1, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public static getSquareDistanceBetweenPoints(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    mul-float p0, p0, p0

    sub-float/2addr p1, p3

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static hash(D)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/utils/PMath;->hash(J)I

    move-result p0

    return p0
.end method

.method public static hash(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->hash(I)I

    move-result p0

    return p0
.end method

.method public static hash(I)I
    .locals 0

    return p0
.end method

.method public static hash(J)I
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v1, v0

    long-to-int p1, p0

    add-int/2addr v1, p1

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PMath;->hash(I)I

    move-result p0

    return p0
.end method

.method public static hash(Lcom/badlogic/gdx/math/Vector2;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->hash(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PMath;->hash(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static hash(Lcom/badlogic/gdx/utils/IntArray;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static hash(Ljava/lang/Enum;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public static hash(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->hash(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static hash(Z)I
    .locals 0

    return p0
.end method

.method public static hash([B)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static hash([F)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    mul-int/lit8 v1, v1, 0xb

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->hash(F)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static hash([I)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static hash([Lcom/badlogic/gdx/utils/Array;)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static hash([Z)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-boolean v3, p0, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static hashGameListeners(Lcom/prineside/tdi2/ListenerGroup;)I
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/prineside/tdi2/GameListener;->affectsGameState()Z

    move-result v3

    if-eqz v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v2}, Lcom/prineside/tdi2/GameListener;->getConstantId()I

    move-result v2

    invoke-static {v2}, Lcom/prineside/tdi2/utils/PMath;->hash(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->hash(I)I

    move-result p0

    return p0
.end method

.method public static intHash([BII)I
    .locals 2

    add-int/2addr p2, p1

    const/4 v0, 0x1

    :goto_0
    if-ge p1, p2, :cond_0

    mul-int/lit8 v0, v0, 0x17

    aget-byte v1, p0, p1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static interpolatePoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, v0

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public static loopedDistance(FFF)F
    .locals 4

    rem-float/2addr p0, p2

    add-float/2addr p0, p2

    rem-float/2addr p0, p2

    rem-float/2addr p1, p2

    add-float/2addr p1, p2

    rem-float/2addr p1, p2

    sub-float/2addr p0, p1

    sub-float p1, p0, p2

    add-float/2addr p2, p0

    invoke-static {p0}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/StrictMath;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/StrictMath;->abs(F)F

    move-result v2

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_0

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_0

    return p0

    :cond_0
    cmpg-float p0, v1, v0

    if-gtz p0, :cond_1

    cmpg-float p0, v1, v2

    if-gtz p0, :cond_1

    return p1

    :cond_1
    return p2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static multiplyWithoutOverflow(II)I
    .locals 5

    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    mul-int p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left and right must be positive, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " given"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static normalizeAngle(F)F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p0, v0

    add-float/2addr p0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;I)I
    .locals 9

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide v5, -0x100000000L

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-nez p1, :cond_1

    long-to-int p0, v2

    return p0

    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "String value %s exceeds range of unsigned int."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "Illegal leading minus sign on unsigned string %s."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static randomTriangular(FFFLcom/badlogic/gdx/math/RandomXS128;)F
    .locals 3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result p3

    sub-float v0, p1, p0

    sub-float v1, p2, p0

    div-float v2, v1, v0

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_0

    mul-float p3, p3, v0

    mul-float p3, p3, v1

    float-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    add-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p3

    mul-float p0, p0, v0

    sub-float p2, p1, p2

    mul-float p0, p0, p2

    float-to-double p2, p0

    invoke-static {p2, p3}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide p2

    double-to-float p0, p2

    sub-float/2addr p1, p0

    return p1
.end method

.method public static randomTriangular(FFLcom/badlogic/gdx/math/RandomXS128;)F
    .locals 2

    add-float v0, p0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-static {p0, p1, v0, p2}, Lcom/prineside/tdi2/utils/PMath;->randomTriangular(FFFLcom/badlogic/gdx/math/RandomXS128;)F

    move-result p0

    return p0
.end method

.method public static randomTriangular(FLcom/badlogic/gdx/math/RandomXS128;)F
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v0, v0, p0

    return v0
.end method

.method public static randomTriangular(Lcom/badlogic/gdx/math/RandomXS128;)F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public static shiftPointByAngle(Lcom/badlogic/gdx/math/Vector2;FF)V
    .locals 2

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {p1}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v1

    neg-float v1, v1

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p1}, Lcom/prineside/tdi2/utils/PMath;->cos(F)F

    move-result p1

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public static sin(F)F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/PMath$Sin;->a:[F

    const v1, 0x44a2f983

    mul-float p0, p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x1fff

    aget p0, v0, p0

    return p0
.end method

.method public static sinDeg(F)F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/PMath$Sin;->a:[F

    const v1, 0x41b60b61

    mul-float p0, p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x1fff

    aget p0, v0, p0

    return p0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/utils/PMath;->c:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static willAdditionOverflow(II)Z
    .locals 1

    if-gez p1, :cond_0

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/prineside/tdi2/utils/PMath;->willSubtractionOverflow(II)Z

    move-result p0

    return p0

    :cond_0
    xor-int v0, p0, p1

    xor-int/lit8 v0, v0, -0x1

    add-int/2addr p1, p0

    xor-int/2addr p0, p1

    and-int/2addr p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static willSubtractionOverflow(II)Z
    .locals 1

    if-gez p1, :cond_0

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/prineside/tdi2/utils/PMath;->willAdditionOverflow(II)Z

    move-result p0

    return p0

    :cond_0
    xor-int v0, p0, p1

    sub-int p1, p0, p1

    xor-int/2addr p0, p1

    and-int/2addr p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
