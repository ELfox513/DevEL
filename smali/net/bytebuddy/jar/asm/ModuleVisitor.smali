.class public abstract Lnet/bytebuddy/jar/asm/ModuleVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final api:I

.field public mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;-><init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;)V

    return-void
.end method

.method public constructor <init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10a0000

    const/high16 v1, 0x90000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x80000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x70000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported api "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Constants;->a(Ljava/lang/Object;)V

    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->api:I

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/ModuleVisitor;->mv:Lnet/bytebuddy/jar/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
