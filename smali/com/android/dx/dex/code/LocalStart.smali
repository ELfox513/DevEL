.class public final Lcom/android/dx/dex/code/LocalStart;
.super Lcom/android/dx/dex/code/ZeroSizeInsn;
.source "SourceFile"


# instance fields
.field private final local:Lw1/q;


# direct methods
.method public constructor <init>(Lw1/w;Lw1/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/ZeroSizeInsn;-><init>(Lw1/w;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/dx/dex/code/LocalStart;->local:Lw1/q;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static localString(Lw1/q;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lw1/q;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw1/q;->z()Lw1/k;

    move-result-object v1

    invoke-virtual {v1}, Lw1/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw1/q;->C()Ly1/d;

    move-result-object p0

    invoke-interface {p0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalStart;->local:Lw1/q;

    invoke-virtual {v0}, Lw1/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocal()Lw1/q;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalStart;->local:Lw1/q;

    return-object v0
.end method

.method public listingString0(Z)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-start "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/dx/dex/code/LocalStart;->local:Lw1/q;

    invoke-static {v0}, Lcom/android/dx/dex/code/LocalStart;->localString(Lw1/q;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withMapper(Lz1/p;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    new-instance v0, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalStart;->local:Lw1/q;

    invoke-virtual {p1, v2}, Lz1/p;->b(Lw1/q;)Lw1/q;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/dx/dex/code/LocalStart;-><init>(Lw1/w;Lw1/q;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    new-instance v0, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalStart;->local:Lw1/q;

    invoke-virtual {v2, p1}, Lw1/q;->R(I)Lw1/q;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/dx/dex/code/LocalStart;-><init>(Lw1/w;Lw1/q;)V

    return-object v0
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 2

    new-instance p1, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/LocalStart;->local:Lw1/q;

    invoke-direct {p1, v0, v1}, Lcom/android/dx/dex/code/LocalStart;-><init>(Lw1/w;Lw1/q;)V

    return-object p1
.end method
