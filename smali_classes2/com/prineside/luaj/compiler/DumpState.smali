.class public Lcom/prineside/luaj/compiler/DumpState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ALLOW_INTEGER_CASTING:Z = false

.field public static final NUMBER_FORMAT_DEFAULT:I = 0x0

.field public static final NUMBER_FORMAT_FLOATS_OR_DOUBLES:I = 0x0

.field public static final NUMBER_FORMAT_INTS_ONLY:I = 0x1

.field public static final NUMBER_FORMAT_NUM_PATCH_INT32:I = 0x4


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Ljava/io/DataOutputStream;

.field public e:Z

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/luaj/compiler/DumpState;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/compiler/DumpState;->b:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/prineside/luaj/compiler/DumpState;->c:I

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    iput-boolean p2, p0, Lcom/prineside/luaj/compiler/DumpState;->e:Z

    iput v0, p0, Lcom/prineside/luaj/compiler/DumpState;->f:I

    return-void
.end method

.method public static dump(Lcom/prineside/luaj/Prototype;Ljava/io/OutputStream;Z)I
    .locals 1

    new-instance v0, Lcom/prineside/luaj/compiler/DumpState;

    invoke-direct {v0, p1, p2}, Lcom/prineside/luaj/compiler/DumpState;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/DumpState;->g()V

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/compiler/DumpState;->f(Lcom/prineside/luaj/Prototype;)V

    iget p0, v0, Lcom/prineside/luaj/compiler/DumpState;->f:I

    return p0
.end method

.method public static dump(Lcom/prineside/luaj/Prototype;Ljava/io/OutputStream;ZIZ)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "number format not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v2, Lcom/prineside/luaj/compiler/DumpState;

    invoke-direct {v2, p1, p2}, Lcom/prineside/luaj/compiler/DumpState;-><init>(Ljava/io/OutputStream;Z)V

    iput-boolean p4, v2, Lcom/prineside/luaj/compiler/DumpState;->a:Z

    iput p3, v2, Lcom/prineside/luaj/compiler/DumpState;->b:I

    if-ne p3, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    iput v0, v2, Lcom/prineside/luaj/compiler/DumpState;->c:I

    invoke-virtual {v2}, Lcom/prineside/luaj/compiler/DumpState;->g()V

    invoke-virtual {v2, p0}, Lcom/prineside/luaj/compiler/DumpState;->f(Lcom/prineside/luaj/Prototype;)V

    iget p0, v2, Lcom/prineside/luaj/compiler/DumpState;->f:I

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public b(Lcom/prineside/luaj/Prototype;)V
    .locals 3

    iget-object p1, p1, Lcom/prineside/luaj/Prototype;->code:[I

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/prineside/luaj/Prototype;)V
    .locals 9

    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->write(I)V

    check-cast v4, Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/DumpState;->i(Lcom/prineside/luaj/LuaString;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v5, p0, Lcom/prineside/luaj/compiler/DumpState;->b:I

    if-eqz v5, :cond_7

    if-eq v5, v6, :cond_4

    if-ne v5, v7, :cond_3

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->isint()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    goto/16 :goto_2

    :cond_2
    iget-object v5, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/prineside/luaj/compiler/DumpState;->e(D)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number format not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/luaj/compiler/DumpState;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-boolean v5, Lcom/prineside/luaj/compiler/DumpState;->ALLOW_INTEGER_CASTING:Z

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->isint()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not an integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/prineside/luaj/compiler/DumpState;->e(D)V

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/DumpState;->a(I)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    :goto_3
    if-ge v2, v0, :cond_b

    iget-object v1, p1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/DumpState;->f(Lcom/prineside/luaj/Prototype;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method public d(Lcom/prineside/luaj/Prototype;)V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/luaj/compiler/DumpState;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->i(Lcom/prineside/luaj/LuaString;)V

    :goto_0
    iget-boolean v0, p0, Lcom/prineside/luaj/compiler/DumpState;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    array-length v0, v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v3, p1, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/prineside/luaj/compiler/DumpState;->e:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    array-length v0, v0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_4

    iget-object v3, p1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/prineside/luaj/LocVars;->varname:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/DumpState;->i(Lcom/prineside/luaj/LuaString;)V

    iget v4, v3, Lcom/prineside/luaj/LocVars;->startpc:I

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    iget v3, v3, Lcom/prineside/luaj/LocVars;->endpc:I

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-boolean v0, p0, Lcom/prineside/luaj/compiler/DumpState;->e:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v0, v0

    :goto_5
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    :goto_6
    if-ge v1, v0, :cond_6

    iget-object v2, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/DumpState;->i(Lcom/prineside/luaj/LuaString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public e(D)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    iget-boolean v0, p0, Lcom/prineside/luaj/compiler/DumpState;->a:Z

    if-eqz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    :goto_0
    return-void
.end method

.method public f(Lcom/prineside/luaj/Prototype;)V
    .locals 1

    iget v0, p1, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    iget v0, p1, Lcom/prineside/luaj/Prototype;->lastlinedefined:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    iget v0, p1, Lcom/prineside/luaj/Prototype;->numparams:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->a(I)V

    iget v0, p1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->a(I)V

    iget v0, p1, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->a(I)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/DumpState;->b(Lcom/prineside/luaj/Prototype;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/DumpState;->c(Lcom/prineside/luaj/Prototype;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/DumpState;->j(Lcom/prineside/luaj/Prototype;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/DumpState;->d(Lcom/prineside/luaj/Prototype;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/prineside/luaj/LoadState;->LUA_SIGNATURE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    iget-boolean v1, p0, Lcom/prineside/luaj/compiler/DumpState;->a:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    iget v1, p0, Lcom/prineside/luaj/compiler/DumpState;->c:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    iget v1, p0, Lcom/prineside/luaj/compiler/DumpState;->b:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/prineside/luaj/LoadState;->LUAC_TAIL:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public h(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/luaj/compiler/DumpState;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public i(Lcom/prineside/luaj/LuaString;)V
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->len()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    iget-object v1, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/prineside/luaj/LuaString;->write(Ljava/io/DataOutputStream;II)V

    iget-object p1, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public j(Lcom/prineside/luaj/Prototype;)V
    .locals 4

    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/DumpState;->h(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    iget-object v3, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/prineside/luaj/Upvaldesc;->instack:Z

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/DumpState;->d:Ljava/io/DataOutputStream;

    iget-object v3, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/prineside/luaj/Upvaldesc;->idx:S

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
