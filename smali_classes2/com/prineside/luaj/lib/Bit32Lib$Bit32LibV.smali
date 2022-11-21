.class public final Lcom/prineside/luaj/lib/Bit32Lib$Bit32LibV;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/Bit32Lib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bit32LibV"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 5

    iget v0, p0, Lcom/prineside/luaj/lib/LibFunction;->u:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :pswitch_0
    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v1

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result p1

    invoke-static {v0, v2, v1, p1}, Lcom/prineside/luaj/lib/Bit32Lib;->C(IIII)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v2

    invoke-virtual {p1, v1, v3}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/prineside/luaj/lib/Bit32Lib;->z(III)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1}, Lcom/prineside/luaj/lib/Bit32Lib;->y(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p1}, Lcom/prineside/luaj/lib/Bit32Lib;->x(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p1}, Lcom/prineside/luaj/lib/Bit32Lib;->w(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p1}, Lcom/prineside/luaj/lib/Bit32Lib;->v(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p1}, Lcom/prineside/luaj/lib/Bit32Lib;->t(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
