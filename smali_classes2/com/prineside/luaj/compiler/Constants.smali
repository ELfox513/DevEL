.class public Lcom/prineside/luaj/compiler/Constants;
.super Lcom/prineside/luaj/Lua;
.source "SourceFile"


# static fields
.field public static final MAXSTACK:I = 0x96


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Lua;-><init>()V

    return-void
.end method

.method public static a(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x17

    const/high16 p2, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xe

    const p2, 0x7fc000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(III)I
    .locals 0

    shl-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0xe

    and-int/lit16 p1, p1, -0x4000

    or-int/2addr p0, p1

    return p0
.end method

.method public static c(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, -0x40

    or-int/2addr p0, p1

    return p0
.end method

.method public static d(Lcom/prineside/luaj/compiler/InstructionPtr;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    and-int/lit16 v0, v0, -0x3fc1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->b(I)V

    return-void
.end method

.method public static e([III)V
    .locals 1

    aget v0, p0, p1

    and-int/lit16 v0, v0, -0x3fc1

    shl-int/lit8 p2, p2, 0x6

    and-int/lit16 p2, p2, 0x3fc0

    or-int/2addr p2, v0

    aput p2, p0, p1

    return-void
.end method

.method public static f(Lcom/prineside/luaj/compiler/InstructionPtr;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    const v1, 0x7fffff

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x17

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->b(I)V

    return-void
.end method

.method public static g(Lcom/prineside/luaj/compiler/InstructionPtr;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x3fff

    shl-int/lit8 p1, p1, 0xe

    and-int/lit16 p1, p1, -0x4000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->b(I)V

    return-void
.end method

.method public static h(Lcom/prineside/luaj/compiler/InstructionPtr;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    const v1, -0x7fc001

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0xe

    const v1, 0x7fc000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->b(I)V

    return-void
.end method

.method public static i(Lcom/prineside/luaj/compiler/InstructionPtr;I)V
    .locals 1

    const v0, 0x1ffff

    add-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/prineside/luaj/compiler/Constants;->g(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    return-void
.end method

.method public static j(Lcom/prineside/luaj/compiler/InstructionPtr;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    and-int/lit8 v0, v0, -0x40

    shl-int/lit8 p1, p1, 0x0

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->b(I)V

    return-void
.end method

.method public static k(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/prineside/luaj/LuaError;

    const-string v0, "compiler assert failed"

    invoke-direct {p0, v0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l([Lcom/prineside/luaj/compiler/LexState$Labeldesc;I)[Lcom/prineside/luaj/compiler/LexState$Labeldesc;
    .locals 2

    const/4 v0, 0x2

    if-nez p0, :cond_0

    new-array p0, v0, [Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-ge v1, p1, :cond_1

    array-length p1, p0

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/prineside/luaj/compiler/Constants;->s([Lcom/prineside/luaj/compiler/LexState$Labeldesc;I)[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static m([CI)[C
    .locals 2

    new-array v0, p1, [C

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public static n([II)[I
    .locals 2

    new-array v0, p1, [I

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public static o([Lcom/prineside/luaj/LocVars;I)[Lcom/prineside/luaj/LocVars;
    .locals 2

    new-array v0, p1, [Lcom/prineside/luaj/LocVars;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public static p([Lcom/prineside/luaj/LuaValue;I)[Lcom/prineside/luaj/LuaValue;
    .locals 2

    new-array v0, p1, [Lcom/prineside/luaj/LuaValue;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public static q([Lcom/prineside/luaj/Prototype;I)[Lcom/prineside/luaj/Prototype;
    .locals 2

    new-array v0, p1, [Lcom/prineside/luaj/Prototype;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public static r([Lcom/prineside/luaj/Upvaldesc;I)[Lcom/prineside/luaj/Upvaldesc;
    .locals 2

    new-array v0, p1, [Lcom/prineside/luaj/Upvaldesc;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public static s([Lcom/prineside/luaj/compiler/LexState$Labeldesc;I)[Lcom/prineside/luaj/compiler/LexState$Labeldesc;
    .locals 2

    new-array v0, p1, [Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public static t([Lcom/prineside/luaj/compiler/LexState$Vardesc;I)[Lcom/prineside/luaj/compiler/LexState$Vardesc;
    .locals 2

    new-array v0, p1, [Lcom/prineside/luaj/compiler/LexState$Vardesc;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method
