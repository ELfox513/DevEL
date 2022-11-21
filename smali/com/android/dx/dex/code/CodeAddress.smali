.class public final Lcom/android/dx/dex/code/CodeAddress;
.super Lcom/android/dx/dex/code/ZeroSizeInsn;
.source "SourceFile"


# instance fields
.field private final bindsClosely:Z


# direct methods
.method public constructor <init>(Lw1/w;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lw1/w;Z)V

    return-void
.end method

.method public constructor <init>(Lw1/w;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/ZeroSizeInsn;-><init>(Lw1/w;)V

    iput-boolean p2, p0, Lcom/android/dx/dex/code/CodeAddress;->bindsClosely:Z

    return-void
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBindsClosely()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dx/dex/code/CodeAddress;->bindsClosely:Z

    return v0
.end method

.method public listingString0(Z)Ljava/lang/String;
    .locals 0

    const-string p1, "code-address"

    return-object p1
.end method

.method public final withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 1

    new-instance p1, Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lw1/w;)V

    return-object p1
.end method
