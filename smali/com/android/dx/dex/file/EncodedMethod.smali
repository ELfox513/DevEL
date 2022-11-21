.class public final Lcom/android/dx/dex/file/EncodedMethod;
.super Lcom/android/dx/dex/file/EncodedMember;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/dex/file/EncodedMember;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/file/EncodedMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final code:Lcom/android/dx/dex/file/CodeItem;

.field private final method:Lx1/z;


# direct methods
.method public constructor <init>(Lx1/z;ILcom/android/dx/dex/code/DalvCode;Ly1/e;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/dx/dex/file/EncodedMember;-><init>(I)V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/dex/file/EncodedMethod;->code:Lcom/android/dx/dex/file/CodeItem;

    goto :goto_1

    :cond_0
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lcom/android/dx/dex/file/CodeItem;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/android/dx/dex/file/CodeItem;-><init>(Lx1/z;Lcom/android/dx/dex/code/DalvCode;ZLy1/e;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/EncodedMethod;->code:Lcom/android/dx/dex/file/CodeItem;

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->k()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lx1/e;)Lcom/android/dx/dex/file/MethodIdItem;

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedMethod;->code:Lcom/android/dx/dex/file/CodeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/dx/dex/file/EncodedMethod;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    iget-object p1, p1, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/EncodedMethod;->compareTo(Lcom/android/dx/dex/file/EncodedMethod;)I

    move-result p1

    return p1
.end method

.method public debugPrint(Ljava/io/PrintWriter;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedMethod;->code:Lcom/android/dx/dex/file/CodeItem;

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedMethod;->getRef()Lx1/z;

    move-result-object v0

    invoke-virtual {v0}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": abstract or native"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/dx/dex/file/CodeItem;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public encode(Lcom/android/dx/dex/file/DexFile;Lb2/a;II)I
    .locals 6

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MethodIdsSection;->indexOf(Lx1/e;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedMember;->getAccessFlags()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/EncodedMethod;->code:Lcom/android/dx/dex/file/CodeItem;

    invoke-static {v1}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffsetOr0(Lcom/android/dx/dex/file/OffsettedItem;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit16 v5, v0, 0x500

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ne v4, v5, :cond_3

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v4, v3

    iget-object p4, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    invoke-virtual {p4}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v4, v2

    const-string p4, "  [%x] %s"

    invoke-static {p4, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v3, p4}, Lb2/a;->d(ILjava/lang/String;)V

    invoke-static {p3}, Lk1/n;->c(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    method_idx:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lb2/a;->d(ILjava/lang/String;)V

    invoke-static {v0}, Lk1/n;->c(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    access_flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lw1/a;->k(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lb2/a;->d(ILjava/lang/String;)V

    invoke-static {v1}, Lk1/n;->c(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    code_off:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, p3}, Lb2/q;->h(I)I

    invoke-interface {p2, v0}, Lb2/q;->h(I)I

    invoke-interface {p2, v1}, Lb2/q;->h(I)I

    return p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "code vs. access_flags mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/dx/dex/file/EncodedMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/EncodedMethod;->compareTo(Lcom/android/dx/dex/file/EncodedMethod;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getName()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    invoke-virtual {v0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->x()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public final getRef()Lx1/z;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    invoke-virtual {v0}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-class v1, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedMember;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/file/EncodedMethod;->method:Lx1/z;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/file/EncodedMethod;->code:Lcom/android/dx/dex/file/CodeItem;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/dex/file/EncodedMethod;->code:Lcom/android/dx/dex/file/CodeItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
