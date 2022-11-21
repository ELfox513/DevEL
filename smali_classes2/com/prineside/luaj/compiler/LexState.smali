.class public Lcom/prineside/luaj/compiler/LexState;
.super Lcom/prineside/luaj/compiler/Constants;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/compiler/LexState$Token;,
        Lcom/prineside/luaj/compiler/LexState$Dyndata;,
        Lcom/prineside/luaj/compiler/LexState$SemInfo;,
        Lcom/prineside/luaj/compiler/LexState$expdesc;,
        Lcom/prineside/luaj/compiler/LexState$Vardesc;,
        Lcom/prineside/luaj/compiler/LexState$Labeldesc;,
        Lcom/prineside/luaj/compiler/LexState$ConsControl;,
        Lcom/prineside/luaj/compiler/LexState$Priority;,
        Lcom/prineside/luaj/compiler/LexState$LHS_assign;
    }
.end annotation


# static fields
.field public static final o:[Ljava/lang/String;

.field public static final p:Ljava/util/Hashtable;

.field public static final q:[Ljava/lang/String;

.field public static final r:Ljava/util/Hashtable;

.field public static s:[Lcom/prineside/luaj/compiler/LexState$Priority;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:Lcom/prineside/luaj/compiler/LexState$Token;

.field public final e:Lcom/prineside/luaj/compiler/LexState$Token;

.field public f:Lcom/prineside/luaj/compiler/FuncState;

.field public g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

.field public h:Ljava/io/InputStream;

.field public i:[C

.field public j:I

.field public k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

.field public l:Lcom/prineside/luaj/LuaString;

.field public m:Lcom/prineside/luaj/LuaString;

.field public n:B


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "(for control)"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "(for generator)"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "(for index)"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "(for limit)"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "(for state)"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "(for step)"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/prineside/luaj/compiler/LexState;->o:[Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/prineside/luaj/compiler/LexState;->p:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/luaj/compiler/LexState;->o:[Ljava/lang/String;

    array-length v9, v2

    if-ge v1, v9, :cond_0

    sget-object v9, Lcom/prineside/luaj/compiler/LexState;->p:Ljava/util/Hashtable;

    aget-object v2, v2, v1

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v2, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "and"

    aput-object v2, v1, v3

    const-string v2, "break"

    aput-object v2, v1, v4

    const-string v2, "do"

    aput-object v2, v1, v5

    const-string v2, "else"

    aput-object v2, v1, v6

    const-string v2, "elseif"

    aput-object v2, v1, v7

    const-string v2, "end"

    aput-object v2, v1, v8

    const-string v2, "false"

    aput-object v2, v1, v0

    const-string v2, "for"

    const/4 v9, 0x7

    aput-object v2, v1, v9

    const-string v2, "function"

    const/16 v10, 0x8

    aput-object v2, v1, v10

    const-string v2, "goto"

    const/16 v11, 0x9

    aput-object v2, v1, v11

    const-string v2, "if"

    const/16 v12, 0xa

    aput-object v2, v1, v12

    const-string v2, "in"

    const/16 v13, 0xb

    aput-object v2, v1, v13

    const-string v2, "local"

    const/16 v14, 0xc

    aput-object v2, v1, v14

    const-string v2, "nil"

    const/16 v15, 0xd

    aput-object v2, v1, v15

    const-string v2, "not"

    const/16 v16, 0xe

    aput-object v2, v1, v16

    const-string v2, "or"

    const/16 v15, 0xf

    aput-object v2, v1, v15

    const/16 v2, 0x10

    const-string v17, "repeat"

    aput-object v17, v1, v2

    const/16 v2, 0x11

    const-string v17, "return"

    aput-object v17, v1, v2

    const/16 v2, 0x12

    const-string v17, "then"

    aput-object v17, v1, v2

    const/16 v2, 0x13

    const-string v17, "true"

    aput-object v17, v1, v2

    const/16 v2, 0x14

    const-string v17, "until"

    aput-object v17, v1, v2

    const/16 v2, 0x15

    const-string v17, "while"

    aput-object v17, v1, v2

    const-string v2, ".."

    const/16 v14, 0x16

    aput-object v2, v1, v14

    const/16 v2, 0x17

    const-string v18, "..."

    aput-object v18, v1, v2

    const/16 v2, 0x18

    const-string v18, "=="

    aput-object v18, v1, v2

    const/16 v2, 0x19

    const-string v18, ">="

    aput-object v18, v1, v2

    const/16 v2, 0x1a

    const-string v18, "<="

    aput-object v18, v1, v2

    const/16 v2, 0x1b

    const-string v18, "~="

    aput-object v18, v1, v2

    const/16 v2, 0x1c

    const-string v18, "::"

    aput-object v18, v1, v2

    const/16 v2, 0x1d

    const-string v18, "<eos>"

    aput-object v18, v1, v2

    const/16 v2, 0x1e

    const-string v18, "<number>"

    aput-object v18, v1, v2

    const/16 v2, 0x1f

    const-string v18, "<name>"

    aput-object v18, v1, v2

    const/16 v2, 0x20

    const-string v18, "<string>"

    aput-object v18, v1, v2

    const/16 v2, 0x21

    const-string v18, "<eof>"

    aput-object v18, v1, v2

    sput-object v1, Lcom/prineside/luaj/compiler/LexState;->q:[Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/prineside/luaj/compiler/LexState;->r:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v14, :cond_1

    sget-object v2, Lcom/prineside/luaj/compiler/LexState;->q:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v2

    sget-object v14, Lcom/prineside/luaj/compiler/LexState;->r:Ljava/util/Hashtable;

    add-int/lit16 v13, v1, 0x101

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v2, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    const/16 v13, 0xb

    const/16 v14, 0x16

    goto :goto_1

    :cond_1
    new-array v1, v15, [Lcom/prineside/luaj/compiler/LexState$Priority;

    new-instance v2, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v2, v0, v0}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v2, v0, v0}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v2, v9, v9}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v2, v9, v9}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v2, v9, v9}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v2, v12, v11}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v2, v8, v7}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v0, v6, v6}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v0, v1, v9

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v0, v6, v6}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v0, v1, v10

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v0, v6, v6}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v0, v1, v11

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v0, v6, v6}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v0, v1, v12

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v0, v6, v6}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v0, v6, v6}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v0, v5, v5}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Priority;

    invoke-direct {v0, v4, v4}, Lcom/prineside/luaj/compiler/LexState$Priority;-><init>(II)V

    aput-object v0, v1, v16

    sput-object v1, Lcom/prineside/luaj/compiler/LexState;->s:[Lcom/prineside/luaj/compiler/LexState$Priority;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/compiler/LuaC$CompileState;Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/luaj/compiler/Constants;-><init>()V

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Token;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/luaj/compiler/LexState$Token;-><init>(Lcom/prineside/luaj/compiler/LexState$1;)V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Token;

    invoke-direct {v0, v1}, Lcom/prineside/luaj/compiler/LexState$Token;-><init>(Lcom/prineside/luaj/compiler/LexState$1;)V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->e:Lcom/prineside/luaj/compiler/LexState$Token;

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$Dyndata;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iput-object p2, p0, Lcom/prineside/luaj/compiler/LexState;->h:Ljava/io/InputStream;

    const/16 p2, 0x20

    new-array p2, p2, [C

    iput-object p2, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    iput-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    return-void
.end method

.method public static D0(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-lt p0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ge p0, v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x3

    sub-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static isReservedKeyword(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/prineside/luaj/compiler/LexState;->p:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static r0(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final u(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/luaj/compiler/LexState;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    new-instance v1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->g1()V

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    return-void
.end method

.method public A0()V
    .locals 5

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->E0(Lcom/prineside/luaj/LuaString;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->y(I)V

    iget v3, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lcom/prineside/luaj/compiler/LexState;->C(Lcom/prineside/luaj/compiler/LexState$expdesc;ZI)V

    iget-short v0, v1, Lcom/prineside/luaj/compiler/FuncState;->m:S

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/prineside/luaj/compiler/FuncState;->i0(I)Lcom/prineside/luaj/LocVars;

    move-result-object v0

    iget v1, v1, Lcom/prineside/luaj/compiler/FuncState;->f:I

    iput v1, v0, Lcom/prineside/luaj/LocVars;->startpc:I

    return-void
.end method

.method public B(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v1, 0x115

    if-eq v0, v1, :cond_1

    const/16 p1, 0x11e

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    :cond_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x104
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public B0()V
    .locals 4

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->E0(Lcom/prineside/luaj/LuaString;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->V(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v1

    goto :goto_0

    :cond_1
    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    :goto_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/prineside/luaj/compiler/LexState;->x(IILcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->y(I)V

    return-void
.end method

.method public C(Lcom/prineside/luaj/compiler/LexState$expdesc;ZI)V
    .locals 3

    new-instance v0, Lcom/prineside/luaj/compiler/FuncState;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/FuncState;-><init>()V

    new-instance v1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->w()Lcom/prineside/luaj/Prototype;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iput p3, v2, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/compiler/LexState;->L0(Lcom/prineside/luaj/compiler/FuncState;Lcom/prineside/luaj/compiler/FuncState$BlockCnt;)V

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    if-eqz p2, :cond_0

    const-string p2, "self"

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/LexState;->F0(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/LexState;->y(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->M0()V

    const/16 p2, 0x29

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->g1()V

    iget-object p2, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    iput v0, p2, Lcom/prineside/luaj/Prototype;->lastlinedefined:I

    const/16 p2, 0x106

    const/16 v0, 0x109

    invoke-virtual {p0, p2, v0, p3}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->N(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->L()V

    return-void
.end method

.method public C0()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->e:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v1, 0x11e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->e:Lcom/prineside/luaj/compiler/LexState$Token;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->z0(Lcom/prineside/luaj/compiler/LexState$SemInfo;)I

    move-result v1

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    return-void
.end method

.method public D()V
    .locals 7

    const-string v0, "break"

    invoke-static {v0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget v2, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/prineside/luaj/compiler/Constants;->l([Lcom/prineside/luaj/compiler/LexState$Labeldesc;I)[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v3, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget v6, v0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/luaj/compiler/LexState;->G0([Lcom/prineside/luaj/compiler/LexState$Labeldesc;ILcom/prineside/luaj/LuaString;II)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v1, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->Z(Lcom/prineside/luaj/compiler/LexState$Labeldesc;)V

    return-void
.end method

.method public E(I)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->T(I)V

    :cond_0
    return-void
.end method

.method public E0(Lcom/prineside/luaj/LuaString;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->T0(Lcom/prineside/luaj/LuaString;)I

    move-result p1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0xc8

    const-string v4, "local variables"

    invoke-virtual {v0, v1, v3, v4}, Lcom/prineside/luaj/compiler/FuncState;->w(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->a:[Lcom/prineside/luaj/compiler/LexState$Vardesc;

    if-eqz v1, :cond_0

    iget v3, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    add-int/2addr v3, v2

    array-length v4, v1

    if-le v3, v4, :cond_1

    :cond_0
    iget v3, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/prineside/luaj/compiler/Constants;->t([Lcom/prineside/luaj/compiler/LexState$Vardesc;I)[Lcom/prineside/luaj/compiler/LexState$Vardesc;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->a:[Lcom/prineside/luaj/compiler/LexState$Vardesc;

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->a:[Lcom/prineside/luaj/compiler/LexState$Vardesc;

    iget v2, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Vardesc;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/compiler/LexState$Vardesc;-><init>(I)V

    aput-object v0, v1, v2

    return-void
.end method

.method public F(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public F0(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->H0(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->E0(Lcom/prineside/luaj/LuaString;)V

    return-void
.end method

.method public G(Lcom/prineside/luaj/compiler/LexState$LHS_assign;Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 10

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x7

    if-eqz p1, :cond_2

    iget-object v6, p1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget v7, v6, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_1

    iget-object v6, v6, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-short v7, v6, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->c:S

    iget v8, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-ne v7, v8, :cond_0

    iget-short v7, v6, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b:S

    iget-object v9, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v9, v9, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    if-ne v7, v9, :cond_0

    iput-short v5, v6, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->c:S

    iput-short v1, v6, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b:S

    const/4 v3, 0x1

    :cond_0
    if-ne v8, v5, :cond_1

    iget-short v5, v6, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a:S

    iget-object v7, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v7, v7, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    if-ne v5, v7, :cond_1

    iput-short v1, v6, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a:S

    const/4 v3, 0x1

    :cond_1
    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->a:Lcom/prineside/luaj/compiler/LexState$LHS_assign;

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget p1, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-ne p1, v5, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    :goto_1
    iget-object p2, p2, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p2, p2, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    invoke-virtual {v0, v4}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    :cond_4
    return-void
.end method

.method public G0([Lcom/prineside/luaj/compiler/LexState$Labeldesc;ILcom/prineside/luaj/LuaString;II)I
    .locals 2

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-short v1, v1, Lcom/prineside/luaj/compiler/FuncState;->m:S

    invoke-direct {v0, p3, p5, p4, v1}, Lcom/prineside/luaj/compiler/LexState$Labeldesc;-><init>(Lcom/prineside/luaj/LuaString;IIS)V

    aput-object v0, p1, p2

    return p2
.end method

.method public H(III)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->T(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->p1(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/compiler/LexState;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected (to close "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/LexState;->p1(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/compiler/LexState;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public H0(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->newTString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    const/4 p1, 0x1

    return p1
.end method

.method public I0([CII)Lcom/prineside/luaj/LuaString;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->newTString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public J(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->O(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/LuaString;)V

    return-void
.end method

.method public J0()V
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState;->c:I

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->e:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v2, 0x11e

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    invoke-virtual {v1, v0}, Lcom/prineside/luaj/compiler/LexState$Token;->set(Lcom/prineside/luaj/compiler/LexState$Token;)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->e:Lcom/prineside/luaj/compiler/LexState$Token;

    iput v2, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->z0(Lcom/prineside/luaj/compiler/LexState$SemInfo;)I

    move-result v1

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    :goto_0
    return-void
.end method

.method public K(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->E(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    return-void
.end method

.method public K0()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    :goto_0
    return-void
.end method

.method public L()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/prineside/luaj/compiler/FuncState;->K0(II)V

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    iget-object v3, v1, Lcom/prineside/luaj/Prototype;->code:[I

    iget v4, v0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    invoke-static {v3, v4}, Lcom/prineside/luaj/compiler/Constants;->n([II)[I

    move-result-object v3

    iput-object v3, v1, Lcom/prineside/luaj/Prototype;->code:[I

    iget-object v3, v1, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    iget v4, v0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    invoke-static {v3, v4}, Lcom/prineside/luaj/compiler/Constants;->n([II)[I

    move-result-object v3

    iput-object v3, v1, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    iget-object v3, v1, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    iget v4, v0, Lcom/prineside/luaj/compiler/FuncState;->i:I

    invoke-static {v3, v4}, Lcom/prineside/luaj/compiler/Constants;->p([Lcom/prineside/luaj/LuaValue;I)[Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    iput-object v3, v1, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    iget-object v3, v1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    iget v4, v0, Lcom/prineside/luaj/compiler/FuncState;->j:I

    invoke-static {v3, v4}, Lcom/prineside/luaj/compiler/Constants;->q([Lcom/prineside/luaj/Prototype;I)[Lcom/prineside/luaj/Prototype;

    move-result-object v3

    iput-object v3, v1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    iget-object v3, v1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    iget-short v4, v0, Lcom/prineside/luaj/compiler/FuncState;->l:S

    invoke-static {v3, v4}, Lcom/prineside/luaj/compiler/Constants;->o([Lcom/prineside/luaj/LocVars;I)[Lcom/prineside/luaj/LocVars;

    move-result-object v3

    iput-object v3, v1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    iget-object v3, v1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    iget-short v4, v0, Lcom/prineside/luaj/compiler/FuncState;->n:S

    invoke-static {v3, v4}, Lcom/prineside/luaj/compiler/Constants;->r([Lcom/prineside/luaj/Upvaldesc;I)[Lcom/prineside/luaj/Upvaldesc;

    move-result-object v3

    iput-object v3, v1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object v0, v0, Lcom/prineside/luaj/compiler/FuncState;->c:Lcom/prineside/luaj/compiler/FuncState;

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    return-void
.end method

.method public L0(Lcom/prineside/luaj/compiler/FuncState;Lcom/prineside/luaj/compiler/FuncState$BlockCnt;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iput-object v0, p1, Lcom/prineside/luaj/compiler/FuncState;->c:Lcom/prineside/luaj/compiler/FuncState;

    iput-object p0, p1, Lcom/prineside/luaj/compiler/FuncState;->d:Lcom/prineside/luaj/compiler/LexState;

    iput-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    const/4 v0, 0x0

    iput v0, p1, Lcom/prineside/luaj/compiler/FuncState;->f:I

    const/4 v1, -0x1

    iput v1, p1, Lcom/prineside/luaj/compiler/FuncState;->g:I

    new-instance v2, Lcom/prineside/luaj/compiler/IntPtr;

    invoke-direct {v2, v1}, Lcom/prineside/luaj/compiler/IntPtr;-><init>(I)V

    iput-object v2, p1, Lcom/prineside/luaj/compiler/FuncState;->h:Lcom/prineside/luaj/compiler/IntPtr;

    iput-short v0, p1, Lcom/prineside/luaj/compiler/FuncState;->o:S

    iput v0, p1, Lcom/prineside/luaj/compiler/FuncState;->i:I

    iput v0, p1, Lcom/prineside/luaj/compiler/FuncState;->j:I

    iput-short v0, p1, Lcom/prineside/luaj/compiler/FuncState;->n:S

    iput-short v0, p1, Lcom/prineside/luaj/compiler/FuncState;->l:S

    iput-short v0, p1, Lcom/prineside/luaj/compiler/FuncState;->m:S

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    iput v1, p1, Lcom/prineside/luaj/compiler/FuncState;->k:I

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iget-object v1, p1, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->l:Lcom/prineside/luaj/LuaString;

    iput-object v2, v1, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    const/4 v2, 0x2

    iput v2, v1, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    invoke-virtual {p1, p2, v0}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    return-void
.end method

.method public M(ILcom/prineside/luaj/compiler/LexState$Labeldesc;)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v1, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->c:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    aget-object v2, v1, p1

    iget-object v3, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    iget-object v4, p2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v3, v4}, Lcom/prineside/luaj/LuaString;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v3

    invoke-static {v3}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-short v3, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->d:S

    iget-short v4, p2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->d:S

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/prineside/luaj/compiler/FuncState;->i0(I)Lcom/prineside/luaj/LocVars;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/luaj/LocVars;->varname:Lcom/prineside/luaj/LuaString;

    iget-object v4, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<goto "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "> at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " jumps into the scope of local \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->Y0(Ljava/lang/String;)V

    :cond_0
    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->b:I

    iget p2, p2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->b:I

    invoke-virtual {v0, v2, p2}, Lcom/prineside/luaj/compiler/FuncState;->B0(II)V

    add-int/lit8 p2, p1, 0x1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget p2, p1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    const/4 p1, 0x0

    aput-object p1, v1, p2

    return-void
.end method

.method public M0()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    const/4 v2, 0x0

    iput v2, v1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    iget-object v3, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v3, v3, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v4, 0x29

    if-eq v3, v4, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v3, v3, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v4, 0x118

    if-eq v3, v4, :cond_2

    const/16 v4, 0x120

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<name> or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-static {v4}, Lcom/prineside/luaj/compiler/LexState;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->E0(Lcom/prineside/luaj/LuaString;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    const/4 v3, 0x1

    iput v3, v1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    :goto_0
    iget v3, v1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    if-nez v3, :cond_3

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->y(I)V

    iget-short v2, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    iput v2, v1, Lcom/prineside/luaj/Prototype;->numparams:I

    invoke-virtual {v0, v2}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    return-void
.end method

.method public N(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/FuncState;->c:Lcom/prineside/luaj/compiler/FuncState;

    iget v1, v0, Lcom/prineside/luaj/compiler/FuncState;->j:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/prineside/luaj/compiler/FuncState;->C(III)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void
.end method

.method public N0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x120

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected symbol "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->b1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    const/16 v2, 0x29

    invoke-virtual {p0, v2, v1, v0}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void
.end method

.method public O(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/LuaString;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v0, p2}, Lcom/prineside/luaj/compiler/FuncState;->U0(Lcom/prineside/luaj/LuaString;)I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    return-void
.end method

.method public O0(Lcom/prineside/luaj/compiler/LexState$SemInfo;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->o0()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_8

    iget v2, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    const/16 v3, 0xa

    if-eq v2, v3, :cond_5

    const/16 v4, 0xd

    if-eq v2, v4, :cond_5

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->d1()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->d1()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    if-nez p2, :cond_1

    const-string v2, "nesting of [[...]] is deprecated"

    invoke-virtual {p0, v2, v3}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->W0(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->o0()V

    if-nez p1, :cond_1

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    const-string v2, "unfinished long string"

    goto :goto_1

    :cond_7
    const-string v2, "unfinished long comment"

    :goto_1
    const/16 v3, 0x11e

    invoke-virtual {p0, v2, v3}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    add-int/lit8 p2, p2, 0x2

    iget v2, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    mul-int/lit8 v3, p2, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1, p2, v2}, Lcom/prineside/luaj/LuaString;->valueOf([CII)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->newTString(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/luaj/compiler/LexState$SemInfo;->b:Lcom/prineside/luaj/LuaString;

    :cond_9
    return-void
.end method

.method public P()I
    .locals 3

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v1, v0}, Lcom/prineside/luaj/compiler/FuncState;->k0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    return v0
.end method

.method public P0(Lcom/prineside/luaj/compiler/LexState$SemInfo;)V
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->s0(I)Z

    move-result v1

    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const-string v0, "Xx"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Pp"

    goto :goto_0

    :cond_0
    const-string v0, "Ee"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->I(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "+-"

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->I(Ljava/lang/String;)Z

    :cond_1
    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->u0(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/compiler/LexState;->h1(Ljava/lang/String;Lcom/prineside/luaj/compiler/LexState$SemInfo;)Z

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    goto :goto_0
.end method

.method public Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    move-result v4

    new-instance v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;

    invoke-direct {v5}, Lcom/prineside/luaj/compiler/LexState$ConsControl;-><init>()V

    iput v3, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->e:I

    iput v3, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->c:I

    iput v3, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    iput-object p1, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {p1, v2, v4}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    iget-object v2, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {v2, v3, v3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    const/16 p1, 0x7b

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    :cond_0
    iget-object v2, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-eqz v2, :cond_2

    iget v2, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->e:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v6, 0x7d

    if-ne v2, v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v5}, Lcom/prineside/luaj/compiler/FuncState;->z(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v7, 0x5b

    if-eq v2, v7, :cond_6

    const/16 v7, 0x120

    if-eq v2, v7, :cond_4

    invoke-virtual {p0, v5}, Lcom/prineside/luaj/compiler/LexState;->y0(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->C0()V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->e:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v7, 0x3d

    if-eq v2, v7, :cond_5

    invoke-virtual {p0, v5}, Lcom/prineside/luaj/compiler/LexState;->y0(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/compiler/LexState;->S0(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/compiler/LexState;->S0(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V

    :goto_2
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_3
    invoke-virtual {p0, v6, p1, v1}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    invoke-virtual {v0, v5}, Lcom/prineside/luaj/compiler/FuncState;->r0(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V

    new-instance p1, Lcom/prineside/luaj/compiler/InstructionPtr;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->code:[I

    invoke-direct {p1, v0, v4}, Lcom/prineside/luaj/compiler/InstructionPtr;-><init>([II)V

    iget v0, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    invoke-static {v0}, Lcom/prineside/luaj/compiler/LexState;->D0(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/prineside/luaj/compiler/Constants;->f(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    iget v0, v5, Lcom/prineside/luaj/compiler/LexState$ConsControl;->c:I

    invoke-static {v0}, Lcom/prineside/luaj/compiler/LexState;->D0(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/prineside/luaj/compiler/Constants;->h(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    return-void
.end method

.method public Q0(ILcom/prineside/luaj/compiler/LexState$SemInfo;)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_13

    const-string v2, "unfinished string"

    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    const/16 v4, 0x121

    const/16 v5, 0xa

    if-eq v0, v5, :cond_11

    const/16 v6, 0xd

    if-eq v0, v6, :cond_11

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-eq v0, v3, :cond_0

    if-eq v0, v5, :cond_10

    if-eq v0, v6, :cond_10

    const/16 v2, 0x66

    if-eq v0, v2, :cond_e

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_f

    const/16 v2, 0x72

    if-eq v0, v2, :cond_d

    const/16 v2, 0x74

    if-eq v0, v2, :cond_c

    const/16 v2, 0x76

    if-eq v0, v2, :cond_b

    const/16 v2, 0x78

    if-eq v0, v2, :cond_a

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_8

    const/16 v2, 0x61

    if-eq v0, v2, :cond_7

    const/16 v2, 0x62

    if-eq v0, v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->s0(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_3
    mul-int/lit8 v0, v0, 0xa

    iget v3, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    add-int/2addr v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    iget v3, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->s0(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    const/16 v1, 0xff

    if-le v0, v1, :cond_5

    const-string v1, "escape sequence too large"

    invoke-virtual {p0, v1, v4}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->W0(I)V

    goto :goto_0

    :cond_6
    const/16 v5, 0x8

    goto :goto_2

    :cond_7
    const/4 v5, 0x7

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    :goto_1
    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->t0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->R()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->o0()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->R0()I

    move-result v5

    goto :goto_2

    :cond_b
    const/16 v5, 0xb

    goto :goto_2

    :cond_c
    const/16 v5, 0x9

    goto :goto_2

    :cond_d
    const/16 v5, 0xd

    goto :goto_2

    :cond_e
    const/16 v5, 0xc

    :cond_f
    :goto_2
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/compiler/LexState;->W0(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/compiler/LexState;->W0(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->o0()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0, v2, v4}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x11e

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    iget-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    iget v2, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/prineside/luaj/LuaString;->valueOf([CII)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->newTString(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    iput-object p1, p2, Lcom/prineside/luaj/compiler/LexState$SemInfo;->b:Lcom/prineside/luaj/LuaString;

    return-void
.end method

.method public R()Z
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public R0()I
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->u0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->u0(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hexadecimal digit expected \'x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x121

    invoke-virtual {p0, v2, v3}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->m0(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->m0(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public S()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    iget v1, v0, Lcom/prineside/luaj/compiler/LuaC$CompileState;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/prineside/luaj/compiler/LuaC$CompileState;->a:I

    const/16 v0, 0xc8

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "chunk has too many syntax levels"

    invoke-virtual {p0, v1, v0}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public S0(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    new-instance v2, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v2}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    new-instance v3, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v3}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iget-object v4, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v4, v4, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v5, 0x120

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->c:I

    const v5, 0x7ffffffd

    const-string v6, "items in a constructor"

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/luaj/compiler/FuncState;->w(IILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->J(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->t1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :goto_0
    iget v4, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->c:I

    const/16 v4, 0x3d

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    invoke-virtual {v0, v2}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    const/16 v4, 0xa

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-virtual {v0, v3}, Lcom/prineside/luaj/compiler/FuncState;->T(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v3

    invoke-virtual {v0, v4, p1, v2, v3}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    int-to-short p1, v1

    iput-short p1, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    return-void
.end method

.method public T(I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->p1(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/compiler/LexState;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    return-void
.end method

.method public T0(Lcom/prineside/luaj/LuaString;)I
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    if-eqz v2, :cond_0

    iget-short v3, v0, Lcom/prineside/luaj/compiler/FuncState;->l:S

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    if-le v3, v4, :cond_1

    :cond_0
    iget-short v3, v0, Lcom/prineside/luaj/compiler/FuncState;->l:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/prineside/luaj/compiler/Constants;->o([Lcom/prineside/luaj/LocVars;I)[Lcom/prineside/luaj/LocVars;

    move-result-object v2

    iput-object v2, v1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    :cond_1
    iget-object v1, v1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    iget-short v2, v0, Lcom/prineside/luaj/compiler/FuncState;->l:S

    new-instance v3, Lcom/prineside/luaj/LocVars;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, v4}, Lcom/prineside/luaj/LocVars;-><init>(Lcom/prineside/luaj/LuaString;II)V

    aput-object v3, v1, v2

    iget-short p1, v0, Lcom/prineside/luaj/compiler/FuncState;->l:S

    add-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->l:S

    return p1
.end method

.method public U()I
    .locals 3

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, v0}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return v1
.end method

.method public U0(I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->h0()I

    move-result v1

    new-instance v2, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v2}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    new-instance v3, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v3}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->g1()V

    const/16 v2, 0x115

    const/16 v4, 0x111

    invoke-virtual {p0, v2, v4, p1}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->P()I

    move-result p1

    iget-boolean v2, v3, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->e:Z

    if-eqz v2, :cond_0

    iget-short v2, v3, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    invoke-virtual {v0, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->A0(II)V

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    invoke-virtual {v0, p1, v1}, Lcom/prineside/luaj/compiler/FuncState;->B0(II)V

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    return-void
.end method

.method public V(Lcom/prineside/luaj/compiler/LexState$expdesc;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v1, p1}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public V0()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    new-instance v1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->B(Z)Z

    move-result v3

    const/16 v4, 0x3b

    const/4 v5, 0x0

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v3, v3, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->V(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v3

    iget v6, v1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    invoke-virtual {p0, v6}, Lcom/prineside/luaj/compiler/LexState;->l0(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->P0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget v6, v1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    if-ne v3, v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object v3

    const/16 v6, 0x1e

    invoke-static {v3, v6}, Lcom/prineside/luaj/compiler/Constants;->j(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->d0(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v1

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v1

    iget-short v3, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    :cond_2
    iget-short v5, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    const/4 v1, -0x1

    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    if-ne v3, v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->U(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v5

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    iget-short v6, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    sub-int/2addr v6, v1

    if-ne v3, v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    move v5, v1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v5, v3}, Lcom/prineside/luaj/compiler/FuncState;->K0(II)V

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    return-void
.end method

.method public W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->k1(Lcom/prineside/luaj/compiler/LexState$expdesc;I)I

    return-void
.end method

.method public W0(I)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/luaj/compiler/Constants;->m([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method public X()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    new-instance v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$LHS_assign;-><init>()V

    iget-object v2, v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->l1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/4 v3, 0x1

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v4, 0xc

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, "syntax error"

    invoke-virtual {p0, v2, v4}, Lcom/prineside/luaj/compiler/LexState;->F(ZLjava/lang/String;)V

    iget-object v1, v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->e0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Lcom/prineside/luaj/compiler/InstructionPtr;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/prineside/luaj/compiler/Constants;->h(Lcom/prineside/luaj/compiler/InstructionPtr;I)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->a:Lcom/prineside/luaj/compiler/LexState$LHS_assign;

    invoke-virtual {p0, v1, v3}, Lcom/prineside/luaj/compiler/LexState;->z(Lcom/prineside/luaj/compiler/LexState$LHS_assign;I)V

    :goto_2
    return-void
.end method

.method public X0()V
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->W0(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    return-void
.end method

.method public Y(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    new-instance v1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->V(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->J(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {v0, p1, v1}, Lcom/prineside/luaj/compiler/FuncState;->m0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void
.end method

.method public Y0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    const/4 v1, 0x0

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    return-void
.end method

.method public Z(Lcom/prineside/luaj/compiler/LexState$Labeldesc;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->c:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, v1, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iget-short v1, v1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->c:S

    :goto_0
    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    iget-object v3, p1, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, v3}, Lcom/prineside/luaj/LuaString;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/compiler/LexState;->M(ILcom/prineside/luaj/compiler/LexState$Labeldesc;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Z0(Lcom/prineside/luaj/compiler/LuaC$CompileState;ILjava/io/InputStream;Lcom/prineside/luaj/LuaString;)V
    .locals 1

    const/16 v0, 0x2e

    iput-byte v0, p0, Lcom/prineside/luaj/compiler/LexState;->n:B

    iput-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    iget-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->e:Lcom/prineside/luaj/compiler/LexState$Token;

    const/16 v0, 0x11e

    iput v0, p1, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    iput-object p3, p0, Lcom/prineside/luaj/compiler/LexState;->h:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    const/4 p1, 0x1

    iput p1, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    iput p1, p0, Lcom/prineside/luaj/compiler/LexState;->c:I

    iput-object p4, p0, Lcom/prineside/luaj/compiler/LexState;->l:Lcom/prineside/luaj/LuaString;

    sget-object p1, Lcom/prineside/luaj/LuaValue;->ENV:Lcom/prineside/luaj/LuaString;

    iput-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->m:Lcom/prineside/luaj/LuaString;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    iput p2, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->c1()V

    return-void
.end method

.method public a0(I)Z
    .locals 7

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v2, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->c:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    aget-object v2, v2, p1

    iget-short v3, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->b:S

    :goto_0
    iget v4, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    if-ge v3, v4, :cond_3

    iget-object v4, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    iget-object v6, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v5, v6}, Lcom/prineside/luaj/LuaString;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-short v3, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->d:S

    iget-short v5, v4, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->d:S

    if-le v3, v5, :cond_1

    iget-boolean v3, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->e:Z

    if-nez v3, :cond_0

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    iget-short v0, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->b:S

    if-le v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget v1, v2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->b:I

    invoke-virtual {v0, v1, v5}, Lcom/prineside/luaj/compiler/FuncState;->A0(II)V

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/prineside/luaj/compiler/LexState;->M(ILcom/prineside/luaj/compiler/LexState$Labeldesc;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public a1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v1, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_8

    const/16 v2, 0x107

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/16 v2, 0x109

    if-eq v1, v2, :cond_6

    const/16 v2, 0x10e

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x114

    if-eq v1, v2, :cond_4

    const/16 v2, 0x118

    if-eq v1, v2, :cond_2

    const/16 v2, 0x11f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x121

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->l1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$SemInfo;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->O(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/LuaString;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$SemInfo;->a:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->setNval(Lcom/prineside/luaj/LuaValue;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget v1, v1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot use "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-static {v5}, Lcom/prineside/luaj/compiler/LexState;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " outside a vararg function"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/prineside/luaj/compiler/LexState;->F(ZLjava/lang/String;)V

    const/16 v1, 0xd

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v3, v4, v3}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v4, v3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {p0, p1, v3, v0}, Lcom/prineside/luaj/compiler/LexState;->C(Lcom/prineside/luaj/compiler/LexState$expdesc;ZI)V

    return-void

    :cond_7
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void
.end method

.method public b0(IIIZ)V
    .locals 5

    new-instance v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->y(I)V

    const/16 v2, 0x103

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    const/4 v2, -0x1

    if-eqz p4, :cond_0

    const/16 v3, 0x21

    invoke-virtual {v1, v3, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->D(III)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/prineside/luaj/compiler/FuncState;->p0()I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    invoke-virtual {p0, p3}, Lcom/prineside/luaj/compiler/LexState;->y(I)V

    invoke-virtual {v1, p3}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->A()V

    invoke-virtual {v1}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    invoke-virtual {v1, v3}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    if-eqz p4, :cond_1

    const/16 p3, 0x20

    invoke-virtual {v1, p3, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->D(III)I

    move-result p1

    goto :goto_1

    :cond_1
    const/16 p4, 0x22

    invoke-virtual {v1, p4, p1, v4, p3}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/compiler/FuncState;->a0(I)V

    const/16 p3, 0x23

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p3, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->D(III)I

    move-result p1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/prineside/luaj/compiler/FuncState;->B0(II)V

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/compiler/FuncState;->a0(I)V

    return-void
.end method

.method public b1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->S0(Lcom/prineside/luaj/compiler/FuncState;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/compiler/LexState$expdesc;I)I

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v3}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iget-object v4, p0, Lcom/prineside/luaj/compiler/LexState;->m:Lcom/prineside/luaj/LuaString;

    invoke-static {v1, v4, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->S0(Lcom/prineside/luaj/compiler/FuncState;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/compiler/LexState$expdesc;I)I

    iget v4, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-virtual {p0, v3, v0}, Lcom/prineside/luaj/compiler/LexState;->O(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/LuaString;)V

    invoke-virtual {v1, p1, v3}, Lcom/prineside/luaj/compiler/FuncState;->m0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :cond_2
    return-void
.end method

.method public c0(Lcom/prineside/luaj/LuaString;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    new-instance v1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iget-short v2, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    const-string v3, "(for generator)"

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->F0(Ljava/lang/String;)V

    const-string v3, "(for state)"

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->F0(Ljava/lang/String;)V

    const-string v3, "(for control)"

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->F0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->E0(Lcom/prineside/luaj/LuaString;)V

    const/4 p1, 0x4

    :goto_0
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->E0(Lcom/prineside/luaj/LuaString;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x10c

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    iget v3, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->V(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v4, v1}, Lcom/prineside/luaj/compiler/LexState;->x(IILcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {v0, v5}, Lcom/prineside/luaj/compiler/FuncState;->y(I)V

    sub-int/2addr p1, v5

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->b0(IIIZ)V

    return-void
.end method

.method public final c1()V
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d0(Lcom/prineside/luaj/LuaString;I)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    const-string v2, "(for index)"

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->F0(Ljava/lang/String;)V

    const-string v2, "(for limit)"

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->F0(Ljava/lang/String;)V

    const-string v2, "(for step)"

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->F0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->E0(Lcom/prineside/luaj/LuaString;)V

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->U()I

    const/16 p1, 0x2c

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->U()I

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->U()I

    goto :goto_0

    :cond_0
    iget-short p1, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    invoke-static {v2}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/prineside/luaj/compiler/FuncState;->z0(Lcom/prineside/luaj/LuaValue;)I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lcom/prineside/luaj/compiler/FuncState;->E(II)I

    invoke-virtual {v0, v2}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    :goto_0
    invoke-virtual {p0, v1, p2, v2, v2}, Lcom/prineside/luaj/compiler/LexState;->b0(IIIZ)V

    return-void
.end method

.method public d1()I
    .locals 5

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_1

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    :goto_2
    iget v3, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-ne v3, v0, :cond_3

    goto :goto_3

    :cond_3
    neg-int v0, v1

    add-int/lit8 v1, v0, -0x1

    :goto_3
    return v1
.end method

.method public e0(I)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    new-instance v1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10c

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-static {v2}, Lcom/prineside/luaj/compiler/LexState;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "in"

    invoke-static {v2}, Lcom/prineside/luaj/compiler/LexState;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/compiler/LexState;->d0(Lcom/prineside/luaj/LuaString;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->c0(Lcom/prineside/luaj/LuaString;)V

    :goto_0
    const/16 v1, 0x106

    const/16 v2, 0x108

    invoke-virtual {p0, v1, v2, p1}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    return-void
.end method

.method public e1()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11d

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->f1()V

    goto :goto_0
.end method

.method public f0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    new-instance v1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v3, v2, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/4 v4, 0x0

    const/16 v5, 0x28

    if-eq v3, v5, :cond_2

    const/16 v5, 0x7b

    if-eq v3, v5, :cond_1

    const/16 v5, 0x121

    if-eq v3, v5, :cond_0

    const-string p1, "function arguments expected"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v2, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    iget-object v2, v2, Lcom/prineside/luaj/compiler/LexState$SemInfo;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v1, v2}, Lcom/prineside/luaj/compiler/LexState;->O(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/LuaString;)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->Q(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_3

    iput v4, v1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->V(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->P0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :goto_0
    invoke-virtual {p0, v3, v5, p2}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    :goto_1
    iget v2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v3, 0x6

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-static {v4}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object v2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iget v3, v1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->l0(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, -0x1

    goto :goto_2

    :cond_5
    iget v3, v1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-eqz v3, :cond_6

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :cond_6
    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v3

    :goto_2
    const/16 v3, 0xc

    const/16 v4, 0x1d

    add-int/2addr v1, v5

    const/4 v6, 0x2

    invoke-virtual {v0, v4, v2, v1, v6}, Lcom/prineside/luaj/compiler/FuncState;->B(IIII)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    invoke-virtual {v0, p2}, Lcom/prineside/luaj/compiler/FuncState;->a0(I)V

    add-int/2addr v2, v5

    int-to-short p1, v2

    iput-short p1, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    return-void
.end method

.method public f1()V
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->S()V

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_8

    const/16 v2, 0x10d

    if-eq v1, v2, :cond_6

    const/16 v2, 0x116

    if-eq v1, v2, :cond_5

    const/16 v2, 0x11d

    if-eq v1, v2, :cond_4

    const/16 v2, 0x102

    if-eq v1, v2, :cond_3

    const/16 v2, 0x103

    if-eq v1, v2, :cond_2

    const/16 v2, 0x111

    if-eq v1, v2, :cond_1

    const/16 v2, 0x112

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->n0(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->h0(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->e0(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->V0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->U0(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->A()V

    const/16 v1, 0x106

    invoke-virtual {p0, v1, v2, v0}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    goto :goto_0

    :cond_3
    :pswitch_3
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->p0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->k0(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/prineside/luaj/compiler/LexState;->v0(Lcom/prineside/luaj/LuaString;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->s1(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    const/16 v0, 0x109

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->A0()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->B0()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    :goto_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget v1, v1, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    iget-short v2, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    if-lt v1, v2, :cond_9

    iget-short v0, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    if-lt v2, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    iput-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->w0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x108
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public g0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->b1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->Y(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->Y(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public g1()V
    .locals 2

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->B(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v1, 0x112

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->f1()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->f1()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h0(I)V
    .locals 3

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    new-instance v1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->g0(Lcom/prineside/luaj/compiler/LexState$expdesc;)Z

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/prineside/luaj/compiler/LexState;->C(Lcom/prineside/luaj/compiler/LexState$expdesc;ZI)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->T0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->a0(I)V

    return-void
.end method

.method public h1(Ljava/lang/String;Lcom/prineside/luaj/compiler/LexState$SemInfo;)Z
    .locals 2

    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    const/16 v0, 0x4e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x58

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    iput-object p1, p2, Lcom/prineside/luaj/compiler/LexState$SemInfo;->a:Lcom/prineside/luaj/LuaValue;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "malformed number ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x11f

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/compiler/LexState;->j1(Ljava/lang/String;Lcom/prineside/luaj/compiler/LexState$SemInfo;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iput-object p1, p2, Lcom/prineside/luaj/compiler/LexState$SemInfo;->a:Lcom/prineside/luaj/LuaValue;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    iput-object p1, p2, Lcom/prineside/luaj/compiler/LexState$SemInfo;->a:Lcom/prineside/luaj/LuaValue;

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public i0(I)I
    .locals 1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_a

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x101

    if-eq p1, v0, :cond_4

    const/16 v0, 0x110

    if-eq p1, v0, :cond_3

    const/16 v0, 0x117

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0xf

    return p1

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    const/16 p1, 0xa

    return p1

    :pswitch_2
    const/16 p1, 0xc

    return p1

    :pswitch_3
    const/16 p1, 0x8

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x6

    return p1

    :cond_3
    const/16 p1, 0xe

    return p1

    :cond_4
    const/16 p1, 0xd

    return p1

    :cond_5
    const/4 p1, 0x5

    return p1

    :cond_6
    const/16 p1, 0xb

    return p1

    :cond_7
    const/16 p1, 0x9

    return p1

    :cond_8
    const/4 p1, 0x3

    return p1

    :cond_9
    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x4

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x119
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i1()Lcom/prineside/luaj/LuaString;
    .locals 1

    const/16 v0, 0x120

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->E(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$SemInfo;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    return-object v0
.end method

.method public j0(I)I
    .locals 1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method public j1(Ljava/lang/String;Lcom/prineside/luaj/compiler/LexState$SemInfo;)Lcom/prineside/luaj/LuaValue;
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-char v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/LexState;->t0(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    array-length v6, v1

    const/16 v7, 0x2d

    if-ge v3, v6, :cond_1

    aget-char v6, v1, v3

    if-ne v6, v7, :cond_1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v6, v3, 0x2

    array-length v8, v1

    if-lt v6, v8, :cond_2

    sget-object v1, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    return-object v1

    :cond_2
    add-int/lit8 v6, v3, 0x1

    aget-char v3, v1, v3

    const/16 v8, 0x30

    if-eq v3, v8, :cond_3

    sget-object v1, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    return-object v1

    :cond_3
    aget-char v3, v1, v6

    const/16 v9, 0x78

    if-eq v3, v9, :cond_4

    const/16 v9, 0x58

    if-eq v3, v9, :cond_4

    sget-object v1, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    return-object v1

    :cond_4
    const/4 v3, 0x1

    add-int/2addr v6, v3

    const-wide/16 v9, 0x0

    :goto_1
    array-length v11, v1

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    if-ge v6, v11, :cond_5

    aget-char v11, v1, v6

    invoke-virtual {p0, v11}, Lcom/prineside/luaj/compiler/LexState;->u0(I)Z

    move-result v11

    if-eqz v11, :cond_5

    mul-double v9, v9, v12

    add-int/lit8 v11, v6, 0x1

    aget-char v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/prineside/luaj/compiler/LexState;->m0(I)I

    move-result v6

    int-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v12

    move v6, v11

    goto :goto_1

    :cond_5
    array-length v11, v1

    if-ge v6, v11, :cond_6

    aget-char v11, v1, v6

    const/16 v14, 0x2e

    if-ne v11, v14, :cond_6

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    :goto_2
    array-length v14, v1

    if-ge v6, v14, :cond_7

    aget-char v14, v1, v6

    invoke-virtual {p0, v14}, Lcom/prineside/luaj/compiler/LexState;->u0(I)Z

    move-result v14

    if-eqz v14, :cond_7

    mul-double v9, v9, v12

    add-int/lit8 v14, v6, 0x1

    aget-char v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/prineside/luaj/compiler/LexState;->m0(I)I

    move-result v6

    int-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v12

    add-int/lit8 v11, v11, -0x4

    move v6, v14

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :cond_7
    array-length v12, v1

    if-ge v6, v12, :cond_c

    aget-char v12, v1, v6

    const/16 v13, 0x70

    if-eq v12, v13, :cond_8

    const/16 v13, 0x50

    if-ne v12, v13, :cond_c

    :cond_8
    add-int/2addr v6, v3

    array-length v12, v1

    if-ge v6, v12, :cond_9

    aget-char v12, v1, v6

    if-ne v12, v7, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    array-length v7, v1

    if-ge v6, v7, :cond_a

    aget-char v7, v1, v6

    invoke-virtual {p0, v7}, Lcom/prineside/luaj/compiler/LexState;->s0(I)Z

    move-result v7

    if-eqz v7, :cond_a

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v7, v6, 0x1

    aget-char v6, v1, v6

    add-int/2addr v2, v6

    sub-int/2addr v2, v8

    move v6, v7

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    neg-int v2, v2

    :cond_b
    add-int/2addr v11, v2

    :cond_c
    mul-double v4, v4, v9

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    int-to-double v6, v11

    invoke-static {v1, v2, v6, v7}, Lcom/prineside/luaj/lib/MathLib;->dpow_d(DD)D

    move-result-wide v1

    mul-double v4, v4, v1

    invoke-static {v4, v5}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object v1

    return-object v1
.end method

.method public k0(I)V
    .locals 6

    iget v4, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    const/16 v0, 0x10a

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->i1()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    const-string v0, "break"

    invoke-static {v0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    :goto_0
    move-object v3, v0

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->c:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget v2, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/prineside/luaj/compiler/Constants;->l([Lcom/prineside/luaj/compiler/LexState$Labeldesc;I)[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->c:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v2, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/compiler/LexState;->G0([Lcom/prineside/luaj/compiler/LexState$Labeldesc;ILcom/prineside/luaj/LuaString;II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->a0(I)Z

    return-void
.end method

.method public k1(Lcom/prineside/luaj/compiler/LexState$expdesc;I)I
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->S()V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->j0(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2}, Lcom/prineside/luaj/compiler/LexState;->k1(Lcom/prineside/luaj/compiler/LexState$expdesc;I)I

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, v0, p1, v1}, Lcom/prineside/luaj/compiler/FuncState;->G0(ILcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->a1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->i0(I)I

    move-result v0

    :goto_1
    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/prineside/luaj/compiler/LexState;->s:[Lcom/prineside/luaj/compiler/LexState$Priority;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/prineside/luaj/compiler/LexState$Priority;->a:B

    if-le v1, p2, :cond_1

    new-instance v1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iget v2, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    iget-object v3, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v3, v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->n0(ILcom/prineside/luaj/compiler/LexState$expdesc;)V

    sget-object v3, Lcom/prineside/luaj/compiler/LexState;->s:[Lcom/prineside/luaj/compiler/LexState$Priority;

    aget-object v3, v3, v0

    iget-byte v3, v3, Lcom/prineside/luaj/compiler/LexState$Priority;->b:B

    invoke-virtual {p0, v1, v3}, Lcom/prineside/luaj/compiler/LexState;->k1(Lcom/prineside/luaj/compiler/LexState$expdesc;I)I

    move-result v3

    iget-object v4, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v4, v0, p1, v1, v2}, Lcom/prineside/luaj/compiler/FuncState;->F0(ILcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->w0()V

    return v0
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

.method public l1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->N0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :goto_0
    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v2, 0x28

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x121

    if-eq v1, v2, :cond_3

    return-void

    :cond_0
    new-instance v1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, p1}, Lcom/prineside/luaj/compiler/FuncState;->V(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->t1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, p1, v1}, Lcom/prineside/luaj/compiler/FuncState;->m0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->J(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, p1, v1}, Lcom/prineside/luaj/compiler/FuncState;->N0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->f0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->Y(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v1, p1}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->f0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    goto :goto_0
.end method

.method public m0(I)I
    .locals 1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, -0x41

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, -0x61

    :goto_0
    return p1
.end method

.method public m1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    return-void
.end method

.method public mainfunc(Lcom/prineside/luaj/compiler/FuncState;)V
    .locals 2

    new-instance v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->L0(Lcom/prineside/luaj/compiler/FuncState;Lcom/prineside/luaj/compiler/FuncState$BlockCnt;)V

    iget-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object p1, p1, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    const/4 v0, 0x1

    iput v0, p1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    new-instance p1, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {p1}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->m:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/luaj/compiler/FuncState;->w0(Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->g1()V

    const/16 p1, 0x11e

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->E(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->L()V

    return-void
.end method

.method public n0(I)V
    .locals 3

    new-instance v0, Lcom/prineside/luaj/compiler/IntPtr;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/prineside/luaj/compiler/IntPtr;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->n1(Lcom/prineside/luaj/compiler/IntPtr;)V

    :goto_0
    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v2, 0x105

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->n1(Lcom/prineside/luaj/compiler/IntPtr;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->A()V

    :cond_1
    const/16 v1, 0x106

    const/16 v2, 0x10b

    invoke-virtual {p0, v1, v2, p1}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    iget-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    return-void
.end method

.method public n1(Lcom/prineside/luaj/compiler/IntPtr;)V
    .locals 5

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    new-instance v1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    const/16 v2, 0x113

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v2, v2, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/4 v3, 0x0

    const/16 v4, 0x10a

    if-eq v2, v4, :cond_1

    const/16 v4, 0x102

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, v0}, Lcom/prineside/luaj/compiler/FuncState;->k0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, v1, v3}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, v0}, Lcom/prineside/luaj/compiler/FuncState;->j0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v2, v1, v3}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    iget-object v0, v0, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->k0(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->e1()V

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/compiler/LexState;->B(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {p1}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->p0()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->g1()V

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v1}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    const/16 v2, 0x104

    if-eq v1, v2, :cond_3

    const/16 v2, 0x105

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v1}, Lcom/prineside/luaj/compiler/FuncState;->p0()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/prineside/luaj/compiler/FuncState;->K(Lcom/prineside/luaj/compiler/IntPtr;I)V

    :cond_4
    iget-object p1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    return-void
.end method

.method public o0()V
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->R()Z

    move-result v1

    invoke-static {v1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    :cond_0
    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    const v1, 0x7ffffffd

    if-lt v0, v1, :cond_1

    const-string v0, "chunk has too many lines"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->m1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public o1(I)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->d:Lcom/prineside/luaj/compiler/LexState$Token;

    iget v0, v0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p0(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x5f

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public p1(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x101

    if-ge p1, v0, :cond_1

    invoke-static {p1}, Lcom/prineside/luaj/compiler/LexState;->r0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "char("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    sget-object v1, Lcom/prineside/luaj/compiler/LexState;->q:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1
.end method

.method public final q0(I)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q1(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->p1(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x11f
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public r1(Lcom/prineside/luaj/compiler/LexState$Labeldesc;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/luaj/compiler/LexState;->isReservedKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not inside a loop"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no visible label \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->a:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' for <goto> at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method public final s0(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s1(I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    new-instance v1, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->h0()I

    move-result v2

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->P()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/prineside/luaj/compiler/FuncState;->R(Lcom/prineside/luaj/compiler/FuncState$BlockCnt;Z)V

    const/16 v1, 0x103

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->A()V

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->p0()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/luaj/compiler/FuncState;->B0(II)V

    const/16 v1, 0x106

    const/16 v2, 0x116

    invoke-virtual {p0, v1, v2, p1}, Lcom/prineside/luaj/compiler/LexState;->H(III)V

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->s0()V

    invoke-virtual {v0, v3}, Lcom/prineside/luaj/compiler/FuncState;->E0(I)V

    return-void
.end method

.method public final t0(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public t1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->J0()V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->Y(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    return-void
.end method

.method public final u0(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x66

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_3

    const/16 v0, 0x46

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v0(Lcom/prineside/luaj/LuaString;I)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v2, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    invoke-virtual {v0, v2, v1, p1}, Lcom/prineside/luaj/compiler/FuncState;->x([Lcom/prineside/luaj/compiler/LexState$Labeldesc;ILcom/prineside/luaj/LuaString;)V

    const/16 v0, 0x11d

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget v2, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/prineside/luaj/compiler/Constants;->l([Lcom/prineside/luaj/compiler/LexState$Labeldesc;I)[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget v5, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    add-int/lit8 v1, v5, 0x1

    iput v1, v0, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {v0}, Lcom/prineside/luaj/compiler/FuncState;->h0()I

    move-result v8

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/prineside/luaj/compiler/LexState;->G0([Lcom/prineside/luaj/compiler/LexState$Labeldesc;ILcom/prineside/luaj/LuaString;II)I

    move-result p1

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->e1()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/LexState;->B(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object p2, p2, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    aget-object p2, p2, p1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v0, v0, Lcom/prineside/luaj/compiler/FuncState;->e:Lcom/prineside/luaj/compiler/FuncState$BlockCnt;

    iget-short v0, v0, Lcom/prineside/luaj/compiler/FuncState$BlockCnt;->d:S

    iput-short v0, p2, Lcom/prineside/luaj/compiler/LexState$Labeldesc;->d:S

    :cond_0
    iget-object p2, p0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    iget-object p2, p2, Lcom/prineside/luaj/compiler/LexState$Dyndata;->e:[Lcom/prineside/luaj/compiler/LexState$Labeldesc;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->Z(Lcom/prineside/luaj/compiler/LexState$Labeldesc;)V

    return-void
.end method

.method public w()Lcom/prineside/luaj/Prototype;
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object v1, v0, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    iget-object v2, v1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    if-eqz v2, :cond_0

    iget v3, v0, Lcom/prineside/luaj/compiler/FuncState;->j:I

    array-length v4, v2

    if-lt v3, v4, :cond_1

    :cond_0
    iget v0, v0, Lcom/prineside/luaj/compiler/FuncState;->j:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Lcom/prineside/luaj/compiler/Constants;->q([Lcom/prineside/luaj/Prototype;I)[Lcom/prineside/luaj/Prototype;

    move-result-object v0

    iput-object v0, v1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    :cond_1
    iget-object v0, v1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget v2, v1, Lcom/prineside/luaj/compiler/FuncState;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/prineside/luaj/compiler/FuncState;->j:I

    new-instance v1, Lcom/prineside/luaj/Prototype;

    invoke-direct {v1}, Lcom/prineside/luaj/Prototype;-><init>()V

    aput-object v1, v0, v2

    return-object v1
.end method

.method public w0()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    iget v1, v0, Lcom/prineside/luaj/compiler/LuaC$CompileState;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/prineside/luaj/compiler/LuaC$CompileState;->a:I

    return-void
.end method

.method public x(IILcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    sub-int/2addr p1, p2

    iget p2, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/LexState;->l0(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p3, p1}, Lcom/prineside/luaj/compiler/FuncState;->R0(Lcom/prineside/luaj/compiler/LexState$expdesc;I)V

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    goto :goto_0

    :cond_1
    iget p2, p3, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-eqz p2, :cond_2

    invoke-virtual {v0, p3}, Lcom/prineside/luaj/compiler/FuncState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :cond_2
    if-lez p1, :cond_3

    iget-short p2, v0, Lcom/prineside/luaj/compiler/FuncState;->o:S

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/compiler/FuncState;->J0(I)V

    invoke-virtual {v0, p2, p1}, Lcom/prineside/luaj/compiler/FuncState;->x0(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public x0(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->l:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/Lua;->chunkid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->g:Lcom/prineside/luaj/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " near "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/compiler/LexState;->q1(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    new-instance p2, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public y(I)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    :goto_0
    if-lez p1, :cond_0

    iget-short v1, v0, Lcom/prineside/luaj/compiler/FuncState;->m:S

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/FuncState;->i0(I)Lcom/prineside/luaj/LocVars;

    move-result-object v1

    iget v2, v0, Lcom/prineside/luaj/compiler/FuncState;->f:I

    iput v2, v1, Lcom/prineside/luaj/LocVars;->startpc:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y0(Lcom/prineside/luaj/compiler/LexState$ConsControl;)V
    .locals 4

    iget-object v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->a:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->W(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget v1, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    const v2, 0x7ffffffd

    const-string v3, "items in a constructor"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/luaj/compiler/FuncState;->w(IILjava/lang/String;)V

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->d:I

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/prineside/luaj/compiler/LexState$ConsControl;->e:I

    return-void
.end method

.method public z(Lcom/prineside/luaj/compiler/LexState$LHS_assign;I)V
    .locals 6

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc;-><init>()V

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget v1, v1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-gt v4, v1, :cond_0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "syntax error"

    invoke-virtual {p0, v1, v4}, Lcom/prineside/luaj/compiler/LexState;->F(ZLjava/lang/String;)V

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->o1(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LexState$LHS_assign;-><init>()V

    iput-object p1, v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->a:Lcom/prineside/luaj/compiler/LexState$LHS_assign;

    iget-object v4, v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/compiler/LexState;->l1(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object v4, v1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    iget v5, v4, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    if-eq v5, v2, :cond_1

    invoke-virtual {p0, p1, v4}, Lcom/prineside/luaj/compiler/LexState;->G(Lcom/prineside/luaj/compiler/LexState$LHS_assign;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    :cond_1
    add-int/2addr p2, v3

    invoke-virtual {p0, v1, p2}, Lcom/prineside/luaj/compiler/LexState;->z(Lcom/prineside/luaj/compiler/LexState$LHS_assign;I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->K(I)V

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->V(Lcom/prineside/luaj/compiler/LexState$expdesc;)I

    move-result v1

    if-eq v1, p2, :cond_4

    invoke-virtual {p0, p2, v1, v0}, Lcom/prineside/luaj/compiler/LexState;->x(IILcom/prineside/luaj/compiler/LexState$expdesc;)V

    if-le v1, p2, :cond_3

    iget-object v2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-short v4, v2, Lcom/prineside/luaj/compiler/FuncState;->o:S

    sub-int/2addr v1, p2

    sub-int/2addr v4, v1

    int-to-short p2, v4

    iput-short p2, v2, Lcom/prineside/luaj/compiler/FuncState;->o:S

    :cond_3
    :goto_1
    const/4 p2, 0x6

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-short v1, v1, Lcom/prineside/luaj/compiler/FuncState;->o:S

    sub-int/2addr v1, v3

    invoke-virtual {v0, p2, v1}, Lcom/prineside/luaj/compiler/LexState$expdesc;->b(II)V

    iget-object p2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {p2, p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->T0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/compiler/FuncState;->Q0(Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    iget-object p2, p0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$LHS_assign;->b:Lcom/prineside/luaj/compiler/LexState$expdesc;

    invoke-virtual {p2, p1, v0}, Lcom/prineside/luaj/compiler/FuncState;->T0(Lcom/prineside/luaj/compiler/LexState$expdesc;Lcom/prineside/luaj/compiler/LexState$expdesc;)V

    return-void
.end method

.method public z0(Lcom/prineside/luaj/compiler/LexState$SemInfo;)I
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    const/16 v3, 0x20

    if-eq v1, v3, :cond_15

    const/16 v3, 0x22

    const/16 v4, 0x121

    if-eq v1, v3, :cond_14

    const/16 v3, 0x27

    if-eq v1, v3, :cond_14

    const/16 v3, 0x5b

    const/16 v5, 0x3d

    if-eq v1, v3, :cond_10

    const/16 v4, 0x7e

    if-eq v1, v4, :cond_e

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_b

    const/16 v2, 0x11f

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_7

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->q0(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    return v1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/compiler/LexState;->p0(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState;->i:[C

    iget v2, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/prineside/luaj/compiler/LexState;->I0([CII)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sget-object v1, Lcom/prineside/luaj/compiler/LexState;->r:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    iput-object v0, p1, Lcom/prineside/luaj/compiler/LexState$SemInfo;->b:Lcom/prineside/luaj/LuaString;

    const/16 p1, 0x120

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget p1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-eq p1, v5, :cond_4

    const/16 p1, 0x3e

    return p1

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    const/16 p1, 0x11a

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget p1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-eq p1, v5, :cond_5

    const/16 p1, 0x3c

    return p1

    :cond_5
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    const/16 p1, 0x11b

    return p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget p1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    const/16 p1, 0x11d

    return p1

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->P0(Lcom/prineside/luaj/compiler/LexState$SemInfo;)V

    return v2

    :pswitch_4
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->o0()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->X0()V

    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->I(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->I(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x118

    return p1

    :cond_8
    const/16 p1, 0x117

    return p1

    :cond_9
    iget v0, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/compiler/LexState;->s0(I)Z

    move-result v0

    if-nez v0, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LexState;->P0(Lcom/prineside/luaj/compiler/LexState$SemInfo;)V

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-eq v1, v4, :cond_c

    return v4

    :cond_c
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-ne v1, v3, :cond_d

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->d1()I

    move-result v1

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    if-ltz v1, :cond_d

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/prineside/luaj/compiler/LexState;->O0(Lcom/prineside/luaj/compiler/LexState$SemInfo;I)V

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState;->j:I

    goto/16 :goto_0

    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->R()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget p1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-eq p1, v5, :cond_f

    return v4

    :cond_f
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    const/16 p1, 0x11c

    return p1

    :cond_10
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->d1()I

    move-result v0

    if-ltz v0, :cond_11

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/compiler/LexState;->O0(Lcom/prineside/luaj/compiler/LexState$SemInfo;I)V

    return v4

    :cond_11
    if-ne v0, v2, :cond_12

    return v3

    :cond_12
    const-string p1, "invalid long string delimiter"

    invoke-virtual {p0, p1, v4}, Lcom/prineside/luaj/compiler/LexState;->x0(Ljava/lang/String;I)V

    :pswitch_5
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    iget p1, p0, Lcom/prineside/luaj/compiler/LexState;->a:I

    if-eq p1, v5, :cond_13

    return v5

    :cond_13
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    const/16 p1, 0x119

    return p1

    :cond_14
    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/compiler/LexState;->Q0(ILcom/prineside/luaj/compiler/LexState$SemInfo;)V

    return v4

    :cond_15
    :pswitch_6
    invoke-virtual {p0}, Lcom/prineside/luaj/compiler/LexState;->K0()V

    goto/16 :goto_0

    :cond_16
    const/16 p1, 0x11e

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
