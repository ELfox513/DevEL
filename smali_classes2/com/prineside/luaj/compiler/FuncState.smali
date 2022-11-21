.class public Lcom/prineside/luaj/compiler/FuncState;
.super Lcom/prineside/luaj/compiler/Constants;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/compiler/FuncState$BlockCnt;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/Prototype;

.field public b:Ljava/util/Hashtable;

.field public c:Lcom/prineside/luaj/compiler/FuncState;

.field public d:Lcom/prineside/luaj/compiler/LexState;

.field public e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

.field public f:I

.field public g:I

.field public h:Lcom/prineside/luaj/compiler/IntPtr;

.field public i:I

.field public j:I

.field public k:I

.field public l:S

.field public m:S

.field public n:S

.field public o:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/compiler/Constants;-><init>()V

    return-void
.end method

.method public static S0(Lcom/prineside/luaj/compiler/FuncState;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/compiler/LexState$expdesc;I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->M0(Lcom/prineside/luaj/LuaString;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 p1, 0x7

    invoke-virtual {p2, p1, v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    if-nez p3, :cond_1

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/FuncState;->t0(I)V

    :cond_1
    return p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->L0(Lcom/prineside/luaj/LuaString;)I

    move-result p3

    if-gez p3, :cond_4

    iget-object p3, p0, Lcom/prineside/luaj/compiler/FuncState;->c:Lcom/prineside/luaj/compiler/FuncState;

    invoke-static {p3, p1, p2, v0}, Lcom/prineside/luaj/compiler/FuncState;->S0(Lcom/prineside/luaj/compiler/FuncState;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/compiler/LexState$expdesc;I)I

    move-result p3

    if-nez p3, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/compiler/FuncState;->w0(Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result p3

    :cond_4
    const/16 p0, 0x8

    invoke-virtual {p2, p0, p3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    return p0
.end method

.method public static V0(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public A(II)I
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/FuncState;->P()V

    iget-object v1, v0, Lcom/prineside/luaj/Prototype;->code:[I

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    if-le v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/prineside/luaj/compiler/Constants;->n([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/Prototype;->code:[I

    :cond_1
    iget-object v1, v0, Lcom/prineside/luaj/Prototype;->code:[I

    iget v2, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    aput p1, v1, v2

    iget-object p1, v0, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    if-eqz p1, :cond_2

    add-int/lit8 v1, v2, 0x1

    array-length v3, p1

    if-le v1, v3, :cond_3

    :cond_2
    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lcom/prineside/luaj/compiler/Constants;->n([II)[I

    move-result-object p1

    iput-object p1, v0, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    :cond_3
    iget-object p1, v0, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    iget v0, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    aput p2, p1, v0

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    return v0
.end method

.method public A0(II)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->f0(I)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v2, Lcom/prineside/luaj/Prototype;->code:[I

    aget v2, v2, p1

    invoke-static {v2}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v2, Lcom/prineside/luaj/Prototype;->code:[I

    aget v2, v2, p1

    invoke-static {v2}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v2, Lcom/prineside/luaj/Prototype;->code:[I

    aget v2, v2, p1

    invoke-static {v2}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v2

    if-lt v2, p2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v2, Lcom/prineside/luaj/Prototype;->code:[I

    invoke-static {v2, p1, p2}, Lcom/prineside/luaj/compiler/Constants;->e([III)V

    move p1, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public B(IIII)I
    .locals 3

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->getOpMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->getBMode(I)I

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->getCMode(I)I

    move-result v0

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_3
    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-static {p1, p2, p3, p4}, Lcom/prineside/luaj/compiler/Constants;->a(IIII)I

    move-result p1

    iget-object p2, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget p2, p2, Lcom/prineside/luaj/compiler/LexState;->c:I

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/compiler/FuncState;->A(II)I

    move-result p1

    return p1
.end method

.method public B0(II)V
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    goto :goto_1

    :cond_0
    if-ge p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    const/16 v0, 0xff

    invoke-virtual {p0, p1, p2, v0, p2}, Lcom/prineside/luaj/compiler/FuncState;->C0(IIII)V

    :goto_1
    return-void
.end method

.method public C(III)I
    .locals 4

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->getOpMode(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->getOpMode(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->getCMode(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    if-ltz p3, :cond_3

    const v0, 0x3ffff

    if-gt p3, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-static {p1, p2, p3}, Lcom/prineside/luaj/compiler/Constants;->b(III)I

    move-result p1

    iget-object p2, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget p2, p2, Lcom/prineside/luaj/compiler/LexState;->c:I

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/compiler/FuncState;->A(II)I

    move-result p1

    return p1
.end method

.method public C0(IIII)V
    .locals 2

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->f0(I)I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lcom/prineside/luaj/compiler/FuncState;->D0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/compiler/FuncState;->Z(II)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/prineside/luaj/compiler/FuncState;->Z(II)V

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D(III)I
    .locals 1

    const v0, 0x1ffff

    add-int/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->C(III)I

    move-result p1

    return p1
.end method

.method public D0(II)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->g0(I)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xff

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result v0

    if-eq p2, v0, :cond_1

    invoke-static {p1, p2}, Lcom/prineside/luaj/compiler/Constants;->d(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x1b

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v2

    invoke-static {v2}, Lcom/prineside/luaj/Lua;->GETARG_C(I)I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Lcom/prineside/luaj/compiler/Constants;->a(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/compiler/InstructionPtr;->b(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public E(II)I
    .locals 2

    const v0, 0x3ffff

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/compiler/FuncState;->C(III)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/prineside/luaj/compiler/FuncState;->C(III)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->I(I)I

    return p1
.end method

.method public E0(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/FuncState;->h0()I

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->h:Lcom/prineside/luaj/compiler/IntPtr;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->K(Lcom/prineside/luaj/compiler/IntPtr;I)V

    return-void
.end method

.method public F(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/FuncState;->h0()I

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    move-result p1

    return p1
.end method

.method public F0(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V
    .locals 6

    const/4 v0, -0x1

    const/16 v1, 0x1a

    const/16 v2, 0x19

    const/16 v3, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {v5}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget p1, p1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object p1, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget-object p4, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget p4, p4, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, p1, p4}, Lcom/prineside/luaj/compiler/FuncState;->K(Lcom/prineside/luaj/compiler/IntPtr;I)V

    invoke-virtual {p2, p3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->setvalue(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget p1, p1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object p1, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget-object p4, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget p4, p4, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, p1, p4}, Lcom/prineside/luaj/compiler/FuncState;->K(Lcom/prineside/luaj/compiler/IntPtr;I)V

    invoke-virtual {p2, p3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->setvalue(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, v1, v5, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->H(IILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, v2, v5, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->H(IILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v1, v4, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->H(IILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, v2, v4, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->H(IILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->H(IILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, v3, v5, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->H(IILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->Y(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget p1, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v0, 0x16

    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->d0(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result p1

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->d0(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result p4

    invoke-static {p4}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result p4

    sub-int/2addr p4, v4

    if-ne p1, p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object p1

    iget-object p4, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p4, p4, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-static {p1, p4}, Lcom/prineside/luaj/compiler/Constants;->f(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    iput v1, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    iget-object p1, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-object p2, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p2, p2, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iput p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_3

    :pswitch_9
    const/16 p1, 0x12

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_3

    :pswitch_a
    const/16 p1, 0x11

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_3

    :pswitch_b
    const/16 p1, 0x10

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_3

    :pswitch_c
    const/16 p1, 0xf

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_3

    :pswitch_d
    const/16 p1, 0xe

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_3

    :pswitch_e
    const/16 p1, 0xd

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->M(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x13

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v2

    if-le v2, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :goto_1
    iget-object p3, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    move-result p1

    iput p1, p3, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    const/16 p1, 0xb

    iput p1, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    invoke-virtual {p0, p4}, Lcom/prineside/luaj/compiler/FuncState;->a0(I)V

    return-void
.end method

.method public G0(ILcom/prineside/luaj/compiler/LexState$expdesc;I)V
    .locals 3

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    const/16 p1, 0x15

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->J(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/prineside/luaj/compiler/LexState$expdesc;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->nval()Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->neg()Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->setNval(Lcom/prineside/luaj/LuaValue;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    const/16 p1, 0x13

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/prineside/luaj/compiler/FuncState;->G(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    :goto_0
    return-void
.end method

.method public H(IILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v0

    invoke-virtual {p0, p4}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v1

    invoke-virtual {p0, p4}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    if-nez p2, :cond_0

    const/16 p4, 0x18

    if-eq p1, p4, :cond_0

    const/4 p2, 0x1

    move v2, v1

    move v1, v0

    move v0, v2

    :cond_0
    iget-object p4, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->L(IIII)I

    move-result p1

    iput p1, p4, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    const/16 p1, 0xa

    iput p1, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    return-void
.end method

.method public H0(I)V
    .locals 1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->D0(II)Z

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->f0(I)I

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I(I)I
    .locals 1

    const v0, 0x3ffffff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    const/16 v0, 0x27

    invoke-static {v0, p1}, Lcom/prineside/luaj/compiler/Constants;->c(II)I

    move-result p1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->A(II)I

    move-result p1

    return p1
.end method

.method public I0(I)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    iget-short v2, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    :goto_0
    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->i0(I)Lcom/prineside/luaj/LocVars;

    move-result-object v0

    iget v1, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    iput v1, v0, Lcom/prineside/luaj/LocVars;->endpc:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    iput v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iput v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    goto :goto_0

    :cond_0
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->N(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    const/16 v3, 0x14

    iget v4, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, v3, v2, v4, v2}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    move-result v2

    iput v2, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iput v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->o0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :goto_0
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v1, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iget-object v2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget v3, v2, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iput v3, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iput v1, v2, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->H0(I)V

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget p1, p1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->H0(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public J0(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->y(I)V

    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    return-void
.end method

.method public K(Lcom/prineside/luaj/compiler/IntPtr;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    if-ne v1, v0, :cond_1

    iput p2, p1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/FuncState;->f0(I)I

    move-result p1

    if-eq p1, v0, :cond_2

    move v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/prineside/luaj/compiler/FuncState;->Z(II)V

    :goto_1
    return-void
.end method

.method public K0(II)V
    .locals 2

    add-int/lit8 p2, p2, 0x1

    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    return-void
.end method

.method public L(IIII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/FuncState;->p0()I

    move-result p1

    return p1
.end method

.method public L0(Lcom/prineside/luaj/LuaString;)I
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    const/4 v1, 0x0

    :goto_0
    iget-short v2, p0, Lcom/prineside/luaj/compiler/FuncState;->n:S

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, p1}, Lcom/prineside/luaj/LuaString;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public M(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)Z
    .locals 4

    invoke-virtual {p2}, Lcom/prineside/luaj/compiler/LexState$expdesc;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->nval()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    sget-object v2, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    invoke-virtual {v0, v2}, Lcom/prineside/luaj/LuaValue;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->nval()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    iget-object p3, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {p3}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->nval()Lcom/prineside/luaj/LuaValue;

    move-result-object p3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    return v1

    :pswitch_2
    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->neg()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, p3}, Lcom/prineside/luaj/LuaValue;->pow(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, p3}, Lcom/prineside/luaj/LuaValue;->mod(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, p3}, Lcom/prineside/luaj/LuaValue;->div(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, p3}, Lcom/prineside/luaj/LuaValue;->mul(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0, p3}, Lcom/prineside/luaj/LuaValue;->sub(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0, p3}, Lcom/prineside/luaj/LuaValue;->add(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-eqz p3, :cond_3

    return v1

    :cond_3
    iget-object p2, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {p2, p1}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->setNval(Lcom/prineside/luaj/LuaValue;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public M0(Lcom/prineside/luaj/LuaString;)I
    .locals 2

    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->i0(I)Lcom/prineside/luaj/LocVars;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/luaj/LocVars;->varname:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaString;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public N(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 2

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    iget-short v1, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/prineside/luaj/compiler/FuncState;->O(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    :cond_0
    return-void
.end method

.method public N0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iput v0, p2, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    const/4 p2, 0x6

    iput p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    return-void
.end method

.method public O(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    if-eqz v0, :cond_1

    const/16 p1, 0xa

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    if-eq p2, v0, :cond_4

    invoke-virtual {p0, v2, p2, v0, v2}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    goto :goto_2

    :pswitch_1
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->nval()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->z0(Lcom/prineside/luaj/LuaValue;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/prineside/luaj/compiler/FuncState;->E(II)I

    goto :goto_2

    :pswitch_2
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, p2, v0}, Lcom/prineside/luaj/compiler/FuncState;->E(II)I

    goto :goto_2

    :pswitch_3
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v3, p2, v1, v2}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p2, v1}, Lcom/prineside/luaj/compiler/FuncState;->x0(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/prineside/luaj/compiler/Constants;->d(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    :cond_4
    :goto_2
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iput p2, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    const/4 p2, 0x6

    iput p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public O0(III)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x32

    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-static {p3}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    const/16 p3, 0x1ff

    const/16 v3, 0x24

    if-gt p2, p3, :cond_2

    invoke-virtual {p0, v3, p1, v2, p2}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    iget-object p3, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget p3, p3, Lcom/prineside/luaj/compiler/LexState;->c:I

    invoke-virtual {p0, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->A(II)I

    :goto_2
    add-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    return-void
.end method

.method public P()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->h:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iget v1, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    const/16 v2, 0xff

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/prineside/luaj/compiler/FuncState;->C0(IIII)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->h:Lcom/prineside/luaj/compiler/IntPtr;

    const/4 v1, -0x1

    iput v1, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    return-void
.end method

.method public P0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->R0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    return-void
.end method

.method public Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 6

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, 0x6

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    const/16 v3, 0x8

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-short v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a:S

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->c0(I)V

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-short v3, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->c:S

    if-ne v3, v2, :cond_2

    iget-short v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b:S

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->c0(I)V

    const/4 v1, 0x7

    :cond_2
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-short v2, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b:S

    iget-short v3, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a:S

    invoke-virtual {p0, v1, v5, v2, v3}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    move-result v1

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iput v4, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    const/4 v1, 0x5

    iget v2, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, v1, v5, v2, v5}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    move-result v1

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iput v4, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    goto :goto_0

    :cond_4
    iput v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    :goto_0
    return-void
.end method

.method public Q0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 2

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    iput v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->d0(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result p1

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result p1

    iput p1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/prineside/luaj/compiler/Constants;->f(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    const/16 v0, 0xb

    iput v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    :cond_1
    :goto_0
    return-void
.end method

.method public R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V
    .locals 2

    iput-boolean p2, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->f:Z

    iget-short p2, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    iput-short p2, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    int-to-short v1, v1

    iput-short v1, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->b:S

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    int-to-short v0, v0

    iput-short v0, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->c:S

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->e:Z

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iput-object v1, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->a:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iput-object p1, p0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iget-short p1, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    return-void
.end method

.method public R0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V
    .locals 3

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object p1

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/prineside/luaj/compiler/Constants;->h(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object v0

    add-int/2addr p2, v1

    invoke-static {v0, p2}, Lcom/prineside/luaj/compiler/Constants;->f(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object p1

    iget-short p2, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    invoke-static {p1, p2}, Lcom/prineside/luaj/compiler/Constants;->d(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public S(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget v0, v0, Lcom/prineside/luaj/Prototype;->linedefined:I

    const-string v1, " "

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main function has more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "function at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget v3, v3, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    return-void
.end method

.method public T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Y(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v1, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->nval()Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/FuncState;->z0(Lcom/prineside/luaj/LuaValue;)I

    move-result v2

    iput v2, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iput v3, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    :cond_1
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    if-gt v0, v1, :cond_5

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->RKASK(I)I

    move-result p1

    return p1

    :cond_2
    iget v5, p0, Lcom/prineside/luaj/compiler/FuncState;->i:I

    if-gt v5, v1, :cond_5

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/FuncState;->y0()I

    move-result v0

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/FuncState;->v(Z)I

    move-result v0

    :goto_1
    iput v0, v1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iput v3, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->RKASK(I)I

    move-result p1

    return p1

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result p1

    return p1
.end method

.method public T0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 5

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/4 v2, 0x0

    const/16 v3, 0x9

    const/16 v4, 0x8

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_0

    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-short v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->c:S

    if-ne v0, v1, :cond_1

    const/16 v4, 0xa

    :cond_1
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v0

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-short v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b:S

    iget-short p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a:S

    invoke-virtual {p0, v4, v1, p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v0

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, v3, v0, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    :goto_0
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, p2, p1}, Lcom/prineside/luaj/compiler/FuncState;->X(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    return-void
.end method

.method public U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    return p1

    :cond_0
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iget-short v1, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->X(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    return p1
.end method

.method public U0(Lcom/prineside/luaj/LuaString;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->u(Lcom/prineside/luaj/LuaValue;)I

    move-result p1

    return p1
.end method

.method public V(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 2

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    :cond_1
    return-void
.end method

.method public W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    iget-short v1, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/prineside/luaj/compiler/FuncState;->X(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    return-void
.end method

.method public X(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/compiler/FuncState;->O(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget-object v2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, v0, v2}, Lcom/prineside/luaj/compiler/FuncState;->K(Lcom/prineside/luaj/compiler/IntPtr;I)V

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->a()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->v0(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 v4, -0x1

    goto :goto_2

    :cond_2
    :goto_0
    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/FuncState;->p0()I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v1, v3}, Lcom/prineside/luaj/compiler/FuncState;->F(III)I

    move-result v4

    invoke-virtual {p0, p2, v3, v1}, Lcom/prineside/luaj/compiler/FuncState;->F(III)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/FuncState;->h0()I

    move-result v0

    iget-object v3, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v3, v3, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, v3, v0, p2, v4}, Lcom/prineside/luaj/compiler/FuncState;->C0(IIII)V

    iget-object v3, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget v3, v3, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, v3, v0, p2, v1}, Lcom/prineside/luaj/compiler/FuncState;->C0(IIII)V

    :cond_4
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iput v2, v1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iput v2, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iput p2, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    const/4 p2, 0x6

    iput p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    return-void
.end method

.method public Y(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :goto_0
    return-void
.end method

.method public Z(II)V
    .locals 3

    new-instance v0, Lcom/prineside/luaj/compiler/InstructionPtr;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v1, v1, Lcom/prineside/luaj/Prototype;->code:[I

    invoke-direct {v0, v1, p1}, Lcom/prineside/luaj/compiler/InstructionPtr;-><init>([II)V

    const/4 v1, 0x1

    add-int/2addr p1, v1

    sub-int p1, p2, p1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const v1, 0x1ffff

    if-le p2, v1, :cond_1

    iget-object p2, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    const-string v1, "control structure too long"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0, p1}, Lcom/prineside/luaj/compiler/Constants;->i(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    return-void
.end method

.method public a0(I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    iget v1, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method public b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 2

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->c0(I)V

    :cond_0
    return-void
.end method

.method public c0(I)V
    .locals 2

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    if-lt p1, v0, :cond_1

    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    :cond_1
    return-void
.end method

.method public d0(Lcom/prineside/luaj/compiler/LexState$expdesc;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->code:[I

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    aget p1, v0, p1

    return p1
.end method

.method public e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/compiler/InstructionPtr;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v1, v1, Lcom/prineside/luaj/Prototype;->code:[I

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-direct {v0, v1, p1}, Lcom/prineside/luaj/compiler/InstructionPtr;-><init>([II)V

    return-object v0
.end method

.method public f0(I)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->code:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GETARG_sBx(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v0

    return p1
.end method

.method public g0(I)Lcom/prineside/luaj/compiler/InstructionPtr;
    .locals 3

    new-instance v0, Lcom/prineside/luaj/compiler/InstructionPtr;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v1, v1, Lcom/prineside/luaj/Prototype;->code:[I

    invoke-direct {v0, v1, p1}, Lcom/prineside/luaj/compiler/InstructionPtr;-><init>([II)V

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object p1, v0, Lcom/prineside/luaj/compiler/InstructionPtr;->a:[I

    iget v2, v0, Lcom/prineside/luaj/compiler/InstructionPtr;->b:I

    sub-int/2addr v2, v1

    aget p1, p1, v2

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result p1

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->testTMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/prineside/luaj/compiler/InstructionPtr;

    iget-object v2, v0, Lcom/prineside/luaj/compiler/InstructionPtr;->a:[I

    iget v0, v0, Lcom/prineside/luaj/compiler/InstructionPtr;->b:I

    sub-int/2addr v0, v1

    invoke-direct {p1, v2, v0}, Lcom/prineside/luaj/compiler/InstructionPtr;-><init>([II)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public h0()I
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    iput v0, p0, Lcom/prineside/luaj/compiler/FuncState;->g:I

    return v0
.end method

.method public i0(I)Lcom/prineside/luaj/LocVars;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->a:[Lcom/prineside/luaj/compiler/LexState$Vardesc;

    iget v1, p0, Lcom/prineside/luaj/compiler/FuncState;->k:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    iget-short p1, p1, Lcom/prineside/luaj/compiler/LexState$Vardesc;->a:S

    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->l:S

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public j0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->q0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/compiler/FuncState;->K(Lcom/prineside/luaj/compiler/IntPtr;I)V

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iput v1, p1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    return-void
.end method

.method public k0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->q0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->o0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    invoke-virtual {p0, v1, v0}, Lcom/prineside/luaj/compiler/FuncState;->K(Lcom/prineside/luaj/compiler/IntPtr;I)V

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iput v2, p1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    return-void
.end method

.method public l0(I)Z
    .locals 1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public m0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    int-to-short v1, v1

    iput-short v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b:S

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result p2

    int-to-short p2, p2

    iput-short p2, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a:S

    iget p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Lcom/prineside/luaj/compiler/FuncState;->V0(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x7

    :goto_2
    int-to-short v0, v0

    iput-short v0, p2, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->c:S

    const/16 p2, 0x9

    iput p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    return-void
.end method

.method public n0(ILcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/prineside/luaj/compiler/LexState$expdesc;->c()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->j0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/FuncState;->k0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 4

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->g0(I)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->testTMode(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v0

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v0

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-static {p1, v1}, Lcom/prineside/luaj/compiler/Constants;->d(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    return-void
.end method

.method public p0()I
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->h:Lcom/prineside/luaj/compiler/IntPtr;

    iget v1, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    new-instance v0, Lcom/prineside/luaj/compiler/IntPtr;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Lcom/prineside/luaj/compiler/FuncState;->D(III)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/prineside/luaj/compiler/IntPtr;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->K(Lcom/prineside/luaj/compiler/IntPtr;I)V

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    return v0
.end method

.method public q0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)I
    .locals 3

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->d0(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    iget p1, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    const/16 p1, 0x1b

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/prineside/luaj/compiler/FuncState;->L(IIII)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->N(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->b0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    const/16 v0, 0x1c

    const/16 v1, 0xff

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/prineside/luaj/compiler/FuncState;->L(IIII)I

    move-result p1

    return p1
.end method

.method public r0(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V
    .locals 3

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->e:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->l0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->P0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iget v1, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/luaj/compiler/FuncState;->O0(III)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :cond_2
    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iget v1, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->e:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/prineside/luaj/compiler/FuncState;->O0(III)V

    :goto_0
    return-void
.end method

.method public s0()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->a:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/FuncState;->p0()I

    move-result v1

    iget-short v2, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    invoke-virtual {p0, v1, v2}, Lcom/prineside/luaj/compiler/FuncState;->A0(II)V

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    :cond_0
    iget-boolean v1, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    invoke-virtual {v1}, Lcom/prineside/luaj/compiler/LexState;->D()V

    :cond_1
    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->a:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iput-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/FuncState;->I0(I)V

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    iget-short v2, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-short v1, p0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    iput-short v1, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v2, v1, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-short v3, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->b:S

    iput v3, v2, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    iget-object v3, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->a:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->u0(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;)V

    goto :goto_1

    :cond_3
    iget-short v0, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->c:S

    iget v3, v2, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    if-ge v0, v3, :cond_4

    iget-object v2, v2, Lcom/prineside/luaj/compiler/LexState$Dyndata;->c:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/prineside/luaj/compiler/LexState;->r1(Lcom/prineside/luaj/compiler/LexState$Labeldesc;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public t0(I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    :goto_0
    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    if-le v1, p1, :cond_0

    iget-object v0, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->a:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->e:Z

    return-void
.end method

.method public u(Lcom/prineside/luaj/LuaValue;)I
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->b:Ljava/util/Hashtable;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/prineside/luaj/compiler/FuncState;->i:I

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->b:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v1, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/prineside/luaj/compiler/FuncState;->i:I

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    if-lt v3, v4, :cond_3

    :cond_2
    iget v3, p0, Lcom/prineside/luaj/compiler/FuncState;->i:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/prineside/luaj/compiler/Constants;->p([Lcom/prineside/luaj/LuaValue;I)[Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    iput-object v2, v1, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    :cond_3
    iget-object v1, v1, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    iget v2, p0, Lcom/prineside/luaj/compiler/FuncState;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/luaj/compiler/FuncState;->i:I

    aput-object p1, v1, v2

    return v0
.end method

.method public u0(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;)V
    .locals 5

    iget-short v0, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->c:S

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v1, v1, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v1, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->c:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v2, v2, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    iget-short v3, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->d:S

    iget-short v4, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    if-le v3, v4, :cond_2

    iget-boolean v3, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->e:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->b:I

    invoke-virtual {p0, v3, v4}, Lcom/prineside/luaj/compiler/FuncState;->A0(II)V

    :cond_1
    iget-short v3, p1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    iput-short v3, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->d:S

    :cond_2
    iget-object v2, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    invoke-virtual {v2, v0}, Lcom/prineside/luaj/compiler/LexState;->a0(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public v(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->u(Lcom/prineside/luaj/LuaValue;)I

    move-result p1

    return p1
.end method

.method public v0(I)Z
    .locals 2

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->g0(I)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/InstructionPtr;->a()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->f0(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public w(IILjava/lang/String;)V
    .locals 0

    if-le p1, p2, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/prineside/luaj/compiler/FuncState;->S(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public w0(Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/compiler/LexState$expdesc;)I
    .locals 6

    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->n:S

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    const-string v3, "upvalues"

    invoke-virtual {p0, v0, v2, v3}, Lcom/prineside/luaj/compiler/FuncState;->w(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    if-eqz v2, :cond_0

    iget-short v3, p0, Lcom/prineside/luaj/compiler/FuncState;->n:S

    add-int/2addr v3, v1

    array-length v4, v2

    if-le v3, v4, :cond_2

    :cond_0
    iget-short v3, p0, Lcom/prineside/luaj/compiler/FuncState;->n:S

    if-lez v3, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v3}, Lcom/prineside/luaj/compiler/Constants;->r([Lcom/prineside/luaj/Upvaldesc;I)[Lcom/prineside/luaj/Upvaldesc;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    :cond_2
    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    iget-short v2, p0, Lcom/prineside/luaj/compiler/FuncState;->n:S

    new-instance v3, Lcom/prineside/luaj/Upvaldesc;

    iget v4, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object p2, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p2, p2, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-direct {v3, p1, v1, p2}, Lcom/prineside/luaj/Upvaldesc;-><init>(Lcom/prineside/luaj/LuaString;ZI)V

    aput-object v3, v0, v2

    iget-short p1, p0, Lcom/prineside/luaj/compiler/FuncState;->n:S

    add-int/lit8 p2, p1, 0x1

    int-to-short p2, p2

    iput-short p2, p0, Lcom/prineside/luaj/compiler/FuncState;->n:S

    return p1
.end method

.method public x([Lcom/prineside/luaj/compiler/LexState$Labeldesc;ILcom/prineside/luaj/LuaString;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iget-short v0, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->b:S

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p3, v1}, Lcom/prineside/luaj/LuaString;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iget-object v1, v1, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already defined on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    iget v3, v3, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    invoke-virtual {v2, v1}, Lcom/prineside/luaj/compiler/LexState;->Y0(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x0(II)V
    .locals 5

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    iget v2, p0, Lcom/prineside/luaj/compiler/FuncState;->g:I

    const/4 v3, 0x4

    if-le v1, v2, :cond_4

    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v2, Lcom/prineside/luaj/Prototype;->code:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result v1

    add-int/2addr v1, v2

    if-gt v2, p1, :cond_0

    add-int/lit8 v4, v1, 0x1

    if-le p1, v4, :cond_1

    :cond_0
    if-gt p1, v2, :cond_4

    add-int/lit8 v4, v0, 0x1

    if-gt v2, v4, :cond_4

    :cond_1
    if-ge v2, p1, :cond_2

    move p1, v2

    :cond_2
    if-le v1, v0, :cond_3

    move v0, v1

    :cond_3
    new-instance p2, Lcom/prineside/luaj/compiler/InstructionPtr;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v1, v1, Lcom/prineside/luaj/Prototype;->code:[I

    iget v2, p0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p2, v1, v2}, Lcom/prineside/luaj/compiler/InstructionPtr;-><init>([II)V

    invoke-static {p2, p1}, Lcom/prineside/luaj/compiler/Constants;->d(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Lcom/prineside/luaj/compiler/Constants;->f(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    return-void

    :cond_4
    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v3, p1, p2, v0}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    return-void
.end method

.method public y(I)V
    .locals 2

    iget-short v0, p0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget p1, p1, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    if-le v0, p1, :cond_1

    const/16 p1, 0x96

    if-lt v0, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    const-string v1, "function or expression too complex"

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iput v0, p1, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    :cond_1
    return-void
.end method

.method public y0()I
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->u(Lcom/prineside/luaj/LuaValue;)I

    move-result v0

    return v0
.end method

.method public z(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V
    .locals 4

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    const/4 v1, 0x0

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->e:I

    const/16 v2, 0x32

    if-ne v0, v2, :cond_1

    iget-object v2, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget-object v2, v2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iget v3, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    invoke-virtual {p0, v2, v3, v0}, Lcom/prineside/luaj/compiler/FuncState;->O0(III)V

    iput v1, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->e:I

    :cond_1
    return-void
.end method

.method public z0(Lcom/prineside/luaj/LuaValue;)I
    .locals 6

    instance-of v0, p1, Lcom/prineside/luaj/LuaDouble;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-nez v5, :cond_0

    invoke-static {v2}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/FuncState;->u(Lcom/prineside/luaj/LuaValue;)I

    move-result p1

    return p1
.end method
