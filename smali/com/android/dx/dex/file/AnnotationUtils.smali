.class public final Lcom/android/dx/dex/file/AnnotationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCESS_FLAGS_STRING:Lx1/d0;

.field private static final ANNOTATION_DEFAULT_TYPE:Lx1/e0;

.field private static final ENCLOSING_CLASS_TYPE:Lx1/e0;

.field private static final ENCLOSING_METHOD_TYPE:Lx1/e0;

.field private static final INNER_CLASS_TYPE:Lx1/e0;

.field private static final MEMBER_CLASSES_TYPE:Lx1/e0;

.field private static final NAME_STRING:Lx1/d0;

.field private static final SIGNATURE_TYPE:Lx1/e0;

.field private static final SOURCE_DEBUG_EXTENSION_TYPE:Lx1/e0;

.field private static final THROWS_TYPE:Lx1/e0;

.field private static final VALUE_STRING:Lx1/d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Ldalvik/annotation/AnnotationDefault;"

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ANNOTATION_DEFAULT_TYPE:Lx1/e0;

    const-string v0, "Ldalvik/annotation/EnclosingClass;"

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_CLASS_TYPE:Lx1/e0;

    const-string v0, "Ldalvik/annotation/EnclosingMethod;"

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_METHOD_TYPE:Lx1/e0;

    const-string v0, "Ldalvik/annotation/InnerClass;"

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->INNER_CLASS_TYPE:Lx1/e0;

    const-string v0, "Ldalvik/annotation/MemberClasses;"

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->MEMBER_CLASSES_TYPE:Lx1/e0;

    const-string v0, "Ldalvik/annotation/Signature;"

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->SIGNATURE_TYPE:Lx1/e0;

    const-string v0, "Ldalvik/annotation/SourceDebugExtension;"

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->SOURCE_DEBUG_EXTENSION_TYPE:Lx1/e0;

    const-string v0, "Ldalvik/annotation/Throws;"

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    invoke-static {v0}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->THROWS_TYPE:Lx1/e0;

    new-instance v0, Lx1/d0;

    const-string v1, "accessFlags"

    invoke-direct {v0, v1}, Lx1/d0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ACCESS_FLAGS_STRING:Lx1/d0;

    new-instance v0, Lx1/d0;

    const-string v1, "name"

    invoke-direct {v0, v1}, Lx1/d0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->NAME_STRING:Lx1/d0;

    new-instance v0, Lx1/d0;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lx1/d0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lx1/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAnnotationDefault(Lv1/a;)Lv1/a;
    .locals 4

    new-instance v0, Lv1/a;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ANNOTATION_DEFAULT_TYPE:Lx1/e0;

    sget-object v2, Lv1/b;->k:Lv1/b;

    invoke-direct {v0, v1, v2}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lx1/d0;

    new-instance v3, Lx1/c;

    invoke-direct {v3, p0}, Lx1/c;-><init>(Lv1/a;)V

    invoke-direct {v1, v2, v3}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, v1}, Lv1/a;->D(Lv1/e;)V

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method private static makeCstArray(Ly1/e;)Lx1/d;
    .locals 4

    invoke-interface {p0}, Ly1/e;->size()I

    move-result v0

    new-instance v1, Lx1/d$a;

    invoke-direct {v1, v0}, Lx1/d$a;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v3

    invoke-static {v3}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx1/d$a;->z(ILx1/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    new-instance p0, Lx1/d;

    invoke-direct {p0, v1}, Lx1/d;-><init>(Lx1/d$a;)V

    return-object p0
.end method

.method public static makeEnclosingClass(Lx1/e0;)Lv1/a;
    .locals 3

    new-instance v0, Lv1/a;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_CLASS_TYPE:Lx1/e0;

    sget-object v2, Lv1/b;->k:Lv1/b;

    invoke-direct {v0, v1, v2}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lx1/d0;

    invoke-direct {v1, v2, p0}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, v1}, Lv1/a;->D(Lv1/e;)V

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public static makeEnclosingMethod(Lx1/z;)Lv1/a;
    .locals 3

    new-instance v0, Lv1/a;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_METHOD_TYPE:Lx1/e0;

    sget-object v2, Lv1/b;->k:Lv1/b;

    invoke-direct {v0, v1, v2}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lx1/d0;

    invoke-direct {v1, v2, p0}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, v1}, Lv1/a;->D(Lv1/e;)V

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public static makeInnerClass(Lx1/d0;I)Lv1/a;
    .locals 3

    new-instance v0, Lv1/a;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->INNER_CLASS_TYPE:Lx1/e0;

    sget-object v2, Lv1/b;->k:Lv1/b;

    invoke-direct {v0, v1, v2}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lx1/s;->a:Lx1/s;

    :goto_0
    new-instance v1, Lv1/e;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->NAME_STRING:Lx1/d0;

    invoke-direct {v1, v2, p0}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, v1}, Lv1/a;->D(Lv1/e;)V

    new-instance p0, Lv1/e;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ACCESS_FLAGS_STRING:Lx1/d0;

    invoke-static {p1}, Lx1/p;->C(I)Lx1/p;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, p0}, Lv1/a;->D(Lv1/e;)V

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public static makeMemberClasses(Ly1/e;)Lv1/a;
    .locals 3

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeCstArray(Ly1/e;)Lx1/d;

    move-result-object p0

    new-instance v0, Lv1/a;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->MEMBER_CLASSES_TYPE:Lx1/e0;

    sget-object v2, Lv1/b;->k:Lv1/b;

    invoke-direct {v0, v1, v2}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lx1/d0;

    invoke-direct {v1, v2, p0}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, v1}, Lv1/a;->D(Lv1/e;)V

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public static makeSignature(Lx1/d0;)Lv1/a;
    .locals 8

    new-instance v0, Lv1/a;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->SIGNATURE_TYPE:Lx1/e0;

    sget-object v2, Lv1/b;->k:Lv1/b;

    invoke-direct {v0, v1, v2}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    invoke-virtual {p0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_2

    :goto_1
    if-ge v6, v1, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3b

    if-ne v5, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    const/16 v7, 0x3c

    if-ne v5, v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v6, v1, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-instance v1, Lx1/d$a;

    invoke-direct {v1, p0}, Lx1/d$a;-><init>(I)V

    :goto_4
    if-ge v3, p0, :cond_6

    new-instance v4, Lx1/d0;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lx1/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lx1/d$a;->z(ILx1/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    new-instance p0, Lv1/e;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lx1/d0;

    new-instance v3, Lx1/d;

    invoke-direct {v3, v1}, Lx1/d;-><init>(Lx1/d$a;)V

    invoke-direct {p0, v2, v3}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, p0}, Lv1/a;->D(Lv1/e;)V

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public static makeSourceDebugExtension(Lx1/d0;)Lv1/a;
    .locals 3

    new-instance v0, Lv1/a;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->SOURCE_DEBUG_EXTENSION_TYPE:Lx1/e0;

    sget-object v2, Lv1/b;->k:Lv1/b;

    invoke-direct {v0, v1, v2}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lx1/d0;

    invoke-direct {v1, v2, p0}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, v1}, Lv1/a;->D(Lv1/e;)V

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public static makeThrows(Ly1/e;)Lv1/a;
    .locals 3

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeCstArray(Ly1/e;)Lx1/d;

    move-result-object p0

    new-instance v0, Lv1/a;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->THROWS_TYPE:Lx1/e0;

    sget-object v2, Lv1/b;->k:Lv1/b;

    invoke-direct {v0, v1, v2}, Lv1/a;-><init>(Lx1/e0;Lv1/b;)V

    new-instance v1, Lv1/e;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lx1/d0;

    invoke-direct {v1, v2, p0}, Lv1/e;-><init>(Lx1/d0;Lx1/a;)V

    invoke-virtual {v0, v1}, Lv1/a;->D(Lv1/e;)V

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method
