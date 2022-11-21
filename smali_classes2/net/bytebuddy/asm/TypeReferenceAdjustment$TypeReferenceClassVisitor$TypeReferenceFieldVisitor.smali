.class public Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceFieldVisitor;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeReferenceFieldVisitor"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/FieldVisitor;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceFieldVisitor;->a:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(ILnet/bytebuddy/jar/asm/FieldVisitor;)V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceFieldVisitor;->a:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-static {v0}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->a(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;

    iget-object v0, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceFieldVisitor;->a:Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    invoke-direct {p2, v0, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor$TypeReferenceAnnotationVisitor;-><init>(Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;Lnet/bytebuddy/jar/asm/AnnotationVisitor;)V

    return-object p2

    :cond_0
    invoke-static {}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;->b()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1
.end method
