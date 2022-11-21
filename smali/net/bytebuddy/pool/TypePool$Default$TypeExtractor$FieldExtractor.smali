.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FieldExtractor"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptor:Ljava/lang/String;

.field private final genericSignature:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final internalName:Ljava/lang/String;

.field private final modifiers:I

.field private final typeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(I)V

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->modifiers:I

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->internalName:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->descriptor:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->genericSignature:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->typeAnnotationTokens:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->annotationTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->annotationTokens:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v3, v0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v2, v3, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2
.end method

.method public visitEnd()V
    .locals 9

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->internalName:Ljava/lang/String;

    iget v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->modifiers:I

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->descriptor:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->genericSignature:Ljava/lang/String;

    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->typeAnnotationTokens:Ljava/util/Map;

    iget-object v7, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->annotationTokens:Ljava/util/List;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p2    # Lnet/bytebuddy/jar/asm/TypePath;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    new-instance p4, Lnet/bytebuddy/jar/asm/TypeReference;

    invoke-direct {p4, p1}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;

    iget-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->typeAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;Ljava/util/Map;)V

    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v1, p4, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->a:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v0, v1, p3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, p4, p1, v0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected type reference on field: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
