.class public final Lcom/android/dx/dex/file/EncodedField;
.super Lcom/android/dx/dex/file/EncodedMember;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/dex/file/EncodedMember;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/file/EncodedField;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Lx1/n;


# direct methods
.method public constructor <init>(Lx1/n;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/dx/dex/file/EncodedMember;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lx1/n;)Lcom/android/dx/dex/file/FieldIdItem;

    return-void
.end method

.method public compareTo(Lcom/android/dx/dex/file/EncodedField;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    iget-object p1, p1, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/dx/dex/file/EncodedField;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/EncodedField;->compareTo(Lcom/android/dx/dex/file/EncodedField;)I

    move-result p1

    return p1
.end method

.method public debugPrint(Ljava/io/PrintWriter;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedField;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public encode(Lcom/android/dx/dex/file/DexFile;Lb2/a;II)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lx1/n;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedMember;->getAccessFlags()I

    move-result v0

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    iget-object v3, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    invoke-virtual {v3}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p4

    const-string p4, "  [%x] %s"

    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v2, p4}, Lb2/a;->d(ILjava/lang/String;)V

    invoke-static {p3}, Lk1/n;->c(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    field_idx:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Lb2/a;->d(ILjava/lang/String;)V

    invoke-static {v0}, Lk1/n;->c(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    access_flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lw1/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p3}, Lb2/q;->h(I)I

    invoke-interface {p2, v0}, Lb2/q;->h(I)I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/dx/dex/file/EncodedField;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/dx/dex/file/EncodedField;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/EncodedField;->compareTo(Lcom/android/dx/dex/file/EncodedField;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getName()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    invoke-virtual {v0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->x()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Lx1/n;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    invoke-virtual {v0}, Lx1/x;->hashCode()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    invoke-virtual {v0}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-class v1, Lcom/android/dx/dex/file/EncodedField;

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

    iget-object v1, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lx1/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
