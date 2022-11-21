.class public Lcom/prineside/tdi2/ibxm/Note;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public effect:I

.field public instrument:I

.field public key:I

.field public param:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[C)V
    .locals 6

    const-string v0, "A-A#B-C-C#D-D#E-F-F#G-G#"

    const/16 v1, 0x76

    const/16 v2, 0x2d

    const/4 v3, 0x2

    if-lez p0, :cond_0

    if-ge p0, v1, :cond_0

    add-int/lit8 v4, p0, 0x2

    rem-int/lit8 v4, v4, 0xc

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0x2d

    :goto_0
    const/4 v5, 0x0

    aput-char v4, p1, v5

    const/4 v4, 0x1

    if-lez p0, :cond_1

    if-ge p0, v1, :cond_1

    add-int/lit8 v5, p0, 0x2

    rem-int/lit8 v5, v5, 0xc

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x2d

    :goto_1
    aput-char v0, p1, v4

    if-lez p0, :cond_2

    if-ge p0, v1, :cond_2

    add-int/2addr p0, v3

    div-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x30

    int-to-char v2, p0

    :cond_2
    aput-char v2, p1, v3

    return-void
.end method


# virtual methods
.method public toChars([C)[C
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Note;->key:I

    invoke-static {v0, p1}, Lcom/prineside/tdi2/ibxm/Note;->a(I[C)V

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Note;->instrument:I

    const/4 v1, 0x4

    const/16 v2, 0xff

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const/16 v4, 0x2d

    const/16 v5, 0xf

    if-le v0, v5, :cond_0

    if-ge v0, v2, :cond_0

    shr-int/2addr v0, v1

    and-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    const/4 v6, 0x3

    aput-char v0, p1, v6

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Note;->instrument:I

    if-lez v0, :cond_1

    if-ge v0, v2, :cond_1

    and-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x2d

    :goto_1
    aput-char v0, p1, v1

    const/4 v0, 0x5

    iget v6, p0, Lcom/prineside/tdi2/ibxm/Note;->volume:I

    if-le v6, v5, :cond_2

    if-ge v6, v2, :cond_2

    shr-int/2addr v6, v1

    and-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2

    :cond_2
    const/16 v6, 0x2d

    :goto_2
    aput-char v6, p1, v0

    const/4 v0, 0x6

    iget v6, p0, Lcom/prineside/tdi2/ibxm/Note;->volume:I

    if-lez v6, :cond_3

    if-ge v6, v2, :cond_3

    and-int/lit8 v2, v6, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_3

    :cond_3
    const/16 v2, 0x2d

    :goto_3
    aput-char v2, p1, v0

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    const/4 v2, 0x7

    if-gtz v0, :cond_4

    iget v6, p0, Lcom/prineside/tdi2/ibxm/Note;->param:I

    if-lez v6, :cond_5

    :cond_4
    const/16 v6, 0x24

    if-ge v0, v6, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p1, v2

    goto :goto_4

    :cond_5
    const/16 v6, 0x80

    if-le v0, v6, :cond_6

    const/16 v6, 0x9f

    if-ge v0, v6, :cond_6

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_4

    :cond_6
    aput-char v4, p1, v2

    :goto_4
    const/16 v0, 0x8

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    if-gtz v2, :cond_8

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Note;->param:I

    if-lez v2, :cond_7

    goto :goto_5

    :cond_7
    const/16 v1, 0x2d

    goto :goto_6

    :cond_8
    :goto_5
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Note;->param:I

    shr-int/lit8 v1, v2, 0x4

    and-int/2addr v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    aput-char v1, p1, v0

    const/16 v0, 0x9

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    if-gtz v1, :cond_9

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Note;->param:I

    if-lez v1, :cond_a

    :cond_9
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Note;->param:I

    and-int/2addr v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :cond_a
    aput-char v4, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ibxm/Note;->toChars([C)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
