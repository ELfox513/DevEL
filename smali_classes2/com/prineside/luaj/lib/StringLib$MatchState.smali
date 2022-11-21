.class Lcom/prineside/luaj/lib/StringLib$MatchState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchState"
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/prineside/luaj/LuaString;

.field public final c:Lcom/prineside/luaj/LuaString;

.field public final d:Lcom/prineside/luaj/Varargs;

.field public e:I

.field public f:[I

.field public g:[I


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/Varargs;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/LuaString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    iput-object p3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    iput-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->d:Lcom/prineside/luaj/Varargs;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    const/16 p1, 0x20

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->f:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->g:[I

    const/16 p1, 0xc8

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    return-void
.end method

.method public static h(II)Z
    .locals 5

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    sget-object v1, Lcom/prineside/luaj/lib/StringLib;->y:[B

    aget-byte v1, v1, p0

    const/16 v2, 0x61

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_c

    const/16 v2, 0x67

    if-eq v0, v2, :cond_b

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_a

    const/16 v2, 0x70

    if-eq v0, v2, :cond_9

    const/16 v2, 0x73

    if-eq v0, v2, :cond_8

    const/16 v2, 0x75

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_6

    const/16 v2, 0x63

    if-eq v0, v2, :cond_5

    const/16 v2, 0x64

    if-eq v0, v2, :cond_4

    const/16 v2, 0x77

    if-eq v0, v2, :cond_3

    const/16 v2, 0x78

    if-eq v0, v2, :cond_1

    if-ne p1, p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    and-int/lit8 p0, v1, -0x80

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    and-int/lit8 p0, v1, 0x9

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_4
    and-int/lit8 p0, v1, 0x8

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_5
    and-int/lit8 p0, v1, 0x40

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_6
    if-nez p0, :cond_2

    goto :goto_0

    :cond_7
    and-int/lit8 p0, v1, 0x4

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_8
    and-int/lit8 p0, v1, 0x20

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_9
    and-int/lit8 p0, v1, 0x10

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_a
    and-int/lit8 p0, v1, 0x2

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_b
    and-int/lit8 p0, v1, 0x19

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_c
    and-int/lit8 p0, v1, 0x1

    if-eqz p0, :cond_2

    goto :goto_0

    :goto_1
    if-ne v0, p1, :cond_d

    move v3, p0

    goto :goto_2

    :cond_d
    if-nez p0, :cond_e

    const/4 v3, 0x1

    :cond_e
    :goto_2
    return v3
.end method


# virtual methods
.method public final a(Lcom/prineside/luaj/Buffer;Lcom/prineside/luaj/LuaString;II)V
    .locals 8

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p2, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    int-to-byte v3, v3

    int-to-char v5, v3

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    if-eq v3, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid use of \'%\' in replacement string: after \'%\' must be \'0\'-\'9\' or \'%\', but found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "symbol \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\' with code "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at pos "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, "end of string"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_3
    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto :goto_3

    :cond_4
    const/16 v4, 0x30

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v3, p3, p4}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x31

    invoke-virtual {p0, v3, p3, p4}, Lcom/prineside/luaj/lib/StringLib$MatchState;->n(III)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public add_value(Lcom/prineside/luaj/Buffer;IILcom/prineside/luaj/LuaValue;)V
    .locals 2

    invoke-virtual {p4}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string p1, "bad argument: string/function/table expected"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;->m(ZII)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p4

    invoke-virtual {p4}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;->n(III)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p4

    :goto_0
    invoke-virtual {p4}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p4, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p4, p2, p3}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object p4

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid replacement value (a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_3
    :goto_1
    invoke-virtual {p4}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    return-void

    :cond_4
    invoke-virtual {p4}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object p4

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;->a(Lcom/prineside/luaj/Buffer;Lcom/prineside/luaj/LuaString;II)V

    return-void
.end method

.method public final b()I
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->g:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "invalid pattern capture"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x31

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->g:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid capture index %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    return p1
.end method

.method public d(I)I
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_4

    const/16 v2, 0x5b

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result p1

    if-eq v1, p1, :cond_1

    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p1

    const/16 v2, 0x5e

    if-ne p1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result p1

    if-ne v1, p1, :cond_2

    const-string p1, "malformed pattern (missing \']\')"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_2
    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result p1

    if-ge v2, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    move v1, v2

    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result p1

    if-eq v1, p1, :cond_1

    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p1

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_4
    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result p1

    if-ne v1, p1, :cond_5

    const-string p1, "malformed pattern (ends with \'%\')"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public e(II)I
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/StringLib$MatchState;->b()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->g:[I

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->f:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    aput v2, v1, v0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->g:[I

    aput p2, v1, v0

    :cond_0
    return p1
.end method

.method public f(II)I
    .locals 6

    iget v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    if-nez v0, :cond_0

    const-string v0, "pattern too complex"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v1, :cond_1

    :goto_1
    iget p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    return p1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_10

    const/16 v2, 0x25

    if-eq v1, v2, :cond_5

    const/16 v2, 0x28

    const/16 v5, 0x29

    if-eq v1, v2, :cond_3

    if-eq v1, v5, :cond_2

    goto/16 :goto_5

    :cond_2
    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->e(II)I

    move-result p1

    goto :goto_1

    :cond_3
    add-int/2addr p2, v0

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v1

    if-ge p2, v1, :cond_4

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    if-ne v1, v5, :cond_4

    add-int/2addr p2, v0

    const/4 v1, -0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->q(III)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2, v4}, Lcom/prineside/luaj/lib/StringLib$MatchState;->q(III)I

    move-result p1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v2

    if-ne v1, v2, :cond_6

    const-string v2, "malformed pattern (ends with \'%\')"

    invoke-static {v2}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_6
    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    const/16 v5, 0x62

    if-eq v2, v5, :cond_e

    const/16 v5, 0x66

    if-eq v2, v5, :cond_9

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, p1, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->g(II)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v4, :cond_8

    :cond_7
    :goto_2
    iget p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    return v4

    :cond_8
    add-int/lit8 p2, p2, 0x2

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result p1

    goto :goto_1

    :cond_9
    add-int/lit8 p2, p2, 0x2

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v1

    if-eq p2, v1, :cond_a

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_b

    :cond_a
    const-string v1, "missing \'[\' after \'%f\' in pattern"

    invoke-static {v1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_b
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->d(I)I

    move-result v1

    if-nez p1, :cond_c

    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v2, v5}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    :goto_3
    iget-object v5, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v5}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v5

    if-ne p1, v5, :cond_d

    goto :goto_4

    :cond_d
    iget-object v3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v3, p1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v3

    :goto_4
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v2, p2, v5}, Lcom/prineside/luaj/lib/StringLib$MatchState;->j(III)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v3, p2, v5}, Lcom/prineside/luaj/lib/StringLib$MatchState;->j(III)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_2

    :cond_e
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->i(II)I

    move-result p1

    if-ne p1, v4, :cond_f

    goto :goto_2

    :cond_f
    add-int/lit8 p2, p2, 0x4

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v2

    if-ne v1, v2, :cond_12

    iget-object p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result p2

    if-ne p1, p2, :cond_11

    goto/16 :goto_1

    :cond_11
    const/4 p1, -0x1

    goto/16 :goto_1

    :cond_12
    :goto_5
    invoke-virtual {p0, p2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v2

    if-ge p1, v2, :cond_13

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, p1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    invoke-virtual {p0, v2, p2, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->p(III)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_6

    :cond_13
    const/4 v2, 0x0

    :goto_6
    iget-object v5, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v5}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v5

    if-ge v1, v5, :cond_14

    iget-object v3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v3, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v3

    :cond_14
    const/16 v5, 0x2a

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_1a

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_19

    const/16 p2, 0x3f

    if-eq v3, p2, :cond_17

    if-nez v2, :cond_15

    goto/16 :goto_2

    :cond_15
    add-int/lit8 p1, p1, 0x1

    :cond_16
    move p2, v1

    goto/16 :goto_0

    :cond_17
    if-eqz v2, :cond_18

    add-int/lit8 p2, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq p2, v4, :cond_18

    iget p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    return p2

    :cond_18
    add-int/lit8 p2, v1, 0x1

    goto/16 :goto_0

    :cond_19
    :try_start_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->l(III)I

    move-result p1

    goto/16 :goto_1

    :cond_1a
    if-eqz v2, :cond_7

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->k(III)I

    move-result v4

    goto/16 :goto_2

    :cond_1b
    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->k(III)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public g(II)I
    .locals 3

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->c(I)I

    move-result p2

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->g:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v1

    sub-int/2addr v1, p1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->f:[I

    aget p2, v2, p2

    invoke-static {v1, p2, v1, p1, v0}, Lcom/prineside/luaj/LuaString;->equals(Lcom/prineside/luaj/LuaString;ILcom/prineside/luaj/LuaString;II)Z

    move-result p2

    if-eqz p2, :cond_0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public i(II)I
    .locals 6

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, 0x1

    if-ne v1, v0, :cond_1

    :cond_0
    const-string v0, "malformed pattern (missing arguments to \'%b\')"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    iget-object v3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v3, p1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v3

    if-eq v3, v2, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    const/4 v4, 0x1

    add-int/2addr p2, v4

    invoke-virtual {v3, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p2

    const/4 v3, 0x1

    :cond_4
    :goto_0
    add-int/2addr p1, v4

    if-ge p1, v0, :cond_6

    iget-object v5, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v5, p1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v5

    if-ne v5, p2, :cond_5

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_4

    add-int/2addr p1, v4

    return p1

    :cond_5
    iget-object v5, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v5, p1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v5

    if-ne v5, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public j(III)Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_0

    const/4 p2, 0x0

    move p2, v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    add-int/2addr p2, v2

    if-ge p2, p3, :cond_5

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    const/16 v3, 0x25

    if-ne v1, v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->h(II)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v3}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_4

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_4

    iget-object p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p2, v3}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p2

    if-gt p2, p1, :cond_3

    iget-object p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p2

    if-gt p1, p2, :cond_3

    return v0

    :cond_3
    move p2, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    return v0

    :cond_5
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public k(III)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, v1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;->p(III)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 p2, -0x1

    if-ltz v0, :cond_2

    add-int v1, p1, v0

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result v1

    if-eq v1, p2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return p2
.end method

.method public l(III)I
    .locals 2

    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;->p(III)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public m(ZII)Lcom/prineside/luaj/Varargs;
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_3

    const/4 p1, 0x0

    if-eq v0, v1, :cond_2

    new-array v1, v0, [Lcom/prineside/luaj/LuaValue;

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;->n(III)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;->n(III)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public final n(III)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    if-lt p1, v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, p2, p3}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid capture index %"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->g:[I

    aget p2, p2, p1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const-string p1, "unfinished capture"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p3, -0x2

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->f:[I

    aget p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->f:[I

    aget p1, p3, p1

    iget-object p3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->b:Lcom/prineside/luaj/LuaString;

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->a:I

    return-void
.end method

.method public p(III)Z
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v0

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    iget-object p3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p3, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;->j(III)Z

    move-result p1

    return p1

    :cond_2
    return v2

    :cond_3
    iget-object p3, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->c:Lcom/prineside/luaj/LuaString;

    add-int/2addr p2, v2

    invoke-virtual {p3, p2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->h(II)Z

    move-result p1

    return p1
.end method

.method public q(III)I
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const-string v1, "too many captures"

    invoke-static {v1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->f:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->g:[I

    aput p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/prineside/luaj/lib/StringLib$MatchState;->e:I

    :cond_1
    return p1
.end method
