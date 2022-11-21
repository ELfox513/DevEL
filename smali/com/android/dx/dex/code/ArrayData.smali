.class public final Lcom/android/dx/dex/code/ArrayData;
.super Lcom/android/dx/dex/code/VariableSizeInsn;
.source "SourceFile"


# instance fields
.field private final arrayType:Lx1/a;

.field private final elemWidth:I

.field private final initLength:I

.field private final user:Lcom/android/dx/dex/code/CodeAddress;

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw1/w;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lx1/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw1/w;",
            "Lcom/android/dx/dex/code/CodeAddress;",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;",
            "Lx1/a;",
            ")V"
        }
    .end annotation

    sget-object v0, Lw1/r;->a:Lw1/r;

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lw1/w;Lw1/r;)V

    if-eqz p2, :cond_a

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    iput-object p4, p0, Lcom/android/dx/dex/code/ArrayData;->arrayType:Lx1/a;

    sget-object p1, Lx1/e0;->z:Lx1/e0;

    if-eq p4, p1, :cond_7

    sget-object p1, Lx1/e0;->y:Lx1/e0;

    if-ne p4, p1, :cond_0

    goto :goto_3

    :cond_0
    sget-object p1, Lx1/e0;->F:Lx1/e0;

    if-eq p4, p1, :cond_6

    sget-object p1, Lx1/e0;->A:Lx1/e0;

    if-ne p4, p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p1, Lx1/e0;->E:Lx1/e0;

    if-eq p4, p1, :cond_5

    sget-object p1, Lx1/e0;->C:Lx1/e0;

    if-ne p4, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lx1/e0;->D:Lx1/e0;

    if-eq p4, p1, :cond_4

    sget-object p1, Lx1/e0;->B:Lx1/e0;

    if-ne p4, p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected constant type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/16 p1, 0x8

    iput p1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4

    :cond_5
    :goto_1
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4

    :cond_6
    :goto_2
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    goto :goto_4

    :cond_7
    :goto_3
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    :goto_4
    iput-object p2, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    iput-object p3, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal number of init values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "values == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "user == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/a;

    invoke-interface {v3}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public codeSize()I
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public listingString0(Z)Ljava/lang/String;
    .locals 3

    iget-object p1, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "fill-array-data-payload // for fill-array-data @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/a;

    invoke-interface {v2}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    new-instance p1, Lcom/android/dx/dex/code/ArrayData;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/ArrayData;->user:Lcom/android/dx/dex/code/CodeAddress;

    iget-object v2, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/dx/dex/code/ArrayData;->arrayType:Lx1/a;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/dx/dex/code/ArrayData;-><init>(Lw1/w;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lx1/a;)V

    return-object p1
.end method

.method public writeTo(Lb2/a;)V
    .locals 7

    iget-object v0, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x300

    invoke-interface {p1, v1}, Lb2/q;->writeShort(I)V

    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    invoke-interface {p1, v1}, Lb2/q;->writeShort(I)V

    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->initLength:I

    invoke-interface {p1, v1}, Lb2/q;->writeInt(I)V

    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/a;

    check-cast v5, Lx1/u;

    invoke-virtual {v5}, Lx1/u;->A()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Lb2/q;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/a;

    check-cast v5, Lx1/t;

    invoke-virtual {v5}, Lx1/t;->z()I

    move-result v5

    invoke-interface {p1, v5}, Lb2/q;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/a;

    check-cast v5, Lx1/t;

    invoke-virtual {v5}, Lx1/t;->z()I

    move-result v5

    int-to-short v5, v5

    invoke-interface {p1, v5}, Lb2/q;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/android/dx/dex/code/ArrayData;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/a;

    check-cast v5, Lx1/t;

    invoke-virtual {v5}, Lx1/t;->z()I

    move-result v5

    int-to-byte v5, v5

    invoke-interface {p1, v5}, Lb2/q;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget v1, p0, Lcom/android/dx/dex/code/ArrayData;->elemWidth:I

    if-ne v1, v4, :cond_5

    rem-int/2addr v0, v2

    if-eqz v0, :cond_5

    invoke-interface {p1, v3}, Lb2/q;->writeByte(I)V

    :cond_5
    return-void
.end method
