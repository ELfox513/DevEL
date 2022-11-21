.class public Lcom/android/dx/dex/code/LocalList$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/code/LocalList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final address:I

.field private final disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

.field private final spec:Lw1/q;

.field private final type:Lx1/e0;


# direct methods
.method public constructor <init>(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lw1/q;->z()Lw1/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    iput-object p2, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    iput-object p3, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-virtual {p3}, Lw1/q;->getType()Ly1/c;

    move-result-object p1

    invoke-static {p1}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->type:Lx1/e0;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec.getLocalItem() == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "disposition == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/LocalList$Entry;)I
    .locals 4

    iget v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    iget v1, p1, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    iget-object p1, p1, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-virtual {v0, p1}, Lw1/q;->j(Lw1/q;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/LocalList$Entry;->compareTo(Lcom/android/dx/dex/code/LocalList$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/dx/dex/code/LocalList$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/LocalList$Entry;->compareTo(Lcom/android/dx/dex/code/LocalList$Entry;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()I
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    return v0
.end method

.method public getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    return-object v0
.end method

.method public getName()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v0

    invoke-virtual {v0}, Lw1/k;->f()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public getRegister()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    return v0
.end method

.method public getRegisterSpec()Lw1/q;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    return-object v0
.end method

.method public getSignature()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v0

    invoke-virtual {v0}, Lw1/k;->h()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->type:Lx1/e0;

    return-object v0
.end method

.method public isStart()Z
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    sget-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lw1/q;)Z

    move-result p1

    return p1
.end method

.method public matches(Lw1/q;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-virtual {v0, p1}, Lw1/q;->u(Lw1/q;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;
    .locals 3

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/dx/dex/code/LocalList$Entry;

    iget v1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lw1/q;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/dx/dex/code/LocalList$Entry;-><init>(ILcom/android/dx/dex/code/LocalList$Disposition;Lw1/q;)V

    return-object v0
.end method
