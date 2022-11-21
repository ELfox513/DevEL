.class Lcom/prineside/luaj/lib/StringLib$FormatDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatDesc"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final conversion:I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Lcom/prineside/luaj/lib/StringLib;

.field public final length:I

.field public final src:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/Varargs;Lcom/prineside/luaj/LuaString;ILcom/prineside/luaj/lib/StringLib;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->h:Lcom/prineside/luaj/lib/StringLib;

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    move v2, p3

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_6

    if-ge v2, p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x20

    if-eq v3, v4, :cond_5

    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->b:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->a:Z

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->c:Z

    goto :goto_0

    :cond_4
    iput-boolean v0, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->e:Z

    goto :goto_0

    :cond_5
    iput-boolean v0, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->d:Z

    goto :goto_0

    :cond_6
    sub-int v1, v2, p3

    const/4 v4, 0x5

    if-le v1, v4, :cond_7

    const-string v1, "invalid format (repeated flags)"

    invoke-static {v1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_7
    const/4 v1, -0x1

    iput v1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->f:I

    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v3, v3, -0x30

    iput v3, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->f:I

    if-ge v2, p1, :cond_8

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->f:I

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v4, v3

    iput v4, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->f:I

    if-ge v2, p1, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :cond_a
    :goto_3
    iput v1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->g:I

    const/16 v1, 0x2e

    if-ne v3, v1, :cond_e

    if-ge v2, p1, :cond_b

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    move v3, v2

    move v2, v1

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    int-to-char v1, v3

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_e

    add-int/lit8 v3, v3, -0x30

    iput v3, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->g:I

    if-ge v2, p1, :cond_c

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v2

    move v3, v2

    move v2, v1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    int-to-char v1, v3

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->g:I

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    iput v1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->g:I

    if-ge v2, p1, :cond_d

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p4

    move v2, p1

    :cond_d
    move v3, p4

    :cond_e
    int-to-char p1, v3

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "invalid format (width or precision too long)"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_f
    iget-boolean p1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->b:Z

    iget-boolean p4, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->a:Z

    xor-int/2addr p4, v0

    and-int/2addr p1, p4

    iput-boolean p1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->b:Z

    iput v3, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->conversion:I

    sub-int p1, v2, p3

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->length:I

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3, v2}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(Lcom/prineside/luaj/Buffer;B)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    return-void
.end method

.method public format(Lcom/prineside/luaj/Buffer;D)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->h:Lcom/prineside/luaj/lib/StringLib;

    iget-object v1, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->src:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Lcom/prineside/luaj/lib/StringLib;->t(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    return-void
.end method

.method public format(Lcom/prineside/luaj/Buffer;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->g:I

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->conversion:I

    const/16 v3, 0x58

    if-eq v2, v3, :cond_2

    const/16 v4, 0x6f

    if-eq v2, v4, :cond_1

    const/16 v4, 0x78

    if-eq v2, v4, :cond_2

    const/16 v2, 0xa

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    :goto_0
    invoke-static {p2, p3, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->conversion:I

    if-ne v4, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    cmp-long v4, p2, v0

    if-gez v4, :cond_4

    add-int/lit8 v4, v3, -0x1

    move v7, v4

    move v4, v3

    move v3, v7

    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->c:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->d:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v4, v3, 0x1

    :goto_3
    iget v5, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->g:I

    const/4 v6, 0x0

    if-le v5, v3, :cond_7

    sub-int/2addr v5, v3

    goto :goto_4

    :cond_7
    const/4 v3, -0x1

    if-ne v5, v3, :cond_8

    iget-boolean v3, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->b:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->f:I

    if-le v3, v4, :cond_8

    sub-int v5, v3, v4

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    add-int/2addr v4, v5

    iget v3, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->f:I

    if-le v3, v4, :cond_9

    sub-int v6, v3, v4

    :cond_9
    iget-boolean v3, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->a:Z

    const/16 v4, 0x20

    if-nez v3, :cond_a

    invoke-virtual {p0, p1, v4, v6}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->pad(Lcom/prineside/luaj/Buffer;CI)V

    :cond_a
    cmp-long v3, p2, v0

    if-gez v3, :cond_b

    if-lez v5, :cond_d

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    const/4 p2, 0x1

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_b
    iget-boolean p2, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->c:Z

    if-eqz p2, :cond_c

    const/16 p2, 0x2b

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto :goto_5

    :cond_c
    iget-boolean p2, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->d:Z

    if-eqz p2, :cond_d

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    :cond_d
    :goto_5
    if-lez v5, :cond_e

    const/16 p2, 0x30

    invoke-virtual {p0, p1, p2, v5}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->pad(Lcom/prineside/luaj/Buffer;CI)V

    :cond_e
    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    iget-boolean p2, p0, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->a:Z

    if-eqz p2, :cond_f

    invoke-virtual {p0, p1, v4, v6}, Lcom/prineside/luaj/lib/StringLib$FormatDesc;->pad(Lcom/prineside/luaj/Buffer;CI)V

    :cond_f
    return-void
.end method

.method public format(Lcom/prineside/luaj/Buffer;Lcom/prineside/luaj/LuaString;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lcom/prineside/luaj/LuaString;->indexOf(BI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, v0, v1}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    return-void
.end method

.method public final pad(Lcom/prineside/luaj/Buffer;CI)V
    .locals 1

    int-to-byte p2, p2

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    move p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method
