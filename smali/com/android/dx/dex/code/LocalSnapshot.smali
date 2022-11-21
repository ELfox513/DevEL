.class public final Lcom/android/dx/dex/code/LocalSnapshot;
.super Lcom/android/dx/dex/code/ZeroSizeInsn;
.source "SourceFile"


# instance fields
.field private final locals:Lw1/s;


# direct methods
.method public constructor <init>(Lw1/w;Lw1/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/ZeroSizeInsn;-><init>(Lw1/w;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    invoke-virtual {v0}, Lw1/s;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocals()Lw1/s;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    return-object v0
.end method

.method public listingString0(Z)Ljava/lang/String;
    .locals 4

    iget-object p1, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    invoke-virtual {p1}, Lw1/s;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    invoke-virtual {v0}, Lw1/s;->B()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 p1, p1, 0x28

    add-int/lit8 p1, p1, 0x64

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "local-snapshot"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    invoke-virtual {v2, p1}, Lw1/s;->z(I)Lw1/q;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "\n  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/dx/dex/code/LocalStart;->localString(Lw1/q;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withMapper(Lz1/p;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    new-instance v0, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    invoke-virtual {p1, v2}, Lz1/p;->d(Lw1/s;)Lw1/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lw1/w;Lw1/s;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    new-instance v0, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    invoke-virtual {v2, p1}, Lw1/s;->J(I)Lw1/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lw1/w;Lw1/s;)V

    return-object v0
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 2

    new-instance p1, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lw1/s;

    invoke-direct {p1, v0, v1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lw1/w;Lw1/s;)V

    return-object p1
.end method
