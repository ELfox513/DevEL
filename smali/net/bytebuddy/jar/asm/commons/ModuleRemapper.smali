.class public Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;
.super Lnet/bytebuddy/jar/asm/ModuleVisitor;
.source "SourceFile"


# instance fields
.field public final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;


# direct methods
.method public constructor <init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ModuleVisitor;-><init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;)V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/ModuleVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;-><init>(ILnet/bytebuddy/jar/asm/ModuleVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p3, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, v0}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/ModuleRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    return-void
.end method
