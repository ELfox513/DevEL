.class public abstract Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

.field public final api:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;-><init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;)V

    return-void
.end method

.method public constructor <init>(ILnet/bytebuddy/jar/asm/RecordComponentVisitor;)V
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
    iput p1, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->api:I

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->a:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->a:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->a:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->a:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->a:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->a:Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
