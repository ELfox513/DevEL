.class public Lcom/android/dx/dex/code/LocalList$MakeState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeState"
.end annotation


# instance fields
.field private endIndices:[I

.field private final lastAddress:I

.field private nullResultCount:I

.field private regs:Lw1/s;

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    iput-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    iput p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    return-void
.end method

.method private aboutToProcess(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    if-ne p1, v4, :cond_1

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-lt p1, v4, :cond_5

    if-nez v3, :cond_2

    array-length p1, v0

    if-lt p2, p1, :cond_4

    :cond_2
    add-int/2addr p2, v1

    new-instance p1, Lw1/s;

    invoke-direct {p1, p2}, Lw1/s;-><init>(I)V

    new-array p2, p2, [I

    const/4 v0, -0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {p1, v0}, Lw1/s;->H(Lw1/s;)V

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    array-length v1, v0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    iput-object p2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private add(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V
    .locals 3

    invoke-virtual {p3}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/dx/dex/code/LocalList$Entry;-><init>(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {p1, p3}, Lw1/s;->F(Lw1/q;)V

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {p1, p3}, Lw1/s;->I(Lw1/q;)V

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    iget-object p2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    aput p2, p1, v0

    :goto_0
    return-void
.end method

.method private addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V
    .locals 3

    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-eq p2, v0, :cond_1

    invoke-virtual {p3}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v0, v1, v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lw1/q;

    move-result-object v2

    invoke-virtual {v2, p3}, Lw1/q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {p1, p3}, Lw1/s;->I(Lw1/q;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILw1/q;Lcom/android/dx/dex/code/LocalList$Disposition;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkForEmptyRange(ILw1/q;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/LocalList$Entry;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v4

    if-eq v4, p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v3, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lw1/q;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {v3, p2}, Lw1/s;->I(Lw1/q;)V

    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result p2

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/dx/dex/code/LocalList$Entry;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v3

    if-ne v3, p2, :cond_4

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aput v0, v2, p2

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result p2

    if-ne p2, p1, :cond_7

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    sget-object p2, Lcom/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v4, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return v1
.end method

.method private static filterSpec(Lw1/q;)Lw1/q;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lw1/q;->getType()Ly1/c;

    move-result-object v0

    sget-object v1, Ly1/c;->C:Ly1/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Ly1/c;->K:Ly1/c;

    invoke-virtual {p0, v0}, Lw1/q;->U(Ly1/d;)Lw1/q;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public endLocal(ILw1/q;)V
    .locals 1

    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILw1/q;Lcom/android/dx/dex/code/LocalList$Disposition;)V

    return-void
.end method

.method public endLocal(ILw1/q;Lcom/android/dx/dex/code/LocalList$Disposition;)V
    .locals 2

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v0

    invoke-static {p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lw1/q;)Lw1/q;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v0, v1, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->checkForEmptyRange(ILw1/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V

    return-void
.end method

.method public finish()Lcom/android/dx/dex/code/LocalList;
    .locals 7

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    sub-int v2, v0, v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/dx/dex/code/LocalList;->EMPTY:Lcom/android/dx/dex/code/LocalList;

    return-object v0

    :cond_0
    new-array v3, v2, [Lcom/android/dx/dex/code/LocalList$Entry;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/dex/code/LocalList$Entry;

    if-eqz v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v3, v4

    move v4, v6

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Lcom/android/dx/dex/code/LocalList;

    invoke-direct {v0, v2}, Lcom/android/dx/dex/code/LocalList;-><init>(I)V

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v4, v3, v1

    invoke-virtual {v0, v1, v4}, Lcom/android/dx/dex/code/LocalList;->set(ILcom/android/dx/dex/code/LocalList$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public snapshot(ILw1/s;)V
    .locals 5

    invoke-virtual {p2}, Lw1/s;->B()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {v2, v1}, Lw1/s;->z(I)Lw1/q;

    move-result-object v2

    invoke-virtual {p2, v1}, Lw1/s;->z(I)Lw1/q;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lw1/q;)Lw1/q;

    move-result-object v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILw1/q;)V

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILw1/q;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Lw1/q;->u(Lw1/q;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILw1/q;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILw1/q;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public startLocal(ILw1/q;)V
    .locals 4

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v0

    invoke-static {p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lw1/q;)Lw1/q;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {v1, v0}, Lw1/s;->z(I)Lw1/q;

    move-result-object v1

    invoke-virtual {p2, v1}, Lw1/q;->u(Lw1/q;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {v2, p2}, Lw1/s;->x(Lw1/q;)Lw1/q;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V

    :cond_1
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v2, v2, v0

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_4

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v3

    if-ne v3, p1, :cond_4

    invoke-virtual {v1, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lw1/q;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    invoke-virtual {p1, p2}, Lw1/s;->F(Lw1/q;)V

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    const/4 p2, -0x1

    aput p2, p1, v0

    return-void

    :cond_3
    sget-object v3, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v1, v3}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v1

    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lw1/s;->z(I)Lw1/q;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lw1/q;->H()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V

    :cond_5
    invoke-virtual {p2}, Lw1/q;->H()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lw1/s;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lw1/s;->z(I)Lw1/q;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V

    :cond_6
    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V

    return-void
.end method
