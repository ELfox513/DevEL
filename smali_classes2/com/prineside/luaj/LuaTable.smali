.class public Lcom/prineside/luaj/LuaTable;
.super Lcom/prineside/luaj/LuaValue;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/Metatable;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/LuaTable$Slot;,
        Lcom/prineside/luaj/LuaTable$StrongSlot;,
        Lcom/prineside/luaj/LuaTable$Entry;,
        Lcom/prineside/luaj/LuaTable$DeadSlot;,
        Lcom/prineside/luaj/LuaTable$IntKeyEntry;,
        Lcom/prineside/luaj/LuaTable$NumberValueEntry;,
        Lcom/prineside/luaj/LuaTable$NormalEntry;,
        Lcom/prineside/luaj/LuaTable$LinkSlot;
    }
.end annotation


# static fields
.field public static final A:[Lcom/prineside/luaj/LuaTable$Slot;

.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

.field public static final z:Lcom/prineside/luaj/LuaString;


# instance fields
.field public u:[Lcom/prineside/luaj/LuaValue;

.field public w:[Lcom/prineside/luaj/LuaTable$Slot;

.field public x:I

.field public y:Lcom/prineside/luaj/Metatable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "n"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/LuaTable;->z:Lcom/prineside/luaj/LuaString;

    new-instance v0, Lcom/prineside/luaj/LuaTable$1;

    invoke-direct {v0}, Lcom/prineside/luaj/LuaTable$1;-><init>()V

    sput-object v0, Lcom/prineside/luaj/LuaTable;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/prineside/luaj/LuaTable$Slot;

    sput-object v0, Lcom/prineside/luaj/LuaTable;->A:[Lcom/prineside/luaj/LuaTable$Slot;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NOVALS:[Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    sget-object v0, Lcom/prineside/luaj/LuaTable;->A:[Lcom/prineside/luaj/LuaTable$Slot;

    iput-object v0, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->presize(II)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/Varargs;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/prineside/luaj/LuaTable;-><init>(Lcom/prineside/luaj/Varargs;I)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/Varargs;I)V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v1

    sub-int/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/prineside/luaj/LuaTable;->presize(II)V

    sget-object v2, Lcom/prineside/luaj/LuaTable;->z:Lcom/prineside/luaj/LuaString;

    invoke-static {v1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :goto_0
    if-gt v0, v1, :cond_0

    add-int v2, v0, p2

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lcom/prineside/luaj/LuaValue;[Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    .locals 6

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    array-length v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v3, v2

    shr-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/prineside/luaj/LuaTable;->presize(II)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {p0, v4, v3}, Lcom/prineside/luaj/LuaTable;->rawset(ILcom/prineside/luaj/LuaValue;)V

    move v3, v4

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result p2

    const/4 v3, 0x1

    :goto_4
    if-gt v3, p2, :cond_4

    add-int v4, v2, v3

    invoke-virtual {p3, v3}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/prineside/luaj/LuaTable;->rawset(ILcom/prineside/luaj/LuaValue;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v0, v1, :cond_6

    add-int/lit8 p2, v0, 0x1

    aget-object p3, p1, p2

    invoke-virtual {p3}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result p3

    if-nez p3, :cond_5

    aget-object p3, p1, v0

    aget-object p2, p1, p2

    invoke-virtual {p0, p3, p2}, Lcom/prineside/luaj/LuaTable;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_6
    return-void
.end method

.method public static E(Lcom/prineside/luaj/LuaValue;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->rawlen()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static F(I)I
    .locals 3

    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    ushr-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const v2, 0xff00

    and-int/2addr v2, p0

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 p0, p0, 0x8

    :cond_2
    and-int/lit16 v2, p0, 0xf0

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x4

    ushr-int/lit8 p0, p0, 0x4

    :cond_3
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_4
    return v1

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static H([Lcom/prineside/luaj/LuaValue;I)[Lcom/prineside/luaj/LuaValue;
    .locals 2

    new-array p1, p1, [Lcom/prineside/luaj/LuaValue;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static hashSlot(Lcom/prineside/luaj/LuaValue;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaTable;->hashpow2(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaTable;->hashmod(II)I

    move-result p0

    return p0
.end method

.method public static hashmod(II)I
    .locals 1

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public static hashpow2(II)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method public static v(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LuaTable$IntKeyEntry;-><init>(ILcom/prineside/luaj/LuaValue;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/luaj/LuaTable$NumberValueEntry;-><init>(Lcom/prineside/luaj/LuaValue;D)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/prineside/luaj/LuaTable$NormalEntry;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LuaTable$NormalEntry;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lcom/prineside/luaj/LuaValue;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaTable;->hashSlot(Lcom/prineside/luaj/LuaValue;I)I

    move-result p1

    return p1
.end method

.method public B(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaTable;->x:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->A(Lcom/prineside/luaj/LuaValue;)I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/prineside/luaj/LuaTable$StrongSlot;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0}, Lcom/prineside/luaj/LuaTable$Slot;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public final C(ILcom/prineside/luaj/LuaValue;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->D(ILcom/prineside/luaj/LuaValue;)V

    :goto_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/LuaTable;->I(IILcom/prineside/luaj/LuaValue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final D(ILcom/prineside/luaj/LuaValue;)V
    .locals 1

    div-int/lit8 v0, p1, 0x2

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/LuaTable;->I(IILcom/prineside/luaj/LuaValue;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G(I)V
    .locals 12

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/prineside/luaj/Metatable;->useWeakKeys()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    invoke-interface {v0}, Lcom/prineside/luaj/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->t()I

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LuaTable;->x:I

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    invoke-interface {v0}, Lcom/prineside/luaj/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->w()V

    :cond_1
    const/16 v0, 0x20

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/LuaTable;->u([I)I

    move-result v2

    const/4 v3, 0x1

    if-lez p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result v4

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    :cond_2
    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    if-ge v6, v0, :cond_5

    aget v9, v1, v6

    add-int/2addr v5, v9

    mul-int/lit8 v9, v2, 0x2

    shl-int v10, v3, v6

    if-ge v9, v10, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v6, -0x1

    shl-int v8, v3, v8

    if-lt v5, v8, :cond_4

    move v7, v10

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    iget-object v2, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    if-lez p1, :cond_6

    if-gt p1, v7, :cond_6

    const/4 v5, -0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    array-length v6, v0

    if-eq v7, v6, :cond_9

    new-array v6, v7, [Lcom/prineside/luaj/LuaValue;

    array-length v9, v0

    if-le v7, v9, :cond_7

    array-length v9, v0

    add-int/2addr v9, v3

    invoke-static {v9}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result v9

    invoke-static {v7}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result v10

    add-int/2addr v10, v3

    :goto_3
    if-ge v9, v10, :cond_8

    aget v11, v1, v9

    add-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    array-length v9, v0

    if-le v9, v7, :cond_8

    add-int/lit8 v9, v7, 0x1

    invoke-static {v9}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result v9

    array-length v10, v0

    invoke-static {v10}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result v10

    add-int/2addr v10, v3

    :goto_4
    if-ge v9, v10, :cond_8

    aget v11, v1, v9

    sub-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    array-length v1, v0

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v4, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_9
    move-object v6, v0

    :goto_5
    iget v1, p0, Lcom/prineside/luaj/LuaTable;->x:I

    sub-int/2addr v1, v5

    if-ltz p1, :cond_b

    if-le p1, v7, :cond_a

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 p1, 0x1

    :goto_7
    add-int/2addr v1, p1

    array-length p1, v2

    if-lez v1, :cond_d

    if-ge v1, v8, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v1}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result v1

    shl-int v8, v3, v1

    :goto_8
    add-int/lit8 v1, v8, -0x1

    new-array v3, v8, [Lcom/prineside/luaj/LuaTable$Slot;

    goto :goto_9

    :cond_d
    sget-object v3, Lcom/prineside/luaj/LuaTable;->A:[Lcom/prineside/luaj/LuaTable$Slot;

    const/4 v1, 0x0

    :goto_9
    if-ge v4, p1, :cond_11

    aget-object v8, v2, v4

    :goto_a
    if-eqz v8, :cond_10

    invoke-interface {v8, v7}, Lcom/prineside/luaj/LuaTable$Slot;->arraykey(I)I

    move-result v9

    if-lez v9, :cond_e

    invoke-interface {v8}, Lcom/prineside/luaj/LuaTable$Slot;->first()Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v10

    if-eqz v10, :cond_f

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v10}, Lcom/prineside/luaj/LuaTable$StrongSlot;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_b

    :cond_e
    instance-of v9, v8, Lcom/prineside/luaj/LuaTable$DeadSlot;

    if-nez v9, :cond_f

    invoke-interface {v8, v1}, Lcom/prineside/luaj/LuaTable$Slot;->keyindex(I)I

    move-result v9

    aget-object v10, v3, v9

    invoke-interface {v8, v10}, Lcom/prineside/luaj/LuaTable$Slot;->relink(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v10

    aput-object v10, v3, v9

    :cond_f
    :goto_b
    invoke-interface {v8}, Lcom/prineside/luaj/LuaTable$Slot;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v8

    goto :goto_a

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_11
    :goto_c
    array-length p1, v0

    if-ge v7, p1, :cond_16

    add-int/lit8 p1, v7, 0x1

    aget-object v2, v0, v7

    if-eqz v2, :cond_15

    invoke-static {p1}, Lcom/prineside/luaj/LuaInteger;->hashCode(I)I

    move-result v4

    invoke-static {v4, v1}, Lcom/prineside/luaj/LuaTable;->hashmod(II)I

    move-result v4

    iget-object v7, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v7, :cond_12

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lcom/prineside/luaj/Metatable;->entry(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_d

    :cond_12
    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/prineside/luaj/LuaTable;->v(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;

    move-result-object v2

    :cond_13
    aget-object v7, v3, v4

    if-eqz v7, :cond_14

    invoke-interface {v7, v2}, Lcom/prineside/luaj/LuaTable$Slot;->add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v2

    :cond_14
    aput-object v2, v3, v4

    :cond_15
    :goto_d
    move v7, p1

    goto :goto_c

    :cond_16
    iput-object v3, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    iput-object v6, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    iget p1, p0, Lcom/prineside/luaj/LuaTable;->x:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/prineside/luaj/LuaTable;->x:I

    return-void
.end method

.method public final I(IILcom/prineside/luaj/LuaValue;)V
    .locals 3

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    if-gt v0, p2, :cond_1

    if-ge v0, p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v1, p3}, Lcom/prineside/luaj/LuaTable;->s(IILcom/prineside/luaj/LuaValue;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/prineside/luaj/LuaTable;->s(IILcom/prineside/luaj/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    move p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public arrayget([Lcom/prineside/luaj/LuaValue;I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public checktable()Lcom/prineside/luaj/LuaTable;
    .locals 0

    return-object p0
.end method

.method public concat(Lcom/prineside/luaj/LuaString;II)Lcom/prineside/luaj/LuaValue;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/Buffer;

    invoke-direct {v0}, Lcom/prineside/luaj/Buffer;-><init>()V

    if-gt p2, p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p3, :cond_0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/luaj/Buffer;->tostring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public entry(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaTable;->v(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public eq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->getmetatable()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    invoke-interface {v3}, Lcom/prineside/luaj/Metatable;->toLuaValue()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-static {p0, v3, p1, v1}, Lcom/prineside/luaj/LuaValue;->eqmtcall(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public get(I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->rawget(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaValue;->j(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaValue;->j(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getmetatable()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/prineside/luaj/Metatable;->toLuaValue()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 3

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->z(Lcom/prineside/luaj/LuaValue;)V

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v1, v1

    if-lez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->A(Lcom/prineside/luaj/LuaValue;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    aget-object v1, v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/prineside/luaj/LuaTable$Slot;->find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    aget-object v1, p1, v0

    invoke-interface {v1, v2, p2}, Lcom/prineside/luaj/LuaTable$Slot;->set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p2

    aput-object p2, p1, v0

    return-void

    :cond_1
    invoke-interface {v1}, Lcom/prineside/luaj/LuaTable$Slot;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/prineside/luaj/Metatable;->useWeakValues()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaTable;->G(I)V

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/prineside/luaj/LuaTable;->q(ILcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaTable;->G(I)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->A(Lcom/prineside/luaj/LuaValue;)I

    move-result v0

    :cond_6
    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v1, :cond_7

    invoke-interface {v1, p1, p2}, Lcom/prineside/luaj/Metatable;->entry(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaTable;->v(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    aget-object v1, p2, v0

    if-eqz v1, :cond_8

    invoke-interface {v1, p1}, Lcom/prineside/luaj/LuaTable$Slot;->add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    :cond_8
    aput-object p1, p2, v0

    iget p1, p0, Lcom/prineside/luaj/LuaTable;->x:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prineside/luaj/LuaTable;->x:I

    :goto_2
    return-void
.end method

.method public inext(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->rawget(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public insert(ILcom/prineside/luaj/LuaValue;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    move-object p2, v0

    move p1, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public istable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keyCount()I
    .locals 3

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaTable;->next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public keys()[Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/prineside/luaj/LuaTable;->next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public len()Lcom/prineside/luaj/LuaValue;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->LEN:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->rawlen()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->len()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    return v0

    :cond_0
    new-instance v1, Lcom/prineside/luaj/LuaError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "table length is not an integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->rawlen()I

    move-result v0

    return v0
.end method

.method public next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 5

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v3, v3

    if-gt v0, v3, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v0, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key to \'next\' 1: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->A(Lcom/prineside/luaj/LuaValue;)I

    move-result v0

    iget-object v3, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    aget-object v3, v3, v0

    :goto_0
    if-eqz v3, :cond_4

    if-eqz v1, :cond_2

    invoke-interface {v3}, Lcom/prineside/luaj/LuaTable$Slot;->first()Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/prineside/luaj/LuaTable$StrongSlot;->toVarargs()Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v3, p1}, Lcom/prineside/luaj/LuaTable$Slot;->keyeq(Lcom/prineside/luaj/LuaValue;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v3}, Lcom/prineside/luaj/LuaTable$Slot;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v3

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid key to \'next\' 2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_5
    iget-object p1, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length p1, p1

    add-int/2addr p1, v2

    add-int v1, v0, p1

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v0, p1

    if-ge v1, v0, :cond_9

    aget-object v0, p1, v1

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v3, p1, v1}, Lcom/prineside/luaj/Metatable;->arrayget([Lcom/prineside/luaj/LuaValue;I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    array-length p1, p1

    sub-int/2addr v1, p1

    :goto_3
    iget-object p1, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v0, p1

    if-ge v1, v0, :cond_c

    aget-object p1, p1, v1

    :goto_4
    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/prineside/luaj/LuaTable$Slot;->first()Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/prineside/luaj/LuaTable$StrongSlot;->toVarargs()Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-interface {p1}, Lcom/prineside/luaj/LuaTable$Slot;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    goto :goto_4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public opttable(Lcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaTable;
    .locals 0

    return-object p0
.end method

.method public presize(I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v1, v0

    if-le p1, v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result p1

    shl-int p1, v1, p1

    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaTable;->H([Lcom/prineside/luaj/LuaValue;I)[Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    :cond_0
    return-void
.end method

.method public presize(II)V
    .locals 1

    const/4 v0, 0x2

    if-lez p2, :cond_0

    if-ge p2, v0, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 v0, 0x1

    if-lez p1, :cond_1

    invoke-static {p1}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result p1

    shl-int p1, v0, p1

    new-array p1, p1, [Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NOVALS:[Lcom/prineside/luaj/LuaValue;

    :goto_0
    iput-object p1, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    if-lez p2, :cond_2

    invoke-static {p2}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result p1

    shl-int p1, v0, p1

    new-array p1, p1, [Lcom/prineside/luaj/LuaTable$Slot;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/prineside/luaj/LuaTable;->A:[Lcom/prineside/luaj/LuaTable$Slot;

    :goto_1
    iput-object p1, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/luaj/LuaTable;->x:I

    return-void
.end method

.method public final q(ILcom/prineside/luaj/LuaValue;)Z
    .locals 3

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v1, v0

    if-gt p1, v1, :cond_2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Lcom/prineside/luaj/Metatable;->wrap(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    :cond_1
    :goto_0
    aput-object p2, v0, p1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final r()Z
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaTable;->x:I

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rawget(I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v1, v0

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    add-int/lit8 p1, p1, -0x1

    if-nez v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0, p1}, Lcom/prineside/luaj/Metatable;->arrayget([Lcom/prineside/luaj/LuaValue;I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_1
    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->B(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v2, v1

    if-gt v0, v2, :cond_2

    iget-object p1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-object p1, v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v1, v0}, Lcom/prineside/luaj/Metatable;->arrayget([Lcom/prineside/luaj/LuaValue;I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_1
    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->B(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawlen()I
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->x()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/prineside/luaj/LuaTable;->rawget(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->y()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    if-le v1, v0, :cond_2

    add-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaTable;->rawget(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    return v2
.end method

.method public rawset(ILcom/prineside/luaj/LuaValue;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->q(ILcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->hashset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_0
    return-void
.end method

.method public rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/prineside/luaj/LuaTable;->q(ILcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->hashset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/luaj/LuaTable$Slot;

    iput-object v0, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LuaTable;->x:I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/Metatable;

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    return-void
.end method

.method public remove(I)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->length()I

    move-result v0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    move p1, v1

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    :cond_3
    return-object v0
.end method

.method public final s(IILcom/prineside/luaj/LuaValue;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->lt_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(ILcom/prineside/luaj/LuaValue;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->rawget(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/prineside/luaj/LuaValue;->n(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->rawset(ILcom/prineside/luaj/LuaValue;)V

    :cond_1
    return-void
.end method

.method public set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isvalidkey()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NEWINDEX:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->metatag(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isfunction()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->n(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_2
    return-void

    :cond_3
    new-instance p2, Lcom/prineside/luaj/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\') can not be used as a table index"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setmetatable(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/prineside/luaj/Metatable;->useWeakKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/prineside/luaj/Metatable;->useWeakValues()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->m(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Metatable;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/prineside/luaj/Metatable;->useWeakKeys()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/prineside/luaj/Metatable;->useWeakValues()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eq v3, v1, :cond_5

    :cond_4
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/LuaTable;->G(I)V

    :cond_5
    return-object p0
.end method

.method public sort(Lcom/prineside/luaj/LuaValue;)V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->len()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->tolong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/prineside/luaj/Metatable;->useWeakValues()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->w()V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaTable;->C(ILcom/prineside/luaj/LuaValue;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lcom/prineside/luaj/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "array too big: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->len()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->tolong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/prineside/luaj/LuaTable$Slot;->first()Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-interface {v2}, Lcom/prineside/luaj/LuaTable$Slot;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public toLuaValue()Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string v0, "table"

    return-object v0
.end method

.method public final u([I)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x1f

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v6, v5

    if-le v3, v6, :cond_0

    goto :goto_2

    :cond_0
    array-length v5, v5

    shl-int v6, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-gt v3, v5, :cond_2

    iget-object v7, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v7, v3

    if-eqz v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    move v3, v8

    goto :goto_1

    :cond_2
    aput v6, p1, v2

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v2, v2, v0

    :goto_3
    if-eqz v2, :cond_5

    const v3, 0x7fffffff

    invoke-interface {v2, v3}, Lcom/prineside/luaj/LuaTable$Slot;->arraykey(I)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v3}, Lcom/prineside/luaj/LuaTable;->F(I)I

    move-result v3

    aget v5, p1, v3

    add-int/2addr v5, v1

    aput v5, p1, v3

    add-int/lit8 v4, v4, 0x1

    :cond_4
    invoke-interface {v2}, Lcom/prineside/luaj/LuaTable$Slot;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v2

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return v4
.end method

.method public unpack()Lcom/prineside/luaj/Varargs;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->rawlen()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/prineside/luaj/LuaTable;->unpack(II)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public unpack(I)Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable;->rawlen()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/LuaTable;->unpack(II)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public unpack(II)Lcom/prineside/luaj/Varargs;
    .locals 3

    if-ge p2, p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_0
    sub-int v0, p2, p1

    if-ltz v0, :cond_7

    const v1, 0xffffff

    if-ge v0, v1, :cond_6

    const/4 v0, 0x1

    add-int/2addr p2, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    if-gez p2, :cond_1

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_1
    :try_start_0
    new-array v0, p2, [Lcom/prineside/luaj/LuaValue;

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2

    add-int v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    aput-object v1, v0, p2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lcom/prineside/luaj/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "too many results to unpack [out of memory]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_6
    new-instance p1, Lcom/prineside/luaj/LuaError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many results to unpack: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (max is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/prineside/luaj/LuaError;

    const-string p2, "too many results to unpack: greater 2147483647"

    invoke-direct {p1, p2}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public useWeakKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useWeakValues()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    invoke-interface {v2, v1, v0}, Lcom/prineside/luaj/Metatable;->arrayget([Lcom/prineside/luaj/LuaValue;I)Lcom/prineside/luaj/LuaValue;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public wrap(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/luaj/LuaValue$NillableSerializer;->writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Lcom/prineside/luaj/LuaValue;)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/luaj/LuaTable;->x:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->y:Lcom/prineside/luaj/Metatable;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->u:[Lcom/prineside/luaj/LuaValue;

    array-length v0, v0

    return v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v0, v0

    return v0
.end method

.method public final z(Lcom/prineside/luaj/LuaValue;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    array-length v0, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable;->A(Lcom/prineside/luaj/LuaValue;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    aget-object v1, v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/prineside/luaj/LuaTable$Slot;->find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/prineside/luaj/LuaTable;->w:[Lcom/prineside/luaj/LuaTable$Slot;

    aget-object v1, p1, v0

    invoke-interface {v1, v2}, Lcom/prineside/luaj/LuaTable$Slot;->remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v1

    aput-object v1, p1, v0

    iget p1, p0, Lcom/prineside/luaj/LuaTable;->x:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/prineside/luaj/LuaTable;->x:I

    return-void

    :cond_0
    invoke-interface {v1}, Lcom/prineside/luaj/LuaTable$Slot;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method
