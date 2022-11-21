.class public Lcom/prineside/luaj/parser/LuaParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/parser/LuaParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;,
        Lcom/prineside/luaj/parser/LuaParser$JJCalls;
    }
.end annotation


# static fields
.field public static q:[I

.field public static r:[I

.field public static s:[I


# instance fields
.field public a:Lcom/prineside/luaj/parser/SimpleCharStream;

.field public b:I

.field public c:Lcom/prineside/luaj/parser/Token;

.field public d:Lcom/prineside/luaj/parser/Token;

.field public e:I

.field public f:I

.field public final g:[I

.field public final h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

.field public i:Z

.field public j:I

.field public jj_nt:Lcom/prineside/luaj/parser/Token;

.field public final k:Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;

.field public l:Ljava/util/List;

.field public m:[I

.field public n:I

.field public o:[I

.field public p:I

.field public token:Lcom/prineside/luaj/parser/Token;

.field public token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Z)Lcom/prineside/luaj/LuaBoolean;

    invoke-static {}, Lcom/prineside/luaj/parser/LuaParser;->H0()V

    invoke-static {}, Lcom/prineside/luaj/parser/LuaParser;->I0()V

    invoke-static {}, Lcom/prineside/luaj/parser/LuaParser;->J0()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/parser/LuaParserTokenManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/luaj/parser/LuaParser;->i:Z

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->j:I

    new-instance v2, Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;-><init>(Lcom/prineside/luaj/parser/LuaParser$1;)V

    iput-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->k:Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lcom/prineside/luaj/parser/LuaParser;->n:I

    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->o:[I

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    new-instance p1, Lcom/prineside/luaj/parser/Token;

    invoke-direct {p1}, Lcom/prineside/luaj/parser/Token;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    array-length v0, p1

    if-ge v1, v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/LuaParser$JJCalls;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/prineside/luaj/parser/LuaParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/luaj/parser/LuaParser;->i:Z

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->j:I

    new-instance v2, Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;-><init>(Lcom/prineside/luaj/parser/LuaParser$1;)V

    iput-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->k:Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lcom/prineside/luaj/parser/LuaParser;->n:I

    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->o:[I

    :try_start_0
    new-instance v3, Lcom/prineside/luaj/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4, v4}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/prineside/luaj/parser/LuaParserTokenManager;

    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-direct {p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;-><init>(Lcom/prineside/luaj/parser/SimpleCharStream;)V

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    new-instance p1, Lcom/prineside/luaj/parser/Token;

    invoke-direct {p1}, Lcom/prineside/luaj/parser/Token;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    array-length p2, p1

    if-ge v1, p2, :cond_1

    new-instance p2, Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    invoke-direct {p2}, Lcom/prineside/luaj/parser/LuaParser$JJCalls;-><init>()V

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/luaj/parser/LuaParser;->i:Z

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->j:I

    new-instance v2, Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;-><init>(Lcom/prineside/luaj/parser/LuaParser$1;)V

    iput-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->k:Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lcom/prineside/luaj/parser/LuaParser;->n:I

    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->o:[I

    new-instance v3, Lcom/prineside/luaj/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lcom/prineside/luaj/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    new-instance p1, Lcom/prineside/luaj/parser/LuaParserTokenManager;

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-direct {p1, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;-><init>(Lcom/prineside/luaj/parser/SimpleCharStream;)V

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    new-instance p1, Lcom/prineside/luaj/parser/Token;

    invoke-direct {p1}, Lcom/prineside/luaj/parser/Token;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    array-length v0, p1

    if-ge v1, v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/LuaParser$JJCalls;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static H0()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/luaj/parser/LuaParser;->q:[I

    return-void

    :array_0
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x0
        0x0
        0x0
        -0x40000000    # -2.0f
        0x0
        0x0
        0x0
        0x0
        0xf800000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf800000
        0xf800000
        0xf800000
        0x0
        0xf800000
        0xf800000
        0xf800000
        0x0
        0x0
        0x0
        0xf800000
        0x0
        0x0
        0xf800000
        0x0
        0x20000000
        0x0
    .end array-data
.end method

.method public static I0()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/luaj/parser/LuaParser;->r:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xc42f0
        0x2000
        0x0
        0x0
        0x440c0
        0x30
        0x80200
        0x2
        0x1
        0x60190c28
        0x0
        0x0
        0x0
        0x0
        0x0
        0x80000
        0x60000000
        0x60190c28
        0x60000000
        0x0
        0x60190428
        0x60000000
        0x60190c28
        0x80000
        0x0
        0x80000
        0x60190c28
        0x0
        0x0
        0x60190c28
        0x0
        0x1000
        0x800
    .end array-data
.end method

.method public static J0()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/luaj/parser/LuaParser;->s:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x842
        0x0
        0x100
        0x80
        0x42
        0x0
        0x800
        0x0
        0x0
        0x98820
        0x40
        0x180
        0x100
        0x200
        0x400
        0x800
        0x12e00
        0x98820
        0x10800
        0x100
        0x18800
        0x0
        0x98820
        0x8000
        0x100
        0x8000
        0x9a820
        0x140
        0x2000
        0x98820
        0x140
        0x7ffc0000
        0x80020
    .end array-data
.end method

.method public static d(Lcom/prineside/luaj/ast/Exp$PrimaryExp;)Lcom/prineside/luaj/ast/Exp$FuncCall;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/Exp$PrimaryExp;->isfunccall()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/prineside/luaj/ast/Exp$FuncCall;

    return-object p0

    :cond_0
    new-instance p0, Lcom/prineside/luaj/parser/ParseException;

    const-string v0, "expected function call"

    invoke-direct {p0, v0}, Lcom/prineside/luaj/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/prineside/luaj/ast/Exp$PrimaryExp;)Lcom/prineside/luaj/ast/Exp$VarExp;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/Exp$PrimaryExp;->isvarexp()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/prineside/luaj/ast/Exp$VarExp;

    return-object p0

    :cond_0
    new-instance p0, Lcom/prineside/luaj/parser/ParseException;

    const-string v0, "expected variable"

    invoke-direct {p0, v0}, Lcom/prineside/luaj/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/prineside/luaj/parser/LuaParser;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Chunk()Lcom/prineside/luaj/ast/Chunk;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Assign(Lcom/prineside/luaj/ast/Exp$VarExp;)Lcom/prineside/luaj/ast/Stat;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v1

    :goto_0
    iget p1, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result p1

    :cond_0
    const/16 v3, 0x48

    if-eq p1, v3, :cond_1

    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v3, 0xd

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v4, p1, v3

    const/16 p1, 0x47

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/luaj/ast/Stat;->assignment(Ljava/util/List;Ljava/util/List;)Lcom/prineside/luaj/ast/Stat;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object p1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->VarExp()Lcom/prineside/luaj/ast/Exp$VarExp;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final B()Z
    .locals 1

    const/16 v0, 0x58

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B0()Z
    .locals 2

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final Binop()I
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v0

    :cond_0
    const/16 v2, 0x1d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v2, 0x20

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x5e

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x3d

    return v0

    :pswitch_1
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x18

    return v0

    :pswitch_2
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x3e

    return v0

    :pswitch_3
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x3f

    return v0

    :pswitch_4
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x1a

    return v0

    :pswitch_5
    const/16 v0, 0x59

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x19

    return v0

    :pswitch_6
    const/16 v0, 0x58

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x16

    return v0

    :pswitch_7
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x11

    return v0

    :pswitch_8
    const/16 v0, 0x56

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x12

    return v0

    :pswitch_9
    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x10

    return v0

    :pswitch_a
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0xf

    return v0

    :pswitch_b
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0xe

    return v0

    :pswitch_c
    const/16 v0, 0x52

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0xd

    return v0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x3b

    return v0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x3c

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x52
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

.method public final Block()Lcom/prineside/luaj/ast/Block;
    .locals 7

    new-instance v0, Lcom/prineside/luaj/ast/Block;

    invoke-direct {v0}, Lcom/prineside/luaj/ast/Block;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v1

    :goto_0
    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v3

    :cond_0
    const/16 v5, 0x1e

    if-eq v3, v5, :cond_3

    const/16 v5, 0x1f

    if-eq v3, v5, :cond_3

    const/16 v5, 0x29

    if-eq v3, v5, :cond_3

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_3

    const/16 v5, 0x41

    if-eq v3, v5, :cond_3

    const/16 v5, 0x46

    if-eq v3, v5, :cond_3

    const/16 v5, 0x4b

    if-eq v3, v5, :cond_3

    const/16 v5, 0x32

    if-eq v3, v5, :cond_3

    const/16 v5, 0x33

    if-eq v3, v5, :cond_3

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v5, 0x1

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v6, v3, v5

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v3

    :cond_1
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v4, 0x2

    iget v5, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v5, v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->ReturnStat()Lcom/prineside/luaj/ast/Stat;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/prineside/luaj/ast/Block;->add(Lcom/prineside/luaj/ast/Stat;)V

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v0

    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Stat()Lcom/prineside/luaj/ast/Stat;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/prineside/luaj/ast/Block;->add(Lcom/prineside/luaj/ast/Stat;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final C()Z
    .locals 1

    const/16 v0, 0x59

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final Chunk()Lcom/prineside/luaj/ast/Chunk;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x45

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v4, v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->SwitchTo(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v3, Lcom/prineside/luaj/ast/Chunk;

    invoke-direct {v3, v2}, Lcom/prineside/luaj/ast/Chunk;-><init>(Lcom/prineside/luaj/ast/Block;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v3
.end method

.method public final D()Z
    .locals 1

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Z
    .locals 1

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E0()Z
    .locals 2

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x47

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final Exp()Lcom/prineside/luaj/ast/Exp;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x23

    if-eq v2, v4, :cond_2

    const/16 v4, 0x25

    if-eq v2, v4, :cond_2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2

    const/16 v4, 0x45

    if-eq v2, v4, :cond_1

    const/16 v4, 0x4b

    if-eq v2, v4, :cond_2

    const/16 v4, 0x53

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_1

    const/16 v4, 0x33

    if-eq v2, v4, :cond_2

    const/16 v4, 0x34

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_2

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_2

    const/16 v4, 0x50

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v1, 0x17

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Unop()I

    move-result v2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prineside/luaj/ast/Exp;->unaryexp(ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    goto :goto_0

    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->SimpleExp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->j(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Binop()I

    move-result v3

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/prineside/luaj/ast/Exp;->binaryexp(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ExpList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v1, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v1

    :cond_0
    const/16 v2, 0x48

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v2, 0x14

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v3, v1, v2

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final ExprStat()Lcom/prineside/luaj/ast/Stat;
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->PrimaryExp()Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    move-result-object v2

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v3

    :cond_0
    const/16 v4, 0x47

    if-eq v3, v4, :cond_1

    const/16 v4, 0x48

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v4, 0xc

    iget v5, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v5, v3, v4

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/prineside/luaj/parser/LuaParser;->e(Lcom/prineside/luaj/ast/Exp$PrimaryExp;)Lcom/prineside/luaj/ast/Exp$VarExp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->Assign(Lcom/prineside/luaj/ast/Exp$VarExp;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/prineside/luaj/parser/LuaParser;->d(Lcom/prineside/luaj/ast/Exp$PrimaryExp;)Lcom/prineside/luaj/ast/Exp$FuncCall;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/luaj/ast/Stat;->functioncall(Lcom/prineside/luaj/ast/Exp$FuncCall;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v3

    :cond_2
    invoke-virtual {p0, v3, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v3
.end method

.method public final F()Z
    .locals 1

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F0(II)V
    .locals 6

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/luaj/parser/LuaParser;->p:I

    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParser;->o:[I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->p:I

    aput p1, p2, v0

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->m:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->p:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->m:[I

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->o:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    iget-object v4, p0, Lcom/prineside/luaj/parser/LuaParser;->m:[I

    array-length v4, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/prineside/luaj/parser/LuaParser;->m:[I

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget v5, v2, v3

    aget v4, v4, v3

    if-eq v5, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->o:[I

    iput p2, p0, Lcom/prineside/luaj/parser/LuaParser;->p:I

    add-int/lit8 p2, p2, -0x1

    aput p1, v0, p2

    :cond_7
    :goto_3
    return-void
.end method

.method public final Field()Lcom/prineside/luaj/ast/TableField;
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x47

    const/16 v5, 0x4d

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v5, 0x1d

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v6, v2, v5

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->l(I)Z

    move-result v2

    const/16 v5, 0x33

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v3

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/prineside/luaj/ast/TableField;->namedField(Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/TableField;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_1
    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_2
    const/16 v4, 0x23

    if-eq v2, v4, :cond_3

    const/16 v4, 0x25

    if-eq v2, v4, :cond_3

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3

    const/16 v4, 0x45

    if-eq v2, v4, :cond_3

    const/16 v4, 0x4b

    if-eq v2, v4, :cond_3

    const/16 v4, 0x53

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_3

    const/16 v4, 0x34

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_3

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_3

    const/16 v4, 0x50

    if-eq v2, v4, :cond_3

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v1, 0x1e

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/luaj/ast/TableField;->listField(Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/TableField;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_4
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prineside/luaj/ast/TableField;->keyedField(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/TableField;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final FieldList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/TableField;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Field()Lcom/prineside/luaj/ast/TableField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->k(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FieldSep()V

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Field()Lcom/prineside/luaj/ast/TableField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v1

    :cond_1
    const/16 v2, 0x46

    if-eq v1, v2, :cond_2

    const/16 v2, 0x48

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v2, 0x1c

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v3, v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FieldSep()V

    :goto_1
    return-object v0
.end method

.method public final FieldSep()V
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v0

    :cond_0
    const/16 v2, 0x46

    if-eq v0, v2, :cond_2

    const/16 v2, 0x48

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v2, 0x1f

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    :goto_0
    return-void
.end method

.method public final FuncArgs()Lcom/prineside/luaj/ast/FuncArgs;
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x3d

    if-eq v2, v4, :cond_5

    const/16 v5, 0x3e

    if-eq v2, v5, :cond_5

    const/16 v6, 0x50

    const/16 v7, 0x4b

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v1, 0x13

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->TableConstructor()Lcom/prineside/luaj/ast/TableConstructor;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/luaj/ast/FuncArgs;->tableconstructor(Lcom/prineside/luaj/ast/TableConstructor;)Lcom/prineside/luaj/ast/FuncArgs;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_2
    invoke-virtual {p0, v7}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_3
    const/16 v3, 0x23

    if-eq v2, v3, :cond_4

    const/16 v3, 0x25

    if-eq v2, v3, :cond_4

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x45

    if-eq v2, v3, :cond_4

    if-eq v2, v7, :cond_4

    const/16 v3, 0x53

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x33

    if-eq v2, v3, :cond_4

    const/16 v3, 0x34

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_4

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_4

    if-eq v2, v6, :cond_4

    packed-switch v2, :pswitch_data_1

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v3, 0x12

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v2

    :goto_0
    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {v2}, Lcom/prineside/luaj/ast/FuncArgs;->explist(Ljava/util/List;)Lcom/prineside/luaj/ast/FuncArgs;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_5
    :pswitch_1
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Str()Lcom/prineside/luaj/LuaString;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/luaj/ast/FuncArgs;->string(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/ast/FuncArgs;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final FuncBody()Lcom/prineside/luaj/ast/FuncBody;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    const/16 v2, 0x4b

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v3, 0x33

    if-eq v2, v3, :cond_1

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v3, 0x18

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->ParList()Lcom/prineside/luaj/ast/ParList;

    move-result-object v2

    :goto_0
    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v4, Lcom/prineside/luaj/ast/FuncBody;

    invoke-direct {v4, v2, v3}, Lcom/prineside/luaj/ast/FuncBody;-><init>(Lcom/prineside/luaj/ast/ParList;Lcom/prineside/luaj/ast/Block;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v4
.end method

.method public final FuncName()Lcom/prineside/luaj/ast/FuncName;
    .locals 7

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    new-instance v2, Lcom/prineside/luaj/ast/FuncName;

    iget-object v3, v1, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/prineside/luaj/ast/FuncName;-><init>(Ljava/lang/String;)V

    :goto_0
    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v3

    :cond_0
    const/16 v5, 0x49

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v5, 0xe

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v6, v3, v5

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v3

    :cond_1
    const/16 v4, 0x4a

    if-eq v3, v4, :cond_2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v3, 0xf

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v4, v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    iget-object v0, v1, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    iput-object v0, v2, Lcom/prineside/luaj/ast/FuncName;->method:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/prineside/luaj/parser/LuaParser;->b(Lcom/prineside/luaj/ast/SyntaxElement;Lcom/prineside/luaj/parser/Token;)V

    return-object v2

    :cond_3
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    iget-object v3, v1, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/luaj/ast/FuncName;->adddot(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final FunctionCall()Lcom/prineside/luaj/ast/FuncBody;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FuncBody()Lcom/prineside/luaj/ast/FuncBody;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public final G()Z
    .locals 1

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final G0(I)Lcom/prineside/luaj/parser/Token;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v1, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->getNextToken()Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget v1, v1, Lcom/prineside/luaj/parser/Token;->kind:I

    if-ne v1, p1, :cond_4

    iget p1, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    iget p1, p0, Lcom/prineside/luaj/parser/LuaParser;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->j:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->j:I

    :goto_1
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    aget-object v0, v0, p1

    :goto_2
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->a:I

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->b:Lcom/prineside/luaj/parser/Token;

    :cond_1
    iget-object v0, v0, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->d:Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    return-object p1

    :cond_4
    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->n:I

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->generateParseException()Lcom/prineside/luaj/parser/ParseException;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final H()Z
    .locals 1

    const/16 v0, 0x5e

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Z
    .locals 1

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final IfThenElse()Lcom/prineside/luaj/ast/Stat;
    .locals 9

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    iget v6, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v6

    :cond_0
    const/16 v8, 0x21

    if-eq v6, v8, :cond_3

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v6, 0x8

    iget v8, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v8, v1, v6

    iget v1, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v1, v7, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v1

    :cond_1
    const/16 v6, 0x20

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v6, 0x9

    iget v7, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v7, v1, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v6}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v3

    :goto_1
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {v0, v2, v4, v5, v3}, Lcom/prineside/luaj/ast/Stat;->ifthenelse(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;Ljava/util/List;Ljava/util/List;Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0, v8}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v6

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v7

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final J()Z
    .locals 1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K0()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v1, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->jj_nt:Lcom/prineside/luaj/parser/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->getNextToken()Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    iget v0, v1, Lcom/prineside/luaj/parser/Token;->kind:I

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    return v0

    :cond_0
    iget v0, v1, Lcom/prineside/luaj/parser/Token;->kind:I

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    return v0
.end method

.method public final L()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L0()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/luaj/parser/LuaParser;->i:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    aget-object v2, v2, v1

    :cond_0
    iget v3, v2, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->a:I

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    if-le v3, v4, :cond_1

    iget v3, v2, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->c:I

    iput v3, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v3, v2, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->b:Lcom/prineside/luaj/parser/Token;

    iput-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->E0()Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->D0()Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->C0()Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->B0()Z

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->A0()Z

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->z0()Z

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->y0()Z

    :cond_1
    :goto_1
    iget-object v2, v2, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->d:Lcom/prineside/luaj/parser/LuaParser$JJCalls;
    :try_end_0
    .catch Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/prineside/luaj/parser/LuaParser;->i:Z

    return-void

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

.method public final Label()Lcom/prineside/luaj/ast/Stat;
    .locals 2

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v1, 0x33

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v0, v1, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/luaj/ast/Stat;->labelstat(Ljava/lang/String;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v0

    return-object v0
.end method

.method public final M()Z
    .locals 1

    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final M0(II)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    aget-object p1, v0, p1

    :goto_0
    iget v0, p1, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->a:I

    iget v1, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    if-le v0, v1, :cond_1

    iget-object v0, p1, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->d:Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/LuaParser$JJCalls;-><init>()V

    iput-object v0, p1, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->d:Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    move-object p1, v0

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->a:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p1, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->b:Lcom/prineside/luaj/parser/Token;

    iput p2, p1, Lcom/prineside/luaj/parser/LuaParser$JJCalls;->c:I

    return-void
.end method

.method public final N()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N0(I)Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v1, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->getNextToken()Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    :goto_0
    iget-boolean v0, p0, Lcom/prineside/luaj/parser/LuaParser;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    if-eq v0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v3}, Lcom/prineside/luaj/parser/LuaParser;->F0(II)V

    :cond_3
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iget v3, v0, Lcom/prineside/luaj/parser/Token;->kind:I

    if-eq v3, p1, :cond_4

    return v2

    :cond_4
    iget p1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    if-eq v0, p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->k:Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess;

    throw p1

    :cond_6
    :goto_2
    return v1
.end method

.method public final NameList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x33

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    new-instance v3, Lcom/prineside/luaj/ast/Name;

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/prineside/luaj/ast/Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x48

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    new-instance v3, Lcom/prineside/luaj/ast/Name;

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/prineside/luaj/ast/Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final O()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Z()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->b0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ParList()Lcom/prineside/luaj/ast/ParList;
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x33

    const/4 v5, 0x1

    const/16 v6, 0x4f

    if-eq v2, v4, :cond_2

    if-ne v2, v6, :cond_1

    invoke-virtual {p0, v6}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v2, Lcom/prineside/luaj/ast/ParList;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v5}, Lcom/prineside/luaj/ast/ParList;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v1, 0x1a

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v4, v3, :cond_3

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v4

    :cond_3
    const/16 v3, 0x48

    if-eq v4, v3, :cond_4

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v4, 0x19

    iget v5, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v5, v3, v4

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v6}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    :goto_0
    new-instance v3, Lcom/prineside/luaj/ast/ParList;

    invoke-direct {v3, v2, v5}, Lcom/prineside/luaj/ast/ParList;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v3
.end method

.method public final PostfixOp(Lcom/prineside/luaj/ast/Exp$PrimaryExp;)Lcom/prineside/luaj/ast/Exp$PrimaryExp;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x3d

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_2

    const/16 v4, 0x4d

    if-eq v2, v4, :cond_1

    const/16 v4, 0x50

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    const/16 v4, 0x33

    packed-switch v2, :pswitch_data_1

    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v0, 0x11

    iget v1, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v1, p1, v0

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance p1, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {p1}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw p1

    :pswitch_0
    const/16 v2, 0x4a

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FuncArgs()Lcom/prineside/luaj/ast/FuncArgs;

    move-result-object v3

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/prineside/luaj/ast/Exp;->methodop(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Ljava/lang/String;Lcom/prineside/luaj/ast/FuncArgs;)Lcom/prineside/luaj/ast/Exp$MethodCall;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object p1

    :pswitch_1
    const/16 v2, 0x49

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/prineside/luaj/ast/Exp;->fieldop(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Ljava/lang/String;)Lcom/prineside/luaj/ast/Exp$FieldExp;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object p1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {p1, v2}, Lcom/prineside/luaj/ast/Exp;->indexop(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp$IndexExp;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object p1

    :cond_2
    :pswitch_2
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FuncArgs()Lcom/prineside/luaj/ast/FuncArgs;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/prineside/luaj/ast/Exp;->functionop(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/FuncArgs;)Lcom/prineside/luaj/ast/Exp$FuncCall;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final PrefixExp()Lcom/prineside/luaj/ast/Exp$PrimaryExp;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x33

    if-eq v2, v4, :cond_2

    const/16 v4, 0x4b

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->parensprefix(Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Exp$ParensExp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v1, 0x10

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->nameprefix(Ljava/lang/String;)Lcom/prineside/luaj/ast/Exp$NameExp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public final PrimaryExp()Lcom/prineside/luaj/ast/Exp$PrimaryExp;
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->PrefixExp()Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->h(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->PostfixOp(Lcom/prineside/luaj/ast/Exp$PrimaryExp;)Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public final Q()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->d0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()Z
    .locals 3

    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->g0()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    :cond_1
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public ReInit(Lcom/prineside/luaj/parser/LuaParserTokenManager;)V
    .locals 3

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    new-instance p1, Lcom/prineside/luaj/parser/Token;

    invoke-direct {p1}, Lcom/prineside/luaj/parser/Token;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x22

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    invoke-direct {v1}, Lcom/prineside/luaj/parser/LuaParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/parser/LuaParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->ReInit(Lcom/prineside/luaj/parser/SimpleCharStream;)V

    new-instance p1, Lcom/prineside/luaj/parser/Token;

    invoke-direct {p1}, Lcom/prineside/luaj/parser/Token;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    array-length v0, p1

    if-ge p2, v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/LuaParser$JJCalls;-><init>()V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->ReInit(Lcom/prineside/luaj/parser/SimpleCharStream;)V

    new-instance p1, Lcom/prineside/luaj/parser/Token;

    invoke-direct {p1}, Lcom/prineside/luaj/parser/Token;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x22

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/prineside/luaj/parser/LuaParser;->h:[Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/prineside/luaj/parser/LuaParser$JJCalls;

    invoke-direct {v1}, Lcom/prineside/luaj/parser/LuaParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final ReturnStat()Lcom/prineside/luaj/ast/Stat;
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x23

    if-eq v2, v4, :cond_1

    const/16 v4, 0x25

    if-eq v2, v4, :cond_1

    const/16 v4, 0x30

    if-eq v2, v4, :cond_1

    const/16 v4, 0x45

    if-eq v2, v4, :cond_1

    const/16 v4, 0x4b

    if-eq v2, v4, :cond_1

    const/16 v4, 0x53

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_1

    const/16 v4, 0x33

    if-eq v2, v4, :cond_1

    const/16 v4, 0x34

    if-eq v2, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_1

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_1

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_1

    const/16 v4, 0x50

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v4, 0xa

    iget v5, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v5, v2, v4

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v2

    :goto_0
    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v4, v3, :cond_2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v4

    :cond_2
    const/16 v3, 0x46

    if-eq v4, v3, :cond_3

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v4, 0xb

    iget v5, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v5, v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    :goto_1
    invoke-static {v2}, Lcom/prineside/luaj/ast/Stat;->returnstat(Ljava/util/List;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final S()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final SimpleExp()Lcom/prineside/luaj/ast/Exp;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x23

    if-eq v2, v4, :cond_9

    const/16 v4, 0x25

    if-eq v2, v4, :cond_8

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x30

    if-eq v2, v4, :cond_6

    const/16 v4, 0x4b

    if-eq v2, v4, :cond_5

    const/16 v4, 0x33

    if-eq v2, v4, :cond_5

    const/16 v4, 0x34

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_3

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_2

    const/16 v4, 0x50

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v1, 0x15

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->TableConstructor()Lcom/prineside/luaj/ast/TableConstructor;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->tableconstructor(Lcom/prineside/luaj/ast/TableConstructor;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_2
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {}, Lcom/prineside/luaj/ast/Exp;->varargs()Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Str()Lcom/prineside/luaj/LuaString;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->constant(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_4
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->numberconstant(Ljava/lang/String;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_5
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->PrimaryExp()Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    sget-object v2, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->constant(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_7
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    sget-object v2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->constant(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_8
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FunctionCall()Lcom/prineside/luaj/ast/FuncBody;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->anonymousfunction(Lcom/prineside/luaj/ast/FuncBody;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_9
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    sget-object v2, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    invoke-static {v2}, Lcom/prineside/luaj/ast/Exp;->constant(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final Stat()Lcom/prineside/luaj/ast/Stat;
    .locals 12

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v0

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_0
    const/16 v4, 0x1e

    if-eq v2, v4, :cond_15

    const/16 v4, 0x22

    const/16 v5, 0x1f

    if-eq v2, v5, :cond_14

    const/16 v6, 0x26

    const/16 v7, 0x33

    if-eq v2, v6, :cond_13

    const/16 v6, 0x27

    if-eq v2, v6, :cond_12

    const/16 v6, 0x2e

    if-eq v2, v6, :cond_11

    const/16 v6, 0x32

    if-eq v2, v6, :cond_10

    const/16 v6, 0x41

    if-eq v2, v6, :cond_f

    const/16 v6, 0x46

    const/4 v8, 0x0

    if-eq v2, v6, :cond_e

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v6, 0x5

    iget v9, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v9, v2, v6

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->f(I)Z

    move-result v6

    const/16 v9, 0x47

    const/16 v10, 0x24

    if-eqz v6, :cond_3

    invoke-virtual {p0, v10}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v7}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v6

    invoke-virtual {p0, v9}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v7

    const/16 v9, 0x48

    invoke-virtual {p0, v9}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v10

    iget v11, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v11, v3, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v11

    :cond_1
    if-eq v11, v9, :cond_2

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    iget v9, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v9, v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v9}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v8

    :goto_0
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v3, v6, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v3, v7, v10, v8, v2}, Lcom/prineside/luaj/ast/Stat;->fornumeric(Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_3
    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_4
    if-eq v2, v10, :cond_d

    const/16 v4, 0x25

    if-eq v2, v4, :cond_c

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v5, 0x6

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v6, v2, v5

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->g(I)Z

    move-result v2

    const/16 v5, 0x29

    if-eqz v2, :cond_5

    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v7}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FuncBody()Lcom/prineside/luaj/ast/FuncBody;

    move-result-object v3

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/prineside/luaj/ast/Stat;->localfunctiondef(Ljava/lang/String;Lcom/prineside/luaj/ast/FuncBody;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_5
    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v2

    :cond_6
    if-eq v2, v5, :cond_9

    if-eq v2, v7, :cond_8

    const/16 v4, 0x4b

    if-ne v2, v4, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v1, 0x7

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v2, v0, v1

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->ExprStat()Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_9
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    if-ne v4, v3, :cond_a

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v4

    :cond_a
    if-eq v4, v9, :cond_b

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/4 v4, 0x4

    iget v5, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v5, v3, v4

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v9}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v8

    :goto_2
    invoke-static {v2, v8}, Lcom/prineside/luaj/ast/Stat;->localassignment(Ljava/util/List;Ljava/util/List;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_c
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FuncName()Lcom/prineside/luaj/ast/FuncName;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FuncBody()Lcom/prineside/luaj/ast/FuncBody;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prineside/luaj/ast/Stat;->functiondef(Lcom/prineside/luaj/ast/FuncName;Lcom/prineside/luaj/ast/FuncBody;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_d
    invoke-virtual {p0, v10}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {v2, v3, v5}, Lcom/prineside/luaj/ast/Stat;->forgeneric(Ljava/util/List;Ljava/util/List;Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_e
    invoke-virtual {p0, v6}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    return-object v8

    :cond_f
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Label()Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_10
    invoke-virtual {p0, v6}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {v2, v3}, Lcom/prineside/luaj/ast/Stat;->whiledo(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_11
    invoke-virtual {p0, v6}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v2

    const/16 v3, 0x31

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Exp()Lcom/prineside/luaj/ast/Exp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/prineside/luaj/ast/Stat;->repeatuntil(Lcom/prineside/luaj/ast/Block;Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_12
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->IfThenElse()Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_13
    invoke-virtual {p0, v6}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v7}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Lcom/prineside/luaj/ast/Stat;->gotostat(Ljava/lang/String;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_14
    invoke-virtual {p0, v5}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->Block()Lcom/prineside/luaj/ast/Block;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {v2}, Lcom/prineside/luaj/ast/Stat;->block(Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2

    :cond_15
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-static {}, Lcom/prineside/luaj/ast/Stat;->breakstat()Lcom/prineside/luaj/ast/Stat;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public final Str()Lcom/prineside/luaj/LuaString;
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v0

    :cond_0
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v2, 0x16

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/luaj/ast/Str;->longString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/luaj/ast/Str;->longString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/luaj/ast/Str;->longString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0

    :pswitch_3
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/luaj/ast/Str;->longString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0

    :pswitch_4
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/luaj/ast/Str;->longString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/luaj/ast/Str;->charString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v0, v0, Lcom/prineside/luaj/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/prineside/luaj/ast/Str;->quoteString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final T()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final TableConstructor()Lcom/prineside/luaj/ast/TableConstructor;
    .locals 6

    new-instance v0, Lcom/prineside/luaj/ast/TableConstructor;

    invoke-direct {v0}, Lcom/prineside/luaj/ast/TableConstructor;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->c()J

    move-result-wide v1

    const/16 v3, 0x50

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    iget v4, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v4

    :cond_0
    const/16 v5, 0x23

    if-eq v4, v5, :cond_1

    const/16 v5, 0x25

    if-eq v4, v5, :cond_1

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    const/16 v5, 0x45

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4b

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_1

    const/16 v5, 0x53

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    const/16 v5, 0x33

    if-eq v4, v5, :cond_1

    const/16 v5, 0x34

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4f

    if-eq v4, v5, :cond_1

    if-eq v4, v3, :cond_1

    packed-switch v4, :pswitch_data_0

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v4, 0x1b

    iget v5, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v5, v3, v4

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->FieldList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/prineside/luaj/ast/TableConstructor;->fields:Ljava/util/List;

    :goto_0
    const/16 v3, 0x51

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/luaj/parser/LuaParser;->a(Lcom/prineside/luaj/ast/SyntaxElement;J)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final U()Z
    .locals 1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Unop()I
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K0()I

    move-result v0

    :cond_0
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_3

    const/16 v2, 0x45

    if-eq v0, v2, :cond_2

    const/16 v2, 0x53

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x13

    return v0

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    const/16 v2, 0x21

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    aput v3, v0, v2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    new-instance v0, Lcom/prineside/luaj/parser/ParseException;

    invoke-direct {v0}, Lcom/prineside/luaj/parser/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x15

    return v0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/prineside/luaj/parser/LuaParser;->G0(I)Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x14

    return v0
.end method

.method public final V()Z
    .locals 1

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final VarExp()Lcom/prineside/luaj/ast/Exp$VarExp;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->PrimaryExp()Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/parser/LuaParser;->e(Lcom/prineside/luaj/ast/Exp$PrimaryExp;)Lcom/prineside/luaj/ast/Exp$VarExp;

    move-result-object v0

    return-object v0
.end method

.method public final W()Z
    .locals 1

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()Z
    .locals 1

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Z()Z
    .locals 1

    const/16 v0, 0x4f

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/prineside/luaj/ast/SyntaxElement;J)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v1, v0

    iput v1, p1, Lcom/prineside/luaj/ast/SyntaxElement;->beginLine:I

    long-to-int p3, p2

    int-to-short p2, p3

    iput-short p2, p1, Lcom/prineside/luaj/ast/SyntaxElement;->beginColumn:S

    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget p3, p2, Lcom/prineside/luaj/parser/Token;->endLine:I

    iput p3, p1, Lcom/prineside/luaj/ast/SyntaxElement;->endLine:I

    iget p2, p2, Lcom/prineside/luaj/parser/Token;->endColumn:I

    int-to-short p2, p2

    iput-short p2, p1, Lcom/prineside/luaj/ast/SyntaxElement;->endColumn:S

    return-void
.end method

.method public final a0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/prineside/luaj/ast/SyntaxElement;Lcom/prineside/luaj/parser/Token;)V
    .locals 1

    iget v0, p2, Lcom/prineside/luaj/parser/Token;->beginLine:I

    iput v0, p1, Lcom/prineside/luaj/ast/SyntaxElement;->beginLine:I

    iget p2, p2, Lcom/prineside/luaj/parser/Token;->beginColumn:I

    int-to-short p2, p2

    iput-short p2, p1, Lcom/prineside/luaj/ast/SyntaxElement;->beginColumn:S

    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget v0, p2, Lcom/prineside/luaj/parser/Token;->endLine:I

    iput v0, p1, Lcom/prineside/luaj/ast/SyntaxElement;->endLine:I

    iget p2, p2, Lcom/prineside/luaj/parser/Token;->endColumn:I

    int-to-short p2, p2

    iput-short p2, p1, Lcom/prineside/luaj/ast/SyntaxElement;->endColumn:S

    return-void
.end method

.method public final b0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->getBeginLine()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final c0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d0()Z
    .locals 1

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final e0()Z
    .locals 1

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public final f(I)Z
    .locals 3

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->y0()Z

    move-result v2
    :try_end_0
    .catch Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0
.end method

.method public final f0()Z
    .locals 1

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(I)Z
    .locals 2

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->z0()Z

    move-result v1
    :try_end_0
    .catch Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v0

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    throw v1

    :catch_0
    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0
.end method

.method public final g0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public generateParseException()Lcom/prineside/luaj/parser/ParseException;
    .locals 8

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x5f

    new-array v1, v0, [Z

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParser;->n:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    aput-boolean v3, v1, v2

    const/4 v2, -0x1

    iput v2, p0, Lcom/prineside/luaj/parser/LuaParser;->n:I

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x22

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParser;->g:[I

    aget v5, v5, v4

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    if-ne v5, v6, :cond_4

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x20

    if-ge v5, v6, :cond_4

    sget-object v6, Lcom/prineside/luaj/parser/LuaParser;->q:[I

    aget v6, v6, v4

    shl-int v7, v3, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    aput-boolean v3, v1, v5

    :cond_1
    sget-object v6, Lcom/prineside/luaj/parser/LuaParser;->r:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    add-int/lit8 v6, v5, 0x20

    aput-boolean v3, v1, v6

    :cond_2
    sget-object v6, Lcom/prineside/luaj/parser/LuaParser;->s:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, 0x40

    aput-boolean v3, v1, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_7

    aget-boolean v5, v1, v4

    if-eqz v5, :cond_6

    new-array v5, v3, [I

    iput-object v5, p0, Lcom/prineside/luaj/parser/LuaParser;->m:[I

    aput v4, v5, v2

    iget-object v6, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    iput v2, p0, Lcom/prineside/luaj/parser/LuaParser;->p:I

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->L0()V

    invoke-virtual {p0, v2, v2}, Lcom/prineside/luaj/parser/LuaParser;->F0(II)V

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    :goto_3
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    new-instance v1, Lcom/prineside/luaj/parser/ParseException;

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    sget-object v3, Lcom/prineside/luaj/parser/LuaParserConstants;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/prineside/luaj/parser/ParseException;-><init>(Lcom/prineside/luaj/parser/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public getCharStream()Lcom/prineside/luaj/parser/SimpleCharStream;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    return-object v0
.end method

.method public final getNextToken()Lcom/prineside/luaj/parser/Token;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iget-object v1, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->getNextToken()Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    iput-object v1, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParser;->b:I

    iget v0, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParser;->f:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    return-object v0
.end method

.method public final getToken(I)Lcom/prineside/luaj/parser/Token;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParser;->token_source:Lcom/prineside/luaj/parser/LuaParserTokenManager;

    invoke-virtual {v2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->getNextToken()Lcom/prineside/luaj/parser/Token;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    :goto_1
    move-object v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final h(I)Z
    .locals 3

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->A0()Z

    move-result v2
    :try_end_0
    .catch Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0
.end method

.method public final h0()Z
    .locals 3

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->m0()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    :cond_1
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final i(I)Z
    .locals 3

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->B0()Z

    move-result v2
    :try_end_0
    .catch Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0
.end method

.method public final i0()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->n0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->o0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->p0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->q0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->r0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->s0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(I)Z
    .locals 3

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->C0()Z

    move-result v2
    :try_end_0
    .catch Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0
.end method

.method public final j0()Z
    .locals 1

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(I)Z
    .locals 3

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->D0()Z

    move-result v2
    :try_end_0
    .catch Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0
.end method

.method public final k0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l(I)Z
    .locals 3

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParser;->e:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->token:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->d:Lcom/prineside/luaj/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->E0()Z

    move-result v2
    :try_end_0
    .catch Lcom/prineside/luaj/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    throw v0

    :catch_0
    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/parser/LuaParser;->M0(II)V

    return v0
.end method

.method public final l0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n0()Z
    .locals 1

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o0()Z
    .locals 1

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p0()Z
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q0()Z
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 2

    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final r0()Z
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 2

    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final s0()Z
    .locals 1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 2

    const/16 v0, 0x4a

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final t0()Z
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u0()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->w0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParser;->c:Lcom/prineside/luaj/parser/Token;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Z
    .locals 1

    const/16 v0, 0x52

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParser;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w0()Z
    .locals 1

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Z
    .locals 1

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x0()Z
    .locals 1

    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()Z
    .locals 1

    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y0()Z
    .locals 2

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x47

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .locals 1

    const/16 v0, 0x56

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z0()Z
    .locals 2

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParser;->N0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
